package org.kuali.ole.dsng.rest.processor;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.collections.map.HashedMap;
import org.apache.solr.common.SolrInputDocument;
import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;
import org.kuali.ole.docstore.common.constants.DocstoreConstants;
import org.kuali.ole.docstore.engine.service.storage.rdbms.pojo.BibRecord;
import org.kuali.ole.docstore.engine.service.storage.rdbms.pojo.HoldingsRecord;
import org.kuali.ole.docstore.engine.service.storage.rdbms.pojo.ItemRecord;
import org.kuali.ole.dsng.dao.BibDAO;
import org.kuali.ole.dsng.dao.HoldingDAO;
import org.kuali.ole.dsng.dao.ItemDAO;
import org.kuali.ole.dsng.rest.Exchange;
import org.kuali.ole.dsng.rest.handler.Handler;
import org.kuali.ole.dsng.rest.handler.bib.CreateBibHandler;
import org.kuali.ole.dsng.rest.handler.bib.UpdateBibHandler;
import org.kuali.ole.dsng.rest.handler.holdings.CreateHoldingsHandler;
import org.kuali.ole.dsng.rest.handler.holdings.UpdateHoldingsHandler;
import org.kuali.ole.dsng.rest.handler.items.CreateItemHandler;
import org.kuali.ole.dsng.rest.handler.items.UpdateItemRecord;
import org.kuali.ole.dsng.util.OleDsHelperUtil;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * Created by SheikS on 12/8/2015.
 */
public class OleDsNgOverlayProcessor extends OleDsHelperUtil implements DocstoreConstants {
    @Autowired
    BibDAO bibDAO;

    @Autowired
    HoldingDAO holdingDAO;

    @Autowired
    ItemDAO itemDAO;

    private List<Handler> bibHandlers;
    private List<Handler> holdingHandlers;
    private List<Handler> itemHandlers;

    public List<Handler> getBibHandlers() {
        if (null == bibHandlers) {
            bibHandlers = new ArrayList<Handler>();
            bibHandlers.add(new CreateBibHandler());
            bibHandlers.add(new UpdateBibHandler());
        }
        return bibHandlers;
    }

    public void setBibHandlers(List<Handler> bibHandlers) {
        this.bibHandlers = bibHandlers;
    }

    public List<Handler> getHoldingHandlers() {
        if (null == holdingHandlers) {
            holdingHandlers = new ArrayList<Handler>();
            holdingHandlers.add(new CreateHoldingsHandler());
            holdingHandlers.add(new UpdateHoldingsHandler());
        }
        return holdingHandlers;
    }

    public void setHoldingHandlers(List<Handler> holdingHandlers) {
        this.holdingHandlers = holdingHandlers;
    }

    public List<Handler> getItemHandlers() {
        if(null == itemHandlers) {
            itemHandlers = new ArrayList<Handler>();
            itemHandlers.add(new CreateItemHandler());
            itemHandlers.add(new UpdateItemRecord());
        }
        return itemHandlers;
    }

    public void setItemHandlers(List<Handler> itemHandlers) {
        this.itemHandlers = itemHandlers;
    }

    public String processBibAndHoldingsAndItems(String jsonBody) { JSONArray responseJsonArray = null;
        Map<String, SolrInputDocument> solrInputDocumentMap = new HashedMap();
        try {
            JSONArray requestJsonArray = new JSONArray(jsonBody);
            responseJsonArray = new JSONArray();
            Exchange exchange = new Exchange();
            for (int index = 0; index < requestJsonArray.length(); index++) {
                JSONObject requestJsonObject = requestJsonArray.getJSONObject(index);

                String overlayOps = requestJsonObject.getString("overlayOps");

                processBib(requestJsonObject, exchange, overlayOps);

                BibRecord bibRecord = (BibRecord) exchange.get("bib");

                if (null != bibRecord) {
                    solrInputDocumentMap = getBibIndexer().getInputDocumentForBib(bibRecord, solrInputDocumentMap);
                }

                processHoldings(requestJsonObject, exchange, overlayOps);
                processItem(requestJsonObject,exchange, overlayOps);

                solrInputDocumentMap = prepareHoldingsForSolr(solrInputDocumentMap, exchange);
                solrInputDocumentMap = prepareItemsForSolr(solrInputDocumentMap, exchange);

                exchange.remove("holdingRecordsToCreate");
                exchange.remove("holdingRecordsToUpdate");
                exchange.remove("itemRecordsToCreate");
                exchange.remove("itemRecordsToUpdate");
            }


            List<SolrInputDocument> solrInputDocuments = getBibIndexer().getSolrInputDocumentListFromMap(solrInputDocumentMap);
            getBibIndexer().commitDocumentToSolr(solrInputDocuments);

        } catch (JSONException e) {
            e.printStackTrace();
        }
        return responseJsonArray.toString();
    }

