package com.mj.spring.model.mb.serviceimpl.zhaomuserviceimpl;

import com.mj.spring.model.mb.dao.zhaocontrolmudao.CoInvtResponseDao;
import com.mj.spring.model.mb.dao.zhaocontrolmudao.ZhaoMuDao;
import com.mj.spring.model.mb.service.zhaomuservice.ZhaoMuService;
import com.mj.spring.model.mb.vo.CoInvtInf;
import com.mj.spring.model.mb.vo.CoInvtResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by mingwang on 2017/7/31.
 */
@Service
public class ZhaoMuServiceImpl implements ZhaoMuService {
    @Autowired
    public ZhaoMuDao zhaoMuDao;
    @Autowired
    private CoInvtResponseDao coInvtResponseDao;

    @Override
    public List<CoInvtInf> findAll() {
        return zhaoMuDao.findAll();
    }

    @Override
    public List<CoInvtResponse> CoInvtResponsefindAll() {
        return coInvtResponseDao.findAll();
    }
}
