package com.mj.spring.model.mb.vo;


import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.Set;

/**
 * Created by mingwang on 2017/7/27.
 */
@Entity
@Table(name = "co_dbinf_category")
public class CoDbinfCategory {
    //    资讯分类表
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int cateId;
    private String cdcName;
    private String intro;

    @OneToMany(mappedBy = "infoId")
    @JsonIgnore
    private Set<CoDbinfInfo> infoId;

    public CoDbinfCategory() {
    }

    public CoDbinfCategory(String cdcName, String intro) {
        this.cdcName = cdcName;
        this.intro = intro;
    }



    public Set<CoDbinfInfo> getInfoId() {
        return infoId;
    }

    public void setInfoId(Set<CoDbinfInfo> infoId) {
        this.infoId = infoId;
    }

    public int getCateId() {
        return cateId;
    }

    public void setCateId(int cateId) {
        this.cateId = cateId;
    }

    public String getCdcName() {
        return cdcName;
    }

    public void setCdcName(String cdcName) {
        this.cdcName = cdcName;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }
}
