package com.mj.spring.model.mb.dao.hezuocontroldao;

import com.mj.spring.model.mb.vo.SysAdmin;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by mingwang on 2017/7/31.
 */
public interface FaqiGongdanDao extends CrudRepository<SysAdmin,Integer> {
    public List<SysAdmin> findAll();//发起工单的查询
}
