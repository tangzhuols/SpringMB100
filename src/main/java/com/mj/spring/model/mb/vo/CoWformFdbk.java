package com.mj.spring.model.mb.vo;

import javax.persistence.*;

/**
 * Created by mingwang on 2017/7/27.
 */
@Entity
@Table(name = "co_wform_fdbk")
public class CoWformFdbk {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int wfkId;//����ID
    @ManyToOne(optional = false)
    private CoWformInf wformId;//����
    private String cyfContent;//�ظ�ID
    @ManyToOne(optional = false)
    private CoComUser replyId;

    @Override
    public String toString() {
        return "CoWformFdbk{" +
                "wfkId=" + wfkId +
                ", wformId=" + wformId +
                ", cyfContent='" + cyfContent + '\'' +
                ", replyId=" + replyId +
                '}';
    }

    public CoComUser getReplyId() {
        return replyId;
    }

    public void setReplyId(CoComUser replyId) {
        this.replyId = replyId;
    }

    public int getWfkId() {
        return wfkId;
    }

    public void setWfkId(int wfkId) {
        this.wfkId = wfkId;
    }

    public CoWformInf getWformId() {
        return wformId;
    }

    public void setWformId(CoWformInf wformId) {
        this.wformId = wformId;
    }

    public String getCyfContent() {
        return cyfContent;
    }

    public void setCyfContent(String cyfContent) {
        this.cyfContent = cyfContent;
    }

}
