package com.mj.spring.model.mb.vo;


import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by mingwang on 2017/7/27.
 */
@Entity
@Table(name = "co_com_user")
public class CoComUser implements Serializable {
    //用户表
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int userId; //用户编号
    @NotNull
    private String userName;//用户名
    @NotNull
    private String userPwd;//用户密码
    @NotNull
    private String email;//邮件地址
    @NotNull
    private String status;//状态

    @OneToMany(mappedBy = "coComUser",cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JsonIgnore
    private Set<CoPtnrInf> coPtnrInfs =new HashSet<CoPtnrInf>();

    public Set<CoPtnrInf> getCoPtnrInfs() {
        return coPtnrInfs;
    }

    public void setCoPtnrInfs(Set<CoPtnrInf> coPtnrInfs) {
        this.coPtnrInfs = coPtnrInfs;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
