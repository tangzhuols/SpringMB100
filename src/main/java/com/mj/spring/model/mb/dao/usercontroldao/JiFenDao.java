package com.mj.spring.model.mb.dao.usercontroldao;

import com.mj.spring.model.mb.vo.CoIntegral;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by mingwang on 2017/7/31.
 */
@Repository
public interface JiFenDao extends CrudRepository<CoIntegral, Integer> {
    public List<CoIntegral> findAll();//用户积分查询
}
