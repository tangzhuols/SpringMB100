package com.mj.spring.model.mb.dao.hezuocontroldao;

import com.mj.spring.model.mb.vo.CoDbinfInfo;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by mingwang on 2017/7/31.
 */
public interface CoDbinfInfoDao extends CrudRepository<CoDbinfInfo,Integer> {
    public List<CoDbinfInfo> findAll();
}
