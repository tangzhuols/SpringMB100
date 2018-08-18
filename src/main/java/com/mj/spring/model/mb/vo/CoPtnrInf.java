package com.mj.spring.model.mb.vo;


import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.Set;

/**
 * Created by mingwang on 2017/7/27.
 */
@Entity
@Table(name = "co_ptnr_inf")
public class CoPtnrInf {
    //    合作伙伴
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int spId;

    private String deptName;
    private String deptType;

    private String resType;

    private String mgtMode;

    private String crtDate;
    private String peopNum;

    private String brandName;

    private String mngType;

    private String manMkt;

    private String deptAddr;
    private String artPerson;

    private String principalName;

    private String principalTel;

    private String principalMtel;

    private String businessNo;


    private String regAddr;

    private String taxRegNo;

    private String deptBrief;

    private String coLevel;

    private String creditLevel;

    private String status;

    private String opStatus;

    private String regDate;
    private int tian;
    private int sisi;
    private String username;
    private String userpwd;
    private double score;
    private String email;
    @ManyToOne(optional = false)
    private CoComUser coComUser;

    public CoComUser getCoComUser() {
        return coComUser;
    }

    public void setCoComUser(CoComUser coComUser) {
        this.coComUser = coComUser;
    }
    public int getSpId() {
        return spId;
    }

    public void setSpId(int spId) {
        this.spId = spId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getDeptType() {
        return deptType;
    }

    public void setDeptType(String deptType) {
        this.deptType = deptType;
    }

    public String getResType() {
        return resType;
    }

    public void setResType(String resType) {
        this.resType = resType;
    }

    public String getMgtMode() {
        return mgtMode;
    }

    public void setMgtMode(String mgtMode) {
        this.mgtMode = mgtMode;
    }

    public String getCrtDate() {
        return crtDate;
    }

    public void setCrtDate(String crtDate) {
        this.crtDate = crtDate;
    }

    public String getPeopNum() {
        return peopNum;
    }

    public void setPeopNum(String peopNum) {
        this.peopNum = peopNum;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public String getMngType() {
        return mngType;
    }

    public void setMngType(String mngType) {
        this.mngType = mngType;
    }

    public String getManMkt() {
        return manMkt;
    }

    public void setManMkt(String manMkt) {
        this.manMkt = manMkt;
    }

    public String getDeptAddr() {
        return deptAddr;
    }

    public void setDeptAddr(String deptAddr) {
        this.deptAddr = deptAddr;
    }

    public String getArtPerson() {
        return artPerson;
    }

    public void setArtPerson(String artPerson) {
        this.artPerson = artPerson;
    }

    public String getPrincipalName() {
        return principalName;
    }

    public void setPrincipalName(String principalName) {
        this.principalName = principalName;
    }

    public String getPrincipalTel() {
        return principalTel;
    }

    public void setPrincipalTel(String principalTel) {
        this.principalTel = principalTel;
    }

    public String getPrincipalMtel() {
        return principalMtel;
    }

    public void setPrincipalMtel(String principalMtel) {
        this.principalMtel = principalMtel;
    }

    public String getBusinessNo() {
        return businessNo;
    }

    public void setBusinessNo(String businessNo) {
        this.businessNo = businessNo;
    }

    public String getRegAddr() {
        return regAddr;
    }

    public void setRegAddr(String regAddr) {
        this.regAddr = regAddr;
    }

    public String getTaxRegNo() {
        return taxRegNo;
    }

    public void setTaxRegNo(String taxRegNo) {
        this.taxRegNo = taxRegNo;
    }

    public String getDeptBrief() {
        return deptBrief;
    }

    public void setDeptBrief(String deptBrief) {
        this.deptBrief = deptBrief;
    }

    public String getCoLevel() {
        return coLevel;
    }

    public void setCoLevel(String coLevel) {
        this.coLevel = coLevel;
    }

    public String getCreditLevel() {
        return creditLevel;
    }

    public void setCreditLevel(String creditLevel) {
        this.creditLevel = creditLevel;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getOpStatus() {
        return opStatus;
    }

    public void setOpStatus(String opStatus) {
        this.opStatus = opStatus;
    }

    public String getRegDate() {
        return regDate;
    }

    public void setRegDate(String regDate) {
        this.regDate = regDate;
    }

    public int getTian() {
        return tian;
    }

    public void setTian(int tian) {
        this.tian = tian;
    }

    public int getSisi() {
        return sisi;
    }

    public void setSisi(int sisi) {
        this.sisi = sisi;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserpwd() {
        return userpwd;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
