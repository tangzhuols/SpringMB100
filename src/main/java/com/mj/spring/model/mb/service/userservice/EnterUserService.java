package com.mj.spring.model.mb.service.userservice;

import com.mj.spring.model.mb.vo.CoComUser;
import com.mj.spring.model.mb.vo.CoIntegral;
import com.mj.spring.model.mb.vo.CoPtnrInf;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by mingwang on 2017/7/28.
 */

public interface EnterUserService {
    public CoComUser findName(String userName, String psword);//查询所有的用户数据

    public List<CoIntegral> JFfindAll();//用户积分查询

    public CoPtnrInf getCoComUserById(int spId);//    修改信息 这是修改合作伙伴的信息钱的查询
    public int coComUserUpdate(String psword, Integer userId);//修改密码

    public int InsertText();
}
