package com.mj.spring.model.mb.dao.hezuocontroldao;

import com.mj.spring.model.mb.vo.CoPtnrInf;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by mingwang on 2017/7/31.
 */
@Repository
public interface HeZuoDao extends CrudRepository<CoPtnrInf, Integer> {
}
