package org.kuali.ole.select.bo;

import org.kuali.ole.identityAdmin.bo.OleForgotPassword;
import org.kuali.ole.select.document.OlePurchaseOrderDocument;
import org.kuali.rice.core.api.util.type.KualiDecimal;
import org.kuali.rice.kim.api.identity.Person;
import org.kuali.rice.kim.impl.identity.principal.PrincipalBo;
import org.kuali.rice.krad.bo.PersistableBusinessObjectBase;

import java.sql.Timestamp;

/**
 * Created by govindarajank on 12/4/16.
 */
public class OleAgreementRecord extends PersistableBusinessObjectBase{

    private String agreementId;

    private String licenseTitle;

    private String contractNumber;

    private String agreementStatusId;

    private String codingStatus;

    private String licensor;

    private String licensee;

    private Timestamp startDate;

    private Timestamp endDate;

    private int purchaseOrderId;

    private OleAgreementStatus oleAgreementStatus;

    private String eRsIdentifier;

    private String generalNotes;

    private String feeSchedule;

    private String inflationCap;

    private String paymentTerms;

    private String newTitleAccess;

    private String cancellationRights;

    private String additionalTerms;

    private String noticePeriodTermination;

    private boolean isperpectualAccess;

    private String perpectualAccessNotes;

    private String authorizedUsers;

    private boolean authorizedUsersGenNotes;

    private boolean isdepositInIR;

    private boolean isfairUse;

    private boolean isRightsGranted;

    private boolean isillPrint;

    private boolean isIllElectronic;

    private boolean isIllLoansame;

    private boolean isIllNonProfit;

    private boolean isIllSameCuntRest;

    private String illNotes;

    private boolean libResCMSys;

    private boolean libRes;

    private String CMNotes;

    private boolean scholShar;

    private boolean textMining;

    private boolean perfomanceRights;

    private boolean streamingRights;

    private String multimediaRightsNote;

    private String NotesonAPCAgreement;

    private boolean APCOffsetAgreement;

    public String getAgreementId() {
        return agreementId;
    }

    public void setAgreementId(String agreementId) {
        this.agreementId = agreementId;
    }

    public String getLicenseTitle() {
        return licenseTitle;
    }

    public void setLicenseTitle(String licenseTitle) {
        this.licenseTitle = licenseTitle;
    }

    public String getContractNumber() {
        return contractNumber;
    }

    public void setContractNumber(String contractNumber) {
        this.contractNumber = contractNumber;
    }

    public String getAgreementStatusId() {
        return agreementStatusId;
    }

    public void setAgreementStatusId(String agreementStatusId) {
        this.agreementStatusId = agreementStatusId;
    }

    public String getCodingStatus() {
        return codingStatus;
    }

    public void setCodingStatus(String codingStatus) {
        this.codingStatus = codingStatus;
    }

    public String getLicensor() {
        return licensor;
    }

    public void setLicensor(String licensor) {
        this.licensor = licensor;
    }

    public String getLicensee() {
        return licensee;
    }

    public void setLicensee(String licensee) {
        this.licensee = licensee;
    }

    public Timestamp getStartDate() {
        return startDate;
    }

    public void setStartDate(Timestamp startDate) {
        this.startDate = startDate;
    }

    public Timestamp getEndDate() {
        return endDate;
    }

    public void setEndDate(Timestamp endDate) {
        this.endDate = endDate;
    }

    public int getPurchaseOrderId() {
        return purchaseOrderId;
    }

    public void setPurchaseOrderId(int purchaseOrderId) {
        this.purchaseOrderId = purchaseOrderId;
    }

    public OleAgreementStatus getOleAgreementStatus() {
        return oleAgreementStatus;
    }

    public void setOleAgreementStatus(OleAgreementStatus oleAgreementStatus) {
        this.oleAgreementStatus = oleAgreementStatus;
    }

    public String geteRsIdentifier() {
        return eRsIdentifier;
    }

    public void seteRsIdentifier(String eRsIdentifier) {
        this.eRsIdentifier = eRsIdentifier;
    }

    public String getGeneralNotes() {
        return generalNotes;
    }

    public void setGeneralNotes(String generalNotes) {
        this.generalNotes = generalNotes;
    }

    public String getFeeSchedule() {
        return feeSchedule;
    }

    public void setFeeSchedule(String feeSchedule) {
        this.feeSchedule = feeSchedule;
    }

    public String getInflationCap() {
        return inflationCap;
    }

    public void setInflationCap(String inflationCap) {
        this.inflationCap = inflationCap;
    }

    public String getPaymentTerms() {
        return paymentTerms;
    }

    public void setPaymentTerms(String paymentTerms) {
        this.paymentTerms = paymentTerms;
    }

    public String getNewTitleAccess() {
        return newTitleAccess;
    }

    public void setNewTitleAccess(String newTitleAccess) {
        this.newTitleAccess = newTitleAccess;
    }

    public String getCancellationRights() {
        return cancellationRights;
    }

