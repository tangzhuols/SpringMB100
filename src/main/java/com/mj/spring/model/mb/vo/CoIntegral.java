package com.mj.spring.model.mb.vo;


import javax.persistence.*;

/**
 * Created by mingwang on 2017/7/27.
 */
@Entity
@Table(name = "co_integral")
public class CoIntegral {
    //    用户积分
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @ManyToOne(optional = false)
    private CoPtnrInf ptnrIdRal;//������ID
    private double score;//�÷�
    private String deptName;
    private int sort;


    @Override
    public String toString() {
        return "CoIntegral{" +
                "id=" + id +
                ", ptnrIdRal=" + ptnrIdRal +
                ", score=" + score +
                ", deptName='" + deptName + '\'' +
                ", sort=" + sort +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public CoPtnrInf getPtnrIdRal() {
        return ptnrIdRal;
    }

    public void setPtnrIdRal(CoPtnrInf ptnrIdRal) {
        this.ptnrIdRal = ptnrIdRal;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public int getSort() {
        return sort;
    }

    public void setSort(int sort) {
        this.sort = sort;
    }
}
