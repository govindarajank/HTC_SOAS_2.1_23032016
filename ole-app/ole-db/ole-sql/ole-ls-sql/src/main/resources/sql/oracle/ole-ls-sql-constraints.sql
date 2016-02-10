

ALTER TABLE OLE_E_RES_ACC_ACT_WRKFLW_T
    ADD CONSTRAINT OLE_ACC_ACT_CONFIG_FK FOREIGN KEY (ACC_ACT_ID)
    REFERENCES OLE_E_RES_ACC_ACT_CONFIG_T (ACC_ACT_ID)
/



ALTER TABLE OLE_AGR_DOC_T
    ADD CONSTRAINT LIC_REQS_FK FOREIGN KEY (LIC_REQS_ID)
    REFERENCES OLE_LIC_REQS_T (LIC_REQS_ID)
/


































ALTER TABLE OLE_CIRC_DSK_DTL_T
    ADD CONSTRAINT CRCL_ID_constr FOREIGN KEY (CRCL_DSK_ID)
    REFERENCES ole_crcl_dsk_t (OLE_CRCL_DSK_ID)
/



ALTER TABLE OLE_CONT_TYPS_T
    ADD CONSTRAINT OLE_CONT_TYPS_FK FOREIGN KEY (CONT_TYP_ID)
    REFERENCES OLE_CONT_TYP_T (CONT_TYP_ID)
/



ALTER TABLE OLE_CRCL_DSK_LOCN_T
    ADD CONSTRAINT OLE_CRCL_LOCN_FK FOREIGN KEY (OLE_CRCL_DSK_ID)
    REFERENCES OLE_CRCL_DSK_T (OLE_CRCL_DSK_ID)
/

ALTER TABLE OLE_CRCL_DSK_LOCN_T
    ADD CONSTRAINT OLE_CRCL_DSK_LOCN_constr FOREIGN KEY (OLE_CRCL_DSK_LOCN)
    REFERENCES OLE_LOCN_T (LOCN_ID)
/



ALTER TABLE OLE_DATAFIELD_T
    ADD CONSTRAINT OVERLAY_OPTION_FK FOREIGN KEY (OVERLAY_OPTION_ID)
    REFERENCES OLE_OVERLAY_OPTION_T (ID)
/




ALTER TABLE OLE_DISC_EXP_MAP_T
    ADD CONSTRAINT OLE_DISC_EXP_MAP_CNSTR FOREIGN KEY (EXP_ID)
    REFERENCES OLE_DISC_EXP_PROFILE_T (EXP_ID)
/




ALTER TABLE OLE_DLVR_ADD_T
    ADD CONSTRAINT ole_dlvr_add_fk2 FOREIGN KEY (OLE_ADDR_SRC)
    REFERENCES OLE_DLVR_ADDR_SRC_T (OLE_DLVR_ADDR_SRC_ID)
/


ALTER TABLE OLE_DLVR_PHONE_T
    ADD CONSTRAINT ole_dlvr_phone_fk1 FOREIGN KEY (OLE_PHONE_SRC)
    REFERENCES OLE_DLVR_ADDR_SRC_T (OLE_DLVR_ADDR_SRC_ID)
/


ALTER TABLE OLE_DLVR_EMAIL_T
    ADD CONSTRAINT ole_dlvr_email_fk1 FOREIGN KEY (OLE_EMAIL_SRC)
    REFERENCES OLE_DLVR_ADDR_SRC_T (OLE_DLVR_ADDR_SRC_ID)
/





ALTER TABLE OLE_DLVR_CIRC_RECORD
    ADD CONSTRAINT fk_OLE_DLVR_CIRC_RECORD_FK2 FOREIGN KEY (PROXY_PTRN_ID)
    REFERENCES ole_ptrn_t (OLE_PTRN_ID)
/

