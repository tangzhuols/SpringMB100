package com.mj.spring.model.mb.serviceimpl.userserviceimpl;

import com.mj.spring.model.mb.dao.usercontroldao.EnterUserDao;
import com.mj.spring.model.mb.dao.usercontroldao.JiFenDao;
import com.mj.spring.model.mb.dao.usercontroldao.ZiZHiDao;
import com.mj.spring.model.mb.service.userservice.EnterUserService;
import com.mj.spring.model.mb.vo.CoComUser;
import com.mj.spring.model.mb.vo.CoIntegral;
import com.mj.spring.model.mb.vo.CoPtnrInf;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by mingwang on 2017/7/28.
 */
@Transactional
@Service
public class EnterUserServiceImpl implements EnterUserService {
    @Autowired
    private EnterUserDao enterUserDao;
    @Autowired
    private JiFenDao jiFenDao;

    @Autowired
    private ZiZHiDao ziZHiDao;

    @Override
    public CoComUser findName(String userName, String psword) {  //查询所有的用户数据
        return enterUserDao.findName(userName, psword);
    }

    public List<CoIntegral> JFfindAll() {//用户积分查询
        return jiFenDao.findAll();
    }

    @Override
    public CoPtnrInf getCoComUserById(int spId) {//修改信息 这是修改合作伙伴的信息钱的查询
        return ziZHiDao.findOne(spId);
    }

    @Override
    public int coComUserUpdate(String psword, Integer userId) {
        return enterUserDao.coComUserUpdate(psword, userId);
    }

    @Override
    public int InsertText() {
        return enterUserDao.testInsert();
    }
}
