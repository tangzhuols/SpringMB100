package com.mj.spring.model.mb.dao.xuanyancontroldao;

import com.mj.spring.model.mb.vo.CoDbinfInfo;
import com.mj.spring.model.mb.vo.CoSlctList;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by mingwang on 2017/7/31.
 */
@Repository
public interface XuanYanControlDao extends CrudRepository<CoDbinfInfo, Integer> {
    public List<CoDbinfInfo> findAll();
}
