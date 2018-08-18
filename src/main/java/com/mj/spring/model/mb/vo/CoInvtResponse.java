package com.mj.spring.model.mb.vo;


import javax.persistence.*;

/**
 * Created by mingwang on 2017/7/27.
 */
@Entity
@Table(name = "co_invt_response")
public class CoInvtResponse {
    //    相应招募信息
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int respId;
    @ManyToOne(optional = false)
    private CoInvtInf rcId;

    @ManyToOne(optional = false)
    private CoPtnrInf ptnrId;

    private String runUnit;

    private String linkman;

    private String mobile;

    private String email;

    private String price;

    private String responseStatus;

    private String rcStatus;

    private String schemaDesc;

    private String reason;

    private String submitDate;

    private String result;

    private String attachment;

    private String opFlag;
    private String rcSubject;
    private String deptName;
    private int spId;//合作伙伴idss

    private int invtId;//招募信息id

    @Override
    public String toString() {
        return "CoInvtResponse{" +
                "respId=" + respId +
                ", rcId=" + rcId +
                ", ptnrId=" + ptnrId +
                ", runUnit='" + runUnit + '\'' +
                ", linkman='" + linkman + '\'' +
                ", mobile='" + mobile + '\'' +
                ", email='" + email + '\'' +
                ", price='" + price + '\'' +
                ", responseStatus='" + responseStatus + '\'' +
                ", rcStatus='" + rcStatus + '\'' +
                ", schemaDesc='" + schemaDesc + '\'' +
                ", reason='" + reason + '\'' +
                ", submitDate='" + submitDate + '\'' +
                ", result='" + result + '\'' +
                ", attachment='" + attachment + '\'' +
                ", opFlag='" + opFlag + '\'' +
                ", rcSubject='" + rcSubject + '\'' +
                ", deptName='" + deptName + '\'' +
                ", spId=" + spId +
                ", invtId=" + invtId +
                '}';
    }

    public int getRespId() {
        return respId;
    }

    public void setRespId(int respId) {
        this.respId = respId;
    }

    public CoInvtInf getRcId() {
        return rcId;
    }

    public void setRcId(CoInvtInf rcId) {
        this.rcId = rcId;
    }

    public CoPtnrInf getPtnrId() {
        return ptnrId;
    }

    public void setPtnrId(CoPtnrInf ptnrId) {
        this.ptnrId = ptnrId;
    }

    public String getRunUnit() {
        return runUnit;
    }

    public void setRunUnit(String runUnit) {
        this.runUnit = runUnit;
    }

    public String getLinkman() {
        return linkman;
    }

    public void setLinkman(String linkman) {
        this.linkman = linkman;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getResponseStatus() {
        return responseStatus;
    }

    public void setResponseStatus(String responseStatus) {
        this.responseStatus = responseStatus;
    }

    public String getRcStatus() {
        return rcStatus;
    }

    public void setRcStatus(String rcStatus) {
        this.rcStatus = rcStatus;
    }

    public String getSchemaDesc() {
        return schemaDesc;
    }

    public void setSchemaDesc(String schemaDesc) {
        this.schemaDesc = schemaDesc;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getSubmitDate() {
        return submitDate;
    }

    public void setSubmitDate(String submitDate) {
        this.submitDate = submitDate;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getAttachment() {
        return attachment;
    }

    public void setAttachment(String attachment) {
        this.attachment = attachment;
    }

    public String getOpFlag() {
        return opFlag;
    }

    public void setOpFlag(String opFlag) {
        this.opFlag = opFlag;
    }

    public String getRcSubject() {
        return rcSubject;
    }

    public void setRcSubject(String rcSubject) {
        this.rcSubject = rcSubject;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public int getSpId() {
        return spId;
    }

    public void setSpId(int spId) {
        this.spId = spId;
    }

    public int getInvtId() {
        return invtId;
    }

    public void setInvtId(int invtId) {
        this.invtId = invtId;
    }
}