ALTER TABLE OLE_DLVR_CIRC_RECORD
    ADD CONSTRAINT fk_OLE_DLVR_CIRC_RECORD_FK1 FOREIGN KEY (OLE_PTRN_ID)
    REFERENCES ole_ptrn_t (OLE_PTRN_ID)
/






ALTER TABLE OLE_DLVR_LOAN_T
    ADD CONSTRAINT new_fk_constraint2 FOREIGN KEY (OLE_PTRN_ID)
    REFERENCES OLE_PTRN_T (OLE_PTRN_ID)
/



ALTER TABLE OLE_DLVR_PTRN_BILL_FEE_TYP_T
    ADD CONSTRAINT FEE_TYP_BILL_ID FOREIGN KEY (PTRN_BILL_ID)
    REFERENCES OLE_DLVR_PTRN_BILL_T (PTRN_BILL_ID)
/


ALTER TABLE OLE_DLVR_PTRN_BILL_PAY_T
    ADD CONSTRAINT BILL_PAY_ID FOREIGN KEY (ITM_LINE_ID)
    REFERENCES ole_dlvr_ptrn_bill_fee_typ_t (ID)
/





ALTER TABLE OLE_DLVR_RECENTLY_RETURNED_T
    ADD CONSTRAINT fk1_crcl_dsk FOREIGN KEY (CIRC_DESK_ID)
    REFERENCES OLE_CRCL_DSK_T (OLE_CRCL_DSK_ID)
/



ALTER TABLE OLE_DLVR_RQST_T
    ADD CONSTRAINT flk5 FOREIGN KEY (PROXY_PTRN_ID)
    REFERENCES ole_ptrn_t (OLE_PTRN_ID)
/

ALTER TABLE OLE_DLVR_RQST_T
    ADD CONSTRAINT flk4 FOREIGN KEY (OLE_PTRN_ID)
    REFERENCES ole_ptrn_t (OLE_PTRN_ID)
/

ALTER TABLE OLE_DLVR_RQST_T
    ADD CONSTRAINT flk3 FOREIGN KEY (CIRC_LOC_ID)
    REFERENCES OLE_CRCL_DSK_T (OLE_CRCL_DSK_ID)
/

ALTER TABLE OLE_DLVR_RQST_T
    ADD CONSTRAINT flk2 FOREIGN KEY (PCKUP_LOC_ID)
    REFERENCES OLE_CRCL_DSK_T (OLE_CRCL_DSK_ID)
/

ALTER TABLE OLE_DLVR_RQST_T
    ADD CONSTRAINT flk1 FOREIGN KEY (OLE_RQST_TYP_ID)
    REFERENCES ole_dlvr_rqst_typ_t (OLE_RQST_TYP_ID)
/





ALTER TABLE OLE_DLVR_TEMP_CIRC_RECORD
    ADD CONSTRAINT fk1_ole_ptrn_t FOREIGN KEY (OLE_PTRN_ID)
    REFERENCES ole_ptrn_t (OLE_PTRN_ID)
/


ALTER TABLE OLE_ERES_NTE_T
    ADD CONSTRAINT OLE_ERES_NTE_FK FOREIGN KEY (E_RES_REC_ID)
    REFERENCES OLE_E_RES_REC_T (E_RES_REC_ID)
/


ALTER TABLE OLE_VRNT_TTL_T
    ADD CONSTRAINT OLE_ERES_VRNT_TTL_FK FOREIGN KEY (E_RES_REC_ID)
    REFERENCES OLE_E_RES_REC_T (E_RES_REC_ID)
/


ALTER TABLE OLE_ERES_REQ_SEL_COMM_T
    ADD CONSTRAINT OLE_ERES_REQ_SEL_COMM_FK FOREIGN KEY (E_RES_REC_ID)
    REFERENCES OLE_E_RES_REC_T (E_RES_REC_ID)
/


