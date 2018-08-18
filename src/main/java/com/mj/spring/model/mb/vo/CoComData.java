package com.mj.spring.model.mb.vo;


import javax.persistence.*;

/**
 * Created by mingwang on 2017/7/27.
 */
@Entity
@Table(name = "co_com_data")
public class CoComData {
    //    资源类别
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int dataId;
    private String dataName;
    private String dataDescription;

    public CoComData() {
    }

    public CoComData(String dataName, String dataDescription) {
        this.dataName = dataName;
        this.dataDescription = dataDescription;
    }

    @Override
    public String toString() {
        return "CoComData{" +
                "dataId=" + dataId +
                ", dataName='" + dataName + '\'' +
                ", dataDescription='" + dataDescription + '\'' +
                '}';
    }

    public int getDataId() {
        return dataId;
    }

    public void setDataId(int dataId) {
        this.dataId = dataId;
    }

    public String getDataName() {
        return dataName;
    }

    public void setDataName(String dataName) {
        this.dataName = dataName;
    }

    public String getDataDescription() {
        return dataDescription;
    }

    public void setDataDescription(String dataDescription) {
        this.dataDescription = dataDescription;
    }
}
