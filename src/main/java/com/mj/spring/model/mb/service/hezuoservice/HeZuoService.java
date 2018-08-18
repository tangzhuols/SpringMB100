package com.mj.spring.model.mb.service.hezuoservice;

import com.mj.spring.model.mb.vo.CoDbinfInfo;
import com.mj.spring.model.mb.vo.CoWformInf;
import com.mj.spring.model.mb.vo.SysAdmin;

import java.util.List;

/**
 * Created by mingwang on 2017/7/31.
 */
public interface HeZuoService {
    public List<SysAdmin> SysAdminfindAll();

    public List<CoWformInf> CoWformInfAll();//查询所有信息

    public List<CoDbinfInfo> CoDbinfInfoSlect();//质询详情
}