ALTER TABLE OLE_ERES_REQ_T
    ADD CONSTRAINT OLE_ERES_REQ_FK FOREIGN KEY (E_RES_REC_ID)
    REFERENCES OLE_E_RES_REC_T (E_RES_REC_ID)
/


ALTER TABLE OLE_ERES_SEL_T
    ADD CONSTRAINT OLE_ERES_SEL_FK FOREIGN KEY (E_RES_REC_ID)
    REFERENCES OLE_E_RES_REC_T (E_RES_REC_ID)
/


ALTER TABLE OLE_E_RES_REC_EVNT_LOG_T
    ADD CONSTRAINT OLE_E_RES_REC_EVNT_LOG_FK FOREIGN KEY (E_RES_REC_ID)
    REFERENCES OLE_E_RES_REC_T (E_RES_REC_ID)
/


ALTER TABLE OLE_E_RES_REC_INS_T
    ADD CONSTRAINT OLE_E_RES_REC_INS_FK FOREIGN KEY (E_RES_REC_ID)
    REFERENCES OLE_E_RES_REC_T (E_RES_REC_ID)
/



ALTER TABLE OLE_E_RES_REC_LIC_T
    ADD CONSTRAINT OLE_E_RES_REC_LIC_FK3 FOREIGN KEY (LIC_RQST_ID)
    REFERENCES OLE_LIC_REQS_T (LIC_REQS_ID)
/

ALTER TABLE OLE_E_RES_REC_LIC_T
    ADD CONSTRAINT OLE_E_RES_REC_LIC_FK1 FOREIGN KEY (E_RES_REC_ID)
    REFERENCES OLE_E_RES_REC_T (E_RES_REC_ID)
/



ALTER TABLE OLE_E_RES_REC_PO_T
    ADD CONSTRAINT OLE_E_RES_REC_PO_FK FOREIGN KEY (E_RES_REC_ID)
    REFERENCES OLE_E_RES_REC_T (E_RES_REC_ID)
/


ALTER TABLE OLE_E_RES_REC_T
    ADD CONSTRAINT OLE_E_RES_REC_FK6 FOREIGN KEY (PCKG_SCP_ID)
    REFERENCES OLE_PCKG_SCP_T (PCKG_SCP_ID)
/

ALTER TABLE OLE_E_RES_REC_T
    ADD CONSTRAINT OLE_E_RES_REC_FK7 FOREIGN KEY (REQ_PRTY_ID)
    REFERENCES OLE_REQ_PRTY_T (REQ_PRTY_ID)
/

ALTER TABLE OLE_E_RES_REC_T
    ADD CONSTRAINT OLE_E_RES_REC_FK8 FOREIGN KEY (PCKG_TYP_ID)
    REFERENCES OLE_PCKG_TYP_T (PCKG_TYP_ID)
/

ALTER TABLE OLE_E_RES_REC_T
    ADD CONSTRAINT OLE_E_RES_REC_FK9 FOREIGN KEY (STAT_ID)
    REFERENCES OLE_E_RES_STAT_T (E_RES_STAT_ID)
/

ALTER TABLE OLE_E_RES_REC_T
    ADD CONSTRAINT OLE_E_RES_REC_FK10 FOREIGN KEY (PYMT_TYP_ID)
    REFERENCES OLE_PYMT_TYP_T (PYMT_TYP_ID)
/

ALTER TABLE OLE_E_RES_REC_T
    ADD CONSTRAINT OLE_E_RES_REC_FK11 FOREIGN KEY (STAT_SRCH_CD_ID)
    REFERENCES OLE_CAT_STAT_SRCH_CD_T (STAT_SRCH_CD_ID)
/


ALTER TABLE OLE_E_RES_ACCESS_T
    ADD CONSTRAINT OLE_E_RES_ACCESS_FK1 FOREIGN KEY (ACC_TYP_ID)
    REFERENCES OLE_ACC_TYP_T (ACC_TYP_ID)
/

