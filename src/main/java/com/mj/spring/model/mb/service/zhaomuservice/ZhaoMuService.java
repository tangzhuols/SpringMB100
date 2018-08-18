package com.mj.spring.model.mb.service.zhaomuservice;

import com.mj.spring.model.mb.dao.zhaocontrolmudao.ZhaoMuDao;
import com.mj.spring.model.mb.vo.CoInvtInf;
import com.mj.spring.model.mb.vo.CoInvtResponse;

import java.util.List;

/**
 * Created by mingwang on 2017/7/31.
 */

public interface ZhaoMuService {
    public List<CoInvtInf> findAll();
    public List<CoInvtResponse> CoInvtResponsefindAll();

}
