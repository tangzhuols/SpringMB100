package com.mj.spring.model.mb.vo;


import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.Set;

/**
 * Created by mingwang on 2017/7/27.
 */
@Entity
@Table(name = "co_wform_inf")
public class CoWformInf {
    //工单信息
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int wfId;//id

    private String cwiName;// 工单名称

    private String cwiType;//工单类别
    private String grade;//级别
    private String timeLimt;//时间限制
    private String sendTo;//发送对象
    private String createDate;//创建时间
    private String createUserId;//创建人
    private String cwiContent;//内容
    private String status;//工作状态
    private String statu;
    @OneToMany(mappedBy = "wformId")
    @JsonIgnore
    private Set<CoWformFdbk> wformId;

    @Override
    public String toString() {
        return "CoWformInf{" +
                "wfId=" + wfId +
                ", cwiName='" + cwiName + '\'' +
                ", cwiType='" + cwiType + '\'' +
                ", grade='" + grade + '\'' +
                ", timeLimt='" + timeLimt + '\'' +
                ", sendTo='" + sendTo + '\'' +
                ", createDate='" + createDate + '\'' +
                ", createUserId='" + createUserId + '\'' +
                ", cwiContent='" + cwiContent + '\'' +
                ", status='" + status + '\'' +
                ", statu='" + statu + '\'' +
                ", wformId=" + wformId +
                '}';
    }

    public Set<CoWformFdbk> getWformId() {
        return wformId;
    }

    public void setWformId(Set<CoWformFdbk> wformId) {
        this.wformId = wformId;
    }

    public int getWfId() {
        return wfId;
    }

    public void setWfId(int wfId) {
        this.wfId = wfId;
    }

    public String getCwiName() {
        return cwiName;
    }

    public void setCwiName(String cwiName) {
        this.cwiName = cwiName;
    }

    public String getCwiType() {
        return cwiType;
    }

    public void setCwiType(String cwiType) {
        this.cwiType = cwiType;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getTimeLimt() {
        return timeLimt;
    }

    public void setTimeLimt(String timeLimt) {
        this.timeLimt = timeLimt;
    }

    public String getSendTo() {
        return sendTo;
    }

    public void setSendTo(String sendTo) {
        this.sendTo = sendTo;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getCreateUserId() {
        return createUserId;
    }

    public void setCreateUserId(String createUserId) {
        this.createUserId = createUserId;
    }

    public String getCwiContent() {
        return cwiContent;
    }

    public void setCwiContent(String cwiContent) {
        this.cwiContent = cwiContent;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatu() {
        return statu;
    }

    public void setStatu(String statu) {
        this.statu = statu;
    }
}
