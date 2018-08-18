package com.mj.spring.model.mb.dao.zhaocontrolmudao;

import com.mj.spring.model.mb.vo.CoInvtResponse;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by mingwang on 2017/7/31.
 */
public interface CoInvtResponseDao extends CrudRepository<CoInvtResponse,Integer> {
    public List<CoInvtResponse> findAll();
}