ALTER TABLE OLE_E_RES_ACCESS_T
    ADD CONSTRAINT OLE_E_RES_ACCESS_FK2 FOREIGN KEY (AUTHCAT_TYP_ID)
    REFERENCES OLE_AUTHCAT_TYP_T (AUTHCAT_TYP_ID)
/



ALTER TABLE OLE_FRMT_TYPS_T
    ADD CONSTRAINT OLE_FRMT_TYPS_FK FOREIGN KEY (OLE_FRMT_ID)
    REFERENCES OLE_PUR_FRMT_T (OLE_FRMT_ID)
/







ALTER TABLE OLE_LIC_EVNT_LOG_T
    ADD CONSTRAINT LIC_EVNT_REQS_FK FOREIGN KEY (LIC_REQS_ID)
    REFERENCES OLE_LIC_REQS_T (LIC_REQS_ID)
/



ALTER TABLE OLE_LIC_REQS_T
    ADD CONSTRAINT LIC_STAT_FK FOREIGN KEY (LIC_STAT_CD)
    REFERENCES OLE_LIC_STAT_T (LIC_STAT_CD)
/

ALTER TABLE OLE_LIC_REQS_T
    ADD CONSTRAINT AGR_MTH_FK FOREIGN KEY (AGR_MTH_ID)
    REFERENCES OLE_AGR_MTH_T (AGR_MTH_ID)
/

ALTER TABLE OLE_LIC_REQS_T
    ADD CONSTRAINT LIC_WRK_FLW_TYP_FK FOREIGN KEY (LIC_WRK_FLW_TYP_CD)
    REFERENCES OLE_LIC_WRK_FLW_TYP_T (LIC_WRK_FLW_TYP_CD)
/

ALTER TABLE OLE_LIC_REQS_T
    ADD CONSTRAINT LIC_DOC_LOCN_FK FOREIGN KEY (LIC_DOC_LOCN_ID)
    REFERENCES OLE_LIC_DOC_LOCN_T (LIC_DOC_LOCN_ID)
/

ALTER TABLE OLE_LIC_REQS_T
    ADD CONSTRAINT LIC_REQS_TYP_FK FOREIGN KEY (LIC_REQS_TYP_ID)
    REFERENCES OLE_LIC_REQS_TYP_T (LIC_REQS_TYP_ID)
/



ALTER TABLE OLE_LIC_RQST_ITM_TITL_T
    ADD CONSTRAINT LIC_REQS_ITM_FK FOREIGN KEY (OLE_LIC_RQST_ID)
    REFERENCES OLE_LIC_REQS_T (LIC_REQS_ID)
/




ALTER TABLE OLE_LOCN_LEVEL_T
    ADD CONSTRAINT OLE_LOCN_LEVEL_FK FOREIGN KEY (PARENT_LEVEL)
    REFERENCES OLE_LOCN_LEVEL_T (LEVEL_ID)
/



ALTER TABLE OLE_LOCN_T
    ADD CONSTRAINT OLE_LOCN_FK2 FOREIGN KEY (LEVEL_ID)
    REFERENCES OLE_LOCN_LEVEL_T (LEVEL_ID)
/

ALTER TABLE OLE_LOCN_T
    ADD CONSTRAINT OLE_LOCN_FK1 FOREIGN KEY (PARENT_LOCN_ID)
    REFERENCES OLE_LOCN_T (LOCN_ID)
/


ALTER TABLE OLE_MTRL_TYPS_T
    ADD CONSTRAINT OLE_MTRL_TYPS_FK FOREIGN KEY (MTRL_TYP_ID)
    REFERENCES OLE_MTRL_TYP_T (MTRL_TYP_ID)
/





ALTER TABLE OLE_OVERLAY_LOOKUP_T
    ADD CONSTRAINT OVERLAY_LOOKUP_ACTION_FK FOREIGN KEY (OVERLAY_LOOKUP_ACTION_ID)
    REFERENCES OLE_OVERLAY_LOOKUP_ACTION_T (ID)
