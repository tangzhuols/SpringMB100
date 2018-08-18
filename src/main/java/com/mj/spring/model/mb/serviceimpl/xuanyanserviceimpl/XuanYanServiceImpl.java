package com.mj.spring.model.mb.serviceimpl.xuanyanserviceimpl;

import com.mj.spring.model.mb.dao.xuanyancontroldao.CoSlctSchemaDao;
import com.mj.spring.model.mb.dao.xuanyancontroldao.XuanYanControlDao;
import com.mj.spring.model.mb.service.xuanyanservice.XuanYanService;
import com.mj.spring.model.mb.vo.CoDbinfInfo;
import com.mj.spring.model.mb.vo.CoSlctList;
import com.mj.spring.model.mb.vo.CoSlctSchema;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by mingwang on 2017/7/31.
 */
@Service
public class XuanYanServiceImpl implements XuanYanService {
    @Autowired
    public XuanYanControlDao xuanYanControlDao;

    @Autowired
    public CoSlctSchemaDao coSlctSchemaDao;

    @Override
    public List<CoDbinfInfo> findAll() {
        return xuanYanControlDao.findAll();
    }

    @Override
    public int insertCoSlctSchema(int SpId, String SchemaName, String SchemaDesc, String SlctType, String dates) { //添加宣言方案
        return coSlctSchemaDao.saveCoSlctSchema(SpId, SchemaName, SchemaDesc, SlctType, dates);
    }

    @Override
    public List<CoSlctSchema> selectSpID(Integer ptnrIdSlct) {
        return coSlctSchemaDao.selectSpID(ptnrIdSlct);
    }
}
