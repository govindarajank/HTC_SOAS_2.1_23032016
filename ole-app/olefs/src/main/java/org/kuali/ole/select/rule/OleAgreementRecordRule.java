package org.kuali.ole.select.rule;

import org.apache.log4j.Logger;
import org.kuali.ole.OLEConstants;
import org.kuali.ole.identityAdmin.bo.OleForgotPassword;
import org.kuali.ole.select.bo.OleAgreementRecord;
import org.kuali.rice.kim.impl.identity.PersonImpl;
import org.kuali.rice.kim.impl.identity.principal.PrincipalBo;
import org.kuali.rice.krad.maintenance.MaintenanceDocument;
import org.kuali.rice.krad.rules.MaintenanceDocumentRuleBase;
import org.kuali.rice.krad.service.BusinessObjectService;
import org.kuali.rice.krad.service.KRADServiceLocator;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by rajeshgp on 3/5/16.
 */
public class OleAgreementRecordRule extends MaintenanceDocumentRuleBase {

    private static final Logger LOG = Logger.getLogger(OleAgreementRecordRule.class);
    private BusinessObjectService businessObjectService;

    private BusinessObjectService getBusinessObjectService() {
        if (null == businessObjectService) {
            businessObjectService = KRADServiceLocator.getBusinessObjectService();
        }
        return businessObjectService;
    }

    protected boolean processCustomSaveDocumentBusinessRules(MaintenanceDocument document) {

        boolean isValid=true;
        OleAgreementRecord agreementRecord=(OleAgreementRecord) document.getNewMaintainableObject().getDataObject();
        String licensor=agreementRecord.getLicensor();
        String licensee=agreementRecord.getLicensee();
        if(!licensor.isEmpty())
            isValid &=validateLicensorAndLicensee(licensor);
        if(!licensee.isEmpty())
            isValid &=validateLicensorAndLicensee(licensee);

        return isValid;

    }

    private boolean validateLicensorAndLicensee(String person){

        boolean isValidPerson=true;
        Map<String,String> personMap=new HashMap<>();
        personMap.put("principalName", person);
        List<PrincipalBo> persons=(List<PrincipalBo>)getBusinessObjectService().findMatching(PrincipalBo.class, personMap);
        if(persons.size()==0)
            isValidPerson=false;
        if(!isValidPerson)
            this.putFieldError(OLEConstants.AGREEMENT_RECORD,"error.person.not.exist");
        return isValidPerson;
    }

}