/


ALTER TABLE OLE_OVERLAY_MAP_FLD_T
    ADD CONSTRAINT OLE_OVERLAY_MAP_FLD_CNSTR FOREIGN KEY (OLE_OVR_ACT_ID)
    REFERENCES OLE_OVERLAY_ACTN_T (OLE_OVR_ACT_ID)
/



ALTER TABLE OLE_OVERLAY_OUT_FLD_T
    ADD CONSTRAINT OLE_OVERLAY_OUT_FLD_CNSTR FOREIGN KEY (OLE_OVR_ACT_ID)
    REFERENCES OLE_OVERLAY_ACTN_T (OLE_OVR_ACT_ID)
/






ALTER TABLE OLE_PROXY_PTRN_T
    ADD CONSTRAINT OLE_PROXY_PTRN_FK1 FOREIGN KEY (OLE_PTRN_ID)
    REFERENCES OLE_PTRN_T (OLE_PTRN_ID)
/


ALTER TABLE OLE_PTRN_LOCAL_ID_T
    ADD CONSTRAINT OLE_PTRN_LOCAL_FK FOREIGN KEY (OLE_PTRN_ID)
    REFERENCES OLE_PTRN_T (OLE_PTRN_ID)
/


ALTER TABLE OLE_PTRN_LOST_BAR_T
    ADD CONSTRAINT OLE_PTRN_LOST_BAR_FK1 FOREIGN KEY (OLE_PTRN_ID)
    REFERENCES OLE_PTRN_T (OLE_PTRN_ID)
/


ALTER TABLE OLE_PTRN_NTE_T
    ADD CONSTRAINT OLE_PTRN_NTE_FK1 FOREIGN KEY (OLE_PTRN_ID)
    REFERENCES OLE_PTRN_T (OLE_PTRN_ID)
/

ALTER TABLE OLE_PTRN_NTE_T
    ADD CONSTRAINT OLE_PTRN_NTE_FK2 FOREIGN KEY (OLE_PTRN_NTE_TYP_ID)
    REFERENCES OLE_PTRN_NTE_TYP_T (OLE_PTRN_NTE_TYP_ID)
/





ALTER TABLE OLE_PTRN_T
    ADD CONSTRAINT OLE_DLVR_BORR_FK2 FOREIGN KEY (BORR_TYP)
    REFERENCES OLE_DLVR_BORR_TYP_T (DLVR_BORR_TYP_ID)
/

ALTER TABLE OLE_PTRN_T
    ADD CONSTRAINT OLE_DLVR_SRC_FK3 FOREIGN KEY (OLE_SRC)
    REFERENCES OLE_DLVR_SRC_T (OLE_DLVR_SRC_ID)
/

ALTER TABLE OLE_PTRN_T
    ADD CONSTRAINT OLE_DLVR_STAT_CAT_FK4 FOREIGN KEY (OLE_STAT_CAT)
    REFERENCES OLE_DLVR_STAT_CAT_T (OLE_DLVR_STAT_CAT_ID)
/




ALTER TABLE OLE_SER_RCV_HIS_REC
    ADD CONSTRAINT FK_SER_ID FOREIGN KEY (SER_RCV_REC_ID)
    REFERENCES OLE_SER_RCV_REC (SER_RCV_REC_ID)
/



ALTER TABLE OLE_SER_RCV_REC_TYP_T
    ADD CONSTRAINT FK_SER_TPY_ID FOREIGN KEY (SER_RCV_REC_ID)
    REFERENCES OLE_SER_RCV_REC (SER_RCV_REC_ID)
/




ALTER TABLE OLE_BAT_PRCS_PRF_MTCH_POINT_T
    ADD CONSTRAINT BAT_PRF_MTCH_PNT_FK FOREIGN KEY (BAT_PRCS_PRF_ID)
    REFERENCES OLE_BAT_PRCS_PRF_T (BAT_PRCS_PRF_ID)