    public void setCancellationRights(String cancellationRights) {
        this.cancellationRights = cancellationRights;
    }

    public String getAdditionalTerms() {
        return additionalTerms;
    }

    public void setAdditionalTerms(String additionalTerms) {
        this.additionalTerms = additionalTerms;
    }

    public String getNoticePeriodTermination() {
        return noticePeriodTermination;
    }

    public void setNoticePeriodTermination(String noticePeriodTermination) {
        this.noticePeriodTermination = noticePeriodTermination;
    }

    public boolean isperpectualAccess() {
        return isperpectualAccess;
    }

    public void setIsperpectualAccess(boolean isperpectualAccess) {
        this.isperpectualAccess = isperpectualAccess;
    }

    public String getPerpectualAccessNotes() {
        return perpectualAccessNotes;
    }

    public void setPerpectualAccessNotes(String perpectualAccessNotes) {
        this.perpectualAccessNotes = perpectualAccessNotes;
    }

    public String getAuthorizedUsers() {
        return authorizedUsers;
    }

    public void setAuthorizedUsers(String authorizedUsers) {
        this.authorizedUsers = authorizedUsers;
    }

    public boolean isAuthorizedUsersGenNotes() {
        return authorizedUsersGenNotes;
    }

    public void setAuthorizedUsersGenNotes(boolean authorizedUsersGenNotes) {
        this.authorizedUsersGenNotes = authorizedUsersGenNotes;
    }

    public boolean isdepositInIR() {
        return isdepositInIR;
    }

    public void setIsdepositInIR(boolean isdepositInIR) {
        this.isdepositInIR = isdepositInIR;
    }

    public boolean isfairUse() {
        return isfairUse;
    }

    public void setIsfairUse(boolean isfairUse) {
        this.isfairUse = isfairUse;
    }

    public boolean isRightsGranted() {
        return isRightsGranted;
    }

    public void setIsRightsGranted(boolean isRightsGranted) {
        this.isRightsGranted = isRightsGranted;
    }

    public boolean isillPrint() {
        return isillPrint;
    }

    public void setIsillPrint(boolean isillPrint) {
        this.isillPrint = isillPrint;
    }

    public boolean isIllElectronic() {
        return isIllElectronic;
    }

    public void setIsIllElectronic(boolean isIllElectronic) {
        this.isIllElectronic = isIllElectronic;
    }

    public boolean isIllLoansame() {
        return isIllLoansame;
    }

    public void setIsIllLoansame(boolean isIllLoansame) {
        this.isIllLoansame = isIllLoansame;
    }

    public boolean isIllNonProfit() {
        return isIllNonProfit;
    }

    public void setIsIllNonProfit(boolean isIllNonProfit) {
        this.isIllNonProfit = isIllNonProfit;
    }

    public boolean isIllSameCuntRest() {
        return isIllSameCuntRest;
    }

    public void setIsIllSameCuntRest(boolean isIllSameCuntRest) {
        this.isIllSameCuntRest = isIllSameCuntRest;
    }

    public String getIllNotes() {
        return illNotes;
    }

    public void setIllNotes(String illNotes) {
        this.illNotes = illNotes;
    }

    public boolean isLibResCMSys() {
        return libResCMSys;
    }

    public void setLibResCMSys(boolean libResCMSys) {
        this.libResCMSys = libResCMSys;
    }

    public boolean isLibRes() {
        return libRes;
    }

    public void setLibRes(boolean libRes) {
        this.libRes = libRes;
    }

    public String getCMNotes() {
        return CMNotes;
    }

    public void setCMNotes(String CMNotes) {
        this.CMNotes = CMNotes;
    }

    public boolean isScholShar() {
        return scholShar;
    }

    public void setScholShar(boolean scholShar) {
        this.scholShar = scholShar;
    }

    public boolean isTextMining() {
        return textMining;
    }

    public void setTextMining(boolean textMining) {
        this.textMining = textMining;
    }

    public boolean isPerfomanceRights() {
        return perfomanceRights;
    }

    public void setPerfomanceRights(boolean perfomanceRights) {
        this.perfomanceRights = perfomanceRights;
    }

    public boolean isStreamingRights() {
        return streamingRights;
    }

    public void setStreamingRights(boolean streamingRights) {
        this.streamingRights = streamingRights;
    }

    public String getMultimediaRightsNote() {
        return multimediaRightsNote;
    }

    public void setMultimediaRightsNote(String multimediaRightsNote) {
        this.multimediaRightsNote = multimediaRightsNote;
    }

    public String getNotesonAPCAgreement() {
        return NotesonAPCAgreement;
    }

    public void setNotesonAPCAgreement(String notesonAPCAgreement) {
        NotesonAPCAgreement = notesonAPCAgreement;
    }

    public boolean isAPCOffsetAgreement() {
        return APCOffsetAgreement;
    }

    public void setAPCOffsetAgreement(boolean APCOffsetAgreement) {
        this.APCOffsetAgreement = APCOffsetAgreement;
    }
}
