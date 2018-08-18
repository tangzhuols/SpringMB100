package com.mj.spring.model.mb.service.xuanyanservice;

import com.mj.spring.model.mb.vo.CoDbinfInfo;
import com.mj.spring.model.mb.vo.CoSlctList;
import com.mj.spring.model.mb.vo.CoSlctSchema;

import java.util.List;

/**
 * Created by mingwang on 2017/7/31.
 */
public interface XuanYanService {
    public List<CoDbinfInfo> findAll();
    public int insertCoSlctSchema(int SpId,String SchemaName,String SchemaDesc,String SlctType,String dates);

    public  List<CoSlctSchema> selectSpID(Integer ptnrIdSlct);

}
