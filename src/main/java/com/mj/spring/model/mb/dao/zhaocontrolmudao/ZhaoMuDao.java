package com.mj.spring.model.mb.dao.zhaocontrolmudao;

import com.mj.spring.model.mb.vo.CoInvtInf;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by mingwang on 2017/7/31.
 */
@Repository
public interface ZhaoMuDao extends CrudRepository<CoInvtInf, Integer> {
    public List<CoInvtInf> findAll();
}