/


ALTER TABLE OLE_BAT_PRCS_PRFLE_CNST_T
    ADD CONSTRAINT BAT_PRCS_PRFL_CNST_FK_KEY FOREIGN KEY (BAT_PRCS_PRF_ID)
    REFERENCES OLE_BAT_PRCS_PRF_T (BAT_PRCS_PRF_ID)
/



ALTER TABLE OLE_BAT_PRCS_DT_MAP_OPT_T
    ADD CONSTRAINT MAP_FK_CONSTRAINT FOREIGN KEY (OLE_BAT_PRCS_DT_MAP_ID)
    REFERENCES OLE_BAT_PRCS_DT_MAP_T (OLE_BAT_PRCS_DT_MAP_ID)
/


ALTER TABLE OLE_BAT_PRCS_DT_MAP_T
    ADD CONSTRAINT BAT_FK_CONSTRAINT FOREIGN KEY (BAT_PRCS_PRF_ID)
    REFERENCES OLE_BAT_PRCS_PRF_T (BAT_PRCS_PRF_ID)
/


ALTER TABLE OLE_BAT_PRCS_FILTER_T
    ADD CONSTRAINT BAT_PRCS_FILTER_FK_KEY FOREIGN KEY (BAT_PRCS_PRF_ID)
    REFERENCES OLE_BAT_PRCS_PRF_T (BAT_PRCS_PRF_ID)
/




ALTER TABLE OLE_BAT_PRCS_PRCT_FLD_T
    ADD CONSTRAINT BAT_PRCS_GLBLY_PRCT_FK_KEY FOREIGN KEY (OLE_GLBLY_PRCT_FLD_ID)
    REFERENCES OLE_GLBLY_PRCT_FLD_T (OLE_GLBLY_PRCT_FLD_ID)
/

ALTER TABLE OLE_BAT_PRCS_PRCT_FLD_T
    ADD CONSTRAINT BAT_PRCS_USR_PRCT_FK_KEY FOREIGN KEY (BAT_PRCS_PRF_ID)
    REFERENCES OLE_BAT_PRCS_PRF_T (BAT_PRCS_PRF_ID)
/


ALTER TABLE OLE_BAT_PRF_BIB_DT_MAP_T
    ADD CONSTRAINT BIB_DT_MAP_FK_CONSTRAINT FOREIGN KEY (BAT_PRCS_PRF_ID)
    REFERENCES OLE_BAT_PRCS_PRF_T (BAT_PRCS_PRF_ID)
/


ALTER TABLE OLE_BAT_PRF_BIB_DT_MAP_OVER_T
    ADD CONSTRAINT BIB_DT_MAP_OVER_FK_CONSTRAINT FOREIGN KEY (BAT_PRCS_PRF_ID)
    REFERENCES OLE_BAT_PRCS_PRF_T (BAT_PRCS_PRF_ID)
/


ALTER TABLE OLE_BAT_PRCS_T
    ADD CONSTRAINT BAT_PRCS_FK_CONST FOREIGN KEY (BAT_PRCS_PRF_ID)
    REFERENCES OLE_BAT_PRCS_PRF_T (BAT_PRCS_PRF_ID)
/


ALTER TABLE OLE_BAT_PRCS_JOB_T
    ADD CONSTRAINT PRCS_FK_CONSTRAINT FOREIGN KEY (BAT_PRCS_ID)
    REFERENCES OLE_BAT_PRCS_T (BAT_PRCS_ID)
/


ALTER TABLE OLE_BAT_GLBLY_PRCT_FLD_T
    ADD CONSTRAINT OLE_BAT_PRCS_GLBLY_PRCT_FK FOREIGN KEY (BAT_PRCS_PRF_ID)
    REFERENCES OLE_BAT_PRCS_PRF_T (BAT_PRCS_PRF_ID)
/


