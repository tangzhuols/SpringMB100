package com.mj.spring.model.mb.dao.hezuocontroldao;

import com.mj.spring.model.mb.vo.CoWformInf;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by mingwang on 2017/7/31.
 */
public interface CoWformInfDao extends CrudRepository<CoWformInf, Integer> {
    public List<CoWformInf> findAll();//查询工单所有信息
}
