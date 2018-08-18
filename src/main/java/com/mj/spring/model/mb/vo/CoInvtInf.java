package com.mj.spring.model.mb.vo;


import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.Set;

/**
 * Created by mingwang on 2017/7/27.
 */
@Entity
@Table(name = "co_invt_inf")
public class CoInvtInf {
    //    招募信息
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int invtId;
    private String rcSubject;
    private String resSort;
    private String startTime;
    private String rcTime;
    private String mnTudget;
    private String rcNum;
    private String rcIntro;
    private String faceWay;
    private String rcCriterion;
    private String advertObject;
    private String rcType;

    private String units;
    private String creatorId;
    private String endFlag;
    private String opStatus;
    private String endDate;
    private String runUnit;
    private int result;
    @OneToMany(mappedBy = "rcId")
    @JsonIgnore
    private Set<CoInvtResponse> rcId;


    public Set<CoInvtResponse> getRcId() {
        return rcId;
    }

    public void setRcId(Set<CoInvtResponse> rcId) {
        this.rcId = rcId;
    }

    public int getInvtId() {
        return invtId;
    }

    public void setInvtId(int invtId) {
        this.invtId = invtId;
    }

    public String getRcSubject() {
        return rcSubject;
    }

    public void setRcSubject(String rcSubject) {
        this.rcSubject = rcSubject;
    }

    public String getResSort() {
        return resSort;
    }

    public void setResSort(String resSort) {
        this.resSort = resSort;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getRcTime() {
        return rcTime;
    }

    public void setRcTime(String rcTime) {
        this.rcTime = rcTime;
    }

    public String getMnTudget() {
        return mnTudget;
    }

    public void setMnTudget(String mnTudget) {
        this.mnTudget = mnTudget;
    }

    public String getRcNum() {
        return rcNum;
    }

    public void setRcNum(String rcNum) {
        this.rcNum = rcNum;
    }

    public String getRcIntro() {
        return rcIntro;
    }

    public void setRcIntro(String rcIntro) {
        this.rcIntro = rcIntro;
    }

    public String getFaceWay() {
        return faceWay;
    }

    public void setFaceWay(String faceWay) {
        this.faceWay = faceWay;
    }

    public String getRcCriterion() {
        return rcCriterion;
    }

    public void setRcCriterion(String rcCriterion) {
        this.rcCriterion = rcCriterion;
    }

    public String getAdvertObject() {
        return advertObject;
    }

    public void setAdvertObject(String advertObject) {
        this.advertObject = advertObject;
    }

    public String getRcType() {
        return rcType;
    }

    public void setRcType(String rcType) {
        this.rcType = rcType;
    }

    public String getUnits() {
        return units;
    }

    public void setUnits(String units) {
        this.units = units;
    }

    public String getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(String creatorId) {
        this.creatorId = creatorId;
    }

    public String getEndFlag() {
        return endFlag;
    }

    public void setEndFlag(String endFlag) {
        this.endFlag = endFlag;
    }

    public String getOpStatus() {
        return opStatus;
    }

    public void setOpStatus(String opStatus) {
        this.opStatus = opStatus;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getRunUnit() {
        return runUnit;
    }

    public void setRunUnit(String runUnit) {
        this.runUnit = runUnit;
    }

    public int getResult() {
        return result;
    }

    public void setResult(int result) {
        this.result = result;
    }
}
