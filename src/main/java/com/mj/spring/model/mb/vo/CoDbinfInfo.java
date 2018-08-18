package com.mj.spring.model.mb.vo;


import javax.persistence.*;

/**
 * Created by mingwang on 2017/7/27.
 */
@Entity
@Table(name = "co_dbinf_info")
public class CoDbinfInfo {
//    资讯信息表

    @ManyToOne(optional = false)
    private CoDbinfCategory infoId;// 锟斤拷讯id
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int coId;// 锟斤拷讯锟斤拷锟斤拷id
    @ManyToOne(optional = false)
    private CoComUser createorId;// 锟斤拷锟斤拷锟斤拷
    private String state;// 锟斤拷锟斤拷状态 N未锟斤拷锟斤拷 Y锟窖凤拷锟斤拷
    private String title;// 锟斤拷息锟斤拷锟斤拷
    private String keyword;// 锟截硷拷锟斤拷
    private String cdfContent;//
    private String createDate;// 锟斤拷锟斤拷锟斤拷锟斤拷

    @Override
    public String toString() {
        return "CoDbinfInfo{" +
                "infoId=" + infoId +
                ", coId=" + coId +
                ", createorId=" + createorId +
                ", state='" + state + '\'' +
                ", title='" + title + '\'' +
                ", keyword='" + keyword + '\'' +
                ", cdfContent='" + cdfContent + '\'' +
                ", createDate='" + createDate + '\'' +
                '}';
    }

    public CoDbinfCategory getInfoId() {
        return infoId;
    }

    public void setInfoId(CoDbinfCategory infoId) {
        this.infoId = infoId;
    }

    public int getCoId() {
        return coId;
    }

    public void setCoId(int coId) {
        this.coId = coId;
    }

    public CoComUser getCreateorId() {
        return createorId;
    }

    public void setCreateorId(CoComUser createorId) {
        this.createorId = createorId;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getCdfContent() {
        return cdfContent;
    }

    public void setCdfContent(String cdfContent) {
        this.cdfContent = cdfContent;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }
}
