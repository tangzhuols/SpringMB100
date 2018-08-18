package com.mj.spring.model.mb.serviceimpl.hezuoserviceimpl;

import com.mj.spring.model.mb.dao.hezuocontroldao.CoDbinfInfoDao;
import com.mj.spring.model.mb.dao.hezuocontroldao.CoWformInfDao;
import com.mj.spring.model.mb.dao.hezuocontroldao.FaqiGongdanDao;
import com.mj.spring.model.mb.service.hezuoservice.HeZuoService;
import com.mj.spring.model.mb.vo.CoDbinfInfo;
import com.mj.spring.model.mb.vo.CoWformInf;
import com.mj.spring.model.mb.vo.SysAdmin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by mingwang on 2017/7/31.
 */
@Service
public class HeZuoServiceImpl implements HeZuoService {
    @Autowired
    private FaqiGongdanDao faqiGongdanDao;
    @Autowired
    private CoWformInfDao coWformInfDao;
    @Autowired
    private CoDbinfInfoDao coDbinfInfoDao;

    @Override
    public List<SysAdmin> SysAdminfindAll() {
        return faqiGongdanDao.findAll();
    }

    @Override
    public List<CoWformInf> CoWformInfAll() {
        return coWformInfDao.findAll();
    }

    @Override
    public List<CoDbinfInfo> CoDbinfInfoSlect() {
        return coDbinfInfoDao.findAll();
    }
}
