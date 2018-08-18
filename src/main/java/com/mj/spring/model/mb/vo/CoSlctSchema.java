package com.mj.spring.model.mb.vo;


import javax.persistence.*;

/**
 * Created by mingwang on 2017/7/27.
 */
@Entity
@Table(name = "co_slct_schema")
public class CoSlctSchema {
    //选验方案
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int schemaId;
    @ManyToOne(optional = false)
    private CoSlctList slctListId;//选验列表ID

    @ManyToOne(optional = false)
    private CoPtnrInf ptnrIdSlct;//合作伙伴ID


    private String schemaName;//方案名称


    private String schemaDesc;//方案描述


    private String createDate;//创建时间


    private String summing;//结论


    private String dealStatus;//处理状态


    private String slctType;//选验类型


    private String attachment;//方案附件


    private String opStatus;//操作标志


    public int getSchemaId() {
        return schemaId;
    }

    public void setSchemaId(int schemaId) {
        this.schemaId = schemaId;
    }

    public CoSlctList getSlctListId() {
        return slctListId;
    }

    public void setSlctListId(CoSlctList slctListId) {
        this.slctListId = slctListId;
    }

    public CoPtnrInf getPtnrIdSlct() {
        return ptnrIdSlct;
    }

    public void setPtnrIdSlct(CoPtnrInf ptnrIdSlct) {
        this.ptnrIdSlct = ptnrIdSlct;
    }

    public String getSchemaName() {
        return schemaName;
    }

    public void setSchemaName(String schemaName) {
        this.schemaName = schemaName;
    }

    public String getSchemaDesc() {
        return schemaDesc;
    }

    public void setSchemaDesc(String schemaDesc) {
        this.schemaDesc = schemaDesc;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getSumming() {
        return summing;
    }

    public void setSumming(String summing) {
        this.summing = summing;
    }

    public String getDealStatus() {
        return dealStatus;
    }

    public void setDealStatus(String dealStatus) {
        this.dealStatus = dealStatus;
    }

    public String getSlctType() {
        return slctType;
    }

    public void setSlctType(String slctType) {
        this.slctType = slctType;
    }

    public String getAttachment() {
        return attachment;
    }

    public void setAttachment(String attachment) {
        this.attachment = attachment;
    }

    public String getOpStatus() {
        return opStatus;
    }

    public void setOpStatus(String opStatus) {
        this.opStatus = opStatus;
    }
}