ALTER TABLE OLE_BAT_PRCS_SCHDULE_T
    ADD CONSTRAINT FK_BAT_PRCS_ID FOREIGN KEY (BAT_PRCS_ID)
    REFERENCES OLE_BAT_PRCS_T (BAT_PRCS_ID)
/


ALTER TABLE OLE_BAT_PRF_DEL_FLD_T
    ADD CONSTRAINT OLE_BAT_PRCS_DEL_FK FOREIGN KEY (BAT_PRCS_PRF_ID)
    REFERENCES OLE_BAT_PRCS_PRF_T (BAT_PRCS_PRF_ID)
/


ALTER TABLE OLE_BAT_PRF_RNM_FLD_T
    ADD CONSTRAINT OLE_BAT_PRCS_RNM_FK FOREIGN KEY (BAT_PRCS_PRF_ID)
    REFERENCES OLE_BAT_PRCS_PRF_T (BAT_PRCS_PRF_ID)
/


ALTER TABLE OLE_BAT_INST_MTCH_PNT_T
    ADD CONSTRAINT BAT_INST_MTCH_PNT_FK FOREIGN KEY (BAT_PRCS_PRF_ID)
    REFERENCES OLE_BAT_PRCS_PRF_T (BAT_PRCS_PRF_ID)
/


ALTER TABLE OLE_BAT_BIB_MTCH_PNT_T
    ADD CONSTRAINT BAT_BIB_MTCH_PNT_FK FOREIGN KEY (BAT_PRCS_PRF_ID)
    REFERENCES OLE_BAT_PRCS_PRF_T (BAT_PRCS_PRF_ID)
/


ALTER TABLE OLE_BAT_PRCS_BIB_STUS_T
    ADD CONSTRAINT BAT_BIB_STS_FK FOREIGN KEY (BAT_PRCS_PRF_ID)
    REFERENCES OLE_BAT_PRCS_PRF_T (BAT_PRCS_PRF_ID)
/


ALTER TABLE OLE_BAT_BIB_WRK_UNT_T
    ADD CONSTRAINT BAT_BIB_WRK_UNT_FK FOREIGN KEY (BAT_PRCS_PRF_ID)
    REFERENCES OLE_BAT_PRCS_PRF_T (BAT_PRCS_PRF_ID)
/


ALTER TABLE OLE_BAT_INST_WRK_UNT_T
    ADD CONSTRAINT BAT_INST_WRK_UNT_FK FOREIGN KEY (BAT_PRCS_PRF_ID)
    REFERENCES OLE_BAT_PRCS_PRF_T (BAT_PRCS_PRF_ID)
/




ALTER TABLE OLE_CLNDR_EXCP_DAT_T
    ADD CONSTRAINT OLE_CLNDR_EXCP_DAT_CN1 FOREIGN KEY (OLE_CLNDR_ID)
    REFERENCES ole_clndr_t (OLE_CLNDR_ID)
/


ALTER TABLE OLE_CLNDR_WK_T
    ADD CONSTRAINT OLE_CLNDR_WK_CN1 FOREIGN KEY (OLE_CLNDR_ID)
    REFERENCES ole_clndr_t (OLE_CLNDR_ID)
/


ALTER TABLE OLE_CLNDR_EXCP_PRD_T
    ADD CONSTRAINT OLE_CLNDR_EXCP_PRD_CN1 FOREIGN KEY (OLE_CLNDR_ID)
    REFERENCES ole_clndr_t (OLE_CLNDR_ID)
/


ALTER TABLE OLE_CLNDR_EXCP_PRD_WK_T
    ADD CONSTRAINT OLE_CLNDR_EXCP_PRD_WK_CN1 FOREIGN KEY (OLE_CLNDR_EXCP_PRD_ID)
    REFERENCES OLE_CLNDR_EXCP_PRD_T (OLE_CLNDR_EXCP_PRD_ID)
/










