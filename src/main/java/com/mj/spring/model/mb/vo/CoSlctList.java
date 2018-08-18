package com.mj.spring.model.mb.vo;


import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by mingwang on 2017/7/27.
 */
@Entity
@Table(name = "co_slct_list")
public class CoSlctList {
    //选验列表
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int slctId;

    private String subject;//主题

    private String createUserId;//创建人

    private String createDate;//创建时间

    private String belongYear;//归属年

    private String belongMonth;//归属月

    private String opFlag;//操作标志
    @OneToMany(mappedBy = "ptnrIdSlct",cascade = CascadeType.ALL ,fetch = FetchType.EAGER)
    @JsonIgnore
    private Set<CoSlctSchema> slctListId =new HashSet<CoSlctSchema>();

    public Set<CoSlctSchema> getSlctListId() {
        return slctListId;
    }

    public void setSlctListId(Set<CoSlctSchema> slctListId) {
        this.slctListId = slctListId;
    }

    public int getSlctId() {
        return slctId;
    }

    public void setSlctId(int slctId) {
        this.slctId = slctId;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getCreateUserId() {
        return createUserId;
    }

    public void setCreateUserId(String createUserId) {
        this.createUserId = createUserId;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getBelongYear() {
        return belongYear;
    }

    public void setBelongYear(String belongYear) {
        this.belongYear = belongYear;
    }

    public String getBelongMonth() {
        return belongMonth;
    }

    public void setBelongMonth(String belongMonth) {
        this.belongMonth = belongMonth;
    }

    public String getOpFlag() {
        return opFlag;
    }

    public void setOpFlag(String opFlag) {
        this.opFlag = opFlag;
    }
}
