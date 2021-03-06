package org.kuali.ole.dsng.util;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.type.TypeReference;
import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;
import org.kuali.incubator.SolrRequestReponseHandler;
import org.kuali.ole.constants.OleNGConstants;
import org.kuali.ole.docstore.common.constants.DocstoreConstants;
import org.kuali.ole.docstore.common.util.BusinessObjectServiceHelperUtil;
import org.kuali.ole.dsng.indexer.BibIndexer;
import org.kuali.ole.dsng.indexer.HoldingIndexer;
import org.kuali.ole.dsng.indexer.ItemIndexer;
import org.kuali.ole.utility.JSONHelperUtil;
import org.kuali.ole.utility.MarcRecordUtil;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by SheikS on 11/30/2015.
 */
public class OleDsHelperUtil extends BusinessObjectServiceHelperUtil implements DocstoreConstants {

    private ObjectMapper objectMapper;

    private BibIndexer bibIndexer;

    private HoldingIndexer holdingIndexer;

    private ItemIndexer itemIndexer;

    private MarcRecordUtil marcRecordUtil;

    private JSONHelperUtil jsonHelperUtil;


    private SolrRequestReponseHandler solrRequestReponseHandler;

    public SolrRequestReponseHandler getSolrRequestReponseHandler() {
        if(null == solrRequestReponseHandler) {
            solrRequestReponseHandler = new SolrRequestReponseHandler();
        }
        return solrRequestReponseHandler;
    }

    public void setSolrRequestReponseHandler(SolrRequestReponseHandler solrRequestReponseHandler) {
        this.solrRequestReponseHandler = solrRequestReponseHandler;
    }

    public String getStringValueFromJsonObject(JSONObject jsonObject, String key) {
        return getJsonHelperUtil().getStringValueFromJsonObject(jsonObject,key);
    }

    public boolean getBooleanValueFromJsonObject(JSONObject jsonObject, String key) {
        return getJsonHelperUtil().getBooleanValueFromJsonObject(jsonObject,key);
    }

    public JSONArray getJSONArrayeFromJsonObject(JSONObject jsonObject, String key) {
        return getJsonHelperUtil().getJSONArrayeFromJsonObject(jsonObject,key);
    }

    public JSONObject getJSONObjectFromJSONObject(JSONObject jsonObject, String key) {
        return getJsonHelperUtil().getJSONObjectFromJSONObject(jsonObject,key);
    }

    public JSONObject getJSONObjectFromJsonArray(JSONArray jsonArray, int index) {
        return getJsonHelperUtil().getJSONObjectFromJsonArray(jsonArray,index);
    }

    public List<String> getListFromJSONArray(String operation){
        return getJsonHelperUtil().getListFromJSONArray(operation);

    }

    private void appendLocationToStringBuilder(StringBuilder stringBuilder, String location) {
        if (stringBuilder.length() > 0) {
            stringBuilder.append(FORWARD_SLASH).append(location);
        } else {
            stringBuilder.append(location);
        }
    }


    public ObjectMapper getObjectMapper() {
        if(null == objectMapper) {
            objectMapper = new ObjectMapper();
        }
        return objectMapper;
    }

    public void setObjectMapper(ObjectMapper objectMapper) {
        this.objectMapper = objectMapper;
    }

    public HoldingIndexer getHoldingIndexer() {
        if(null == holdingIndexer) {
            holdingIndexer = new HoldingIndexer();
        }
        return holdingIndexer;
    }

    public void setHoldingIndexer(HoldingIndexer holdingIndexer) {
        this.holdingIndexer = holdingIndexer;
    }

    public BibIndexer getBibIndexer() {
        if(null == bibIndexer) {
            bibIndexer = new BibIndexer();

        }
        return bibIndexer;
    }

    public void setBibIndexer(BibIndexer bibIndexer) {
        this.bibIndexer = bibIndexer;
    }

    public ItemIndexer getItemIndexer() {
        if(null == itemIndexer) {
            itemIndexer = new ItemIndexer();
        }
        return itemIndexer;
    }

    public void setItemIndexer(ItemIndexer itemIndexer) {
        this.itemIndexer = itemIndexer;
    }



    public MarcRecordUtil getMarcRecordUtil() {
        if(null == marcRecordUtil) {
            marcRecordUtil = new MarcRecordUtil();
        }
        return marcRecordUtil;
    }

    public void setMarcRecordUtil(MarcRecordUtil marcRecordUtil) {
        this.marcRecordUtil = marcRecordUtil;
    }

    public JSONHelperUtil getJsonHelperUtil() {
        if(null == jsonHelperUtil) {
            jsonHelperUtil = new JSONHelperUtil();
        }
        return jsonHelperUtil;
    }

    public void setJsonHelperUtil(JSONHelperUtil jsonHelperUtil) {
        this.jsonHelperUtil = jsonHelperUtil;
    }
}