ALTER TABLE OLE_DS_DOC_FORMAT_T
    ADD CONSTRAINT OLE_DS_DOC_FORMAT_TC1 FOREIGN KEY (DOC_TYPE_ID)
    REFERENCES OLE_DS_DOC_TYPE_T (DOC_TYPE_ID)
/


ALTER TABLE OLE_DS_DOC_FIELD_T
    ADD CONSTRAINT OLE_DS_DOC_FIELD_TC1 FOREIGN KEY (DOC_TYPE_ID)
    REFERENCES OLE_DS_DOC_TYPE_T (DOC_TYPE_ID)
/

ALTER TABLE OLE_DS_DOC_FIELD_T
    ADD CONSTRAINT OLE_DS_DOC_FIELD_TC2 FOREIGN KEY (DOC_FORMAT_ID)
    REFERENCES OLE_DS_DOC_FORMAT_T (DOC_FORMAT_ID)
/














ALTER TABLE ALRT_EVENT_T
    ADD CONSTRAINT ALERT_DOC_TYP_FKP FOREIGN KEY (ALRT_DOC_TYP_ID)
    REFERENCES ALRT_DOC_TYP_T (ALRT_DOC_TYP_ID)
/


ALTER TABLE ALRT_EVENT_FIELD_T
    ADD CONSTRAINT ALERT_EVENT_FKP FOREIGN KEY (ALRT_EVENT_ID)
    REFERENCES ALRT_EVENT_T (ALRT_EVENT_ID)
/



ALTER TABLE ALRT_CNDTN_NTFCN_INFO_T
    ADD CONSTRAINT ALERT_FK1 FOREIGN KEY (ALRT_DOC_ID)
    REFERENCES ALRT_DOC_T (ALRT_DOC_ID)
/

ALTER TABLE ALRT_CNDTN_NTFCN_INFO_T
    ADD CONSTRAINT ALERT_EVENT_FK1 FOREIGN KEY (ALRT_EVENT_ID)
    REFERENCES ALRT_EVENT_T (ALRT_EVENT_ID)
/










ALTER TABLE OLE_GOKB_REVIEW_T
    ADD CONSTRAINT OLE_GOKB_REVIEW_FK FOREIGN KEY (E_RES_REC_ID)
    REFERENCES OLE_E_RES_REC_T (E_RES_REC_ID)
/


ALTER TABLE OLE_GOKB_CHANGE_LOG_T
    ADD CONSTRAINT OLE_GOKB_CHANGE_LOG_FK FOREIGN KEY (E_RES_REC_ID)
    REFERENCES OLE_E_RES_REC_T (E_RES_REC_ID)
/


ALTER TABLE OLE_GOKB_ARCHIVE_T
    ADD CONSTRAINT OLE_GOKB_ARCHIVE_FK FOREIGN KEY (E_RES_REC_ID)
    REFERENCES OLE_E_RES_REC_T (E_RES_REC_ID)
/


ALTER TABLE OLE_NOTC_FIELD_LABEL_MAPNG_T
    ADD CONSTRAINT OLE_NOTC_CNTNT_CONFIG_FK FOREIGN KEY (OLE_NOTC_CNTNT_CONFIG_ID)
    REFERENCES OLE_NOTC_CNTNT_CONFIG_T (OLE_NOTC_CNTNT_CONFIG_ID)
/







ALTER TABLE OLE_NG_BAT_PRCS_JOB_T
    ADD CONSTRAINT OLE_NG_BAT_PRF_ID_FK FOREIGN KEY (PRF_ID)
    REFERENCES OLE_NG_BAT_PRF_T (PRF_ID)
/


ALTER TABLE OLE_NG_BAT_JOB_DETAILS_T
    ADD CONSTRAINT OLE_NG_BAT_PRCS_ID_FK FOREIGN KEY (JOB_ID)
    REFERENCES OLE_NG_BAT_PRCS_JOB_T (JOB_ID)
/