    private Map<String, SolrInputDocument> prepareHoldingsForSolr(Map<String, SolrInputDocument> solrInputDocumentMap, Exchange exchange) {
        List<HoldingsRecord> holdingsRecordsToUpdate = (List<HoldingsRecord>) exchange.get("holdingRecordsToUpdate");
        List<HoldingsRecord> holdingsRecordsToCreate = (List<HoldingsRecord>) exchange.get("holdingRecordsToCreate");

        List<HoldingsRecord> finalHoldingsForSolr = new ArrayList<HoldingsRecord>();
        if(CollectionUtils.isNotEmpty(holdingsRecordsToUpdate)){
            finalHoldingsForSolr.addAll(holdingsRecordsToUpdate);
        }
        if(CollectionUtils.isNotEmpty(holdingsRecordsToCreate)){
            finalHoldingsForSolr.addAll(holdingsRecordsToCreate);
        }

        solrInputDocumentMap = prepareSolrInputDocumentsForHoldings(solrInputDocumentMap, finalHoldingsForSolr);
        return solrInputDocumentMap;
    }

    private Map<String, SolrInputDocument> prepareItemsForSolr(Map<String, SolrInputDocument> solrInputDocumentMap, Exchange exchange) {
        List<ItemRecord> itemRecordsToUpdate = (List<ItemRecord>) exchange.get("itemRecordsToUpdate");
        List<ItemRecord> itemRecordsToCreate = (List<ItemRecord>) exchange.get("itemRecordsToCreate");

        List<ItemRecord> finalItemsForSolr = new ArrayList<ItemRecord>();
        if(CollectionUtils.isNotEmpty(itemRecordsToUpdate)){
            finalItemsForSolr.addAll(itemRecordsToUpdate);
        }
        if(CollectionUtils.isNotEmpty(itemRecordsToCreate)){
            finalItemsForSolr.addAll(itemRecordsToCreate);
        }

        solrInputDocumentMap = prepareSolrInputDocumentsForItems(solrInputDocumentMap, finalItemsForSolr);
        return solrInputDocumentMap;
    }

    private Map<String, SolrInputDocument> prepareSolrInputDocumentsForHoldings(Map<String, SolrInputDocument> solrInputDocumentMap, List<HoldingsRecord> holdingsRecordsToUpdate) {
        if (CollectionUtils.isNotEmpty(holdingsRecordsToUpdate)) {
            for (Iterator<HoldingsRecord> iterator = holdingsRecordsToUpdate.iterator(); iterator.hasNext(); ) {
                HoldingsRecord holdingsRecord = iterator.next();
                solrInputDocumentMap = getHoldingIndexer().getInputDocumentForHoldings(holdingsRecord, solrInputDocumentMap);
            }
        }
        return solrInputDocumentMap;
    }

    private Map<String, SolrInputDocument> prepareSolrInputDocumentsForItems(Map<String, SolrInputDocument> solrInputDocumentMap, List<ItemRecord> itemRecordsToUpdate) {
        if (CollectionUtils.isNotEmpty(itemRecordsToUpdate)) {
            for (Iterator<ItemRecord> iterator = itemRecordsToUpdate.iterator(); iterator.hasNext(); ) {
                ItemRecord itemRecord = iterator.next();
                solrInputDocumentMap = getItemIndexer().getInputDocumentForItem(itemRecord, solrInputDocumentMap);
            }
        }
        return solrInputDocumentMap;
    }

    private void processHoldings(JSONObject requestJsonObject, Exchange exchange, String overlayOps) {
        for (Iterator<Handler> iterator = getHoldingHandlers().iterator(); iterator.hasNext(); ) {
            Handler holdingHandler = iterator.next();
            if (holdingHandler.isInterested(overlayOps)) {
                holdingHandler.setHoldingDAO(holdingDAO);
                holdingHandler.setItemDAO(itemDAO);
                holdingHandler.setBusinessObjectService(getBusinessObjectService());
                holdingHandler.process(requestJsonObject, exchange);
            }
        }
    }

    private void processBib(JSONObject requestJsonObject, Exchange exchange, String overlayOps) {
        for (Iterator<Handler> iterator = getBibHandlers().iterator(); iterator.hasNext(); ) {
            Handler handler = iterator.next();
            if (handler.isInterested(overlayOps)) {
                handler.setBibDAO(bibDAO);
                handler.setHoldingDAO(holdingDAO);
                handler.setItemDAO(itemDAO);
                handler.setBusinessObjectService(getBusinessObjectService());
                handler.process(requestJsonObject, exchange);
            }
        }
    }

    private void processItem(JSONObject requestJsonObject, Exchange exchange, String overlayOps) {
        for (Iterator<Handler> handlerIterator = getItemHandlers().iterator(); handlerIterator.hasNext(); ) {
            Handler handler = handlerIterator.next();
            if (handler.isInterested(overlayOps)) {
                handler.setItemDAO(itemDAO);
                handler.setBusinessObjectService(getBusinessObjectService());
                handler.process(requestJsonObject, exchange);
            }
        }
    }

    public String getStringValueFromJsonObject(JSONObject jsonObject, String key) {
        String returnValue = null;
        try {
            returnValue = jsonObject.getString(key);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return returnValue;
    }
}
