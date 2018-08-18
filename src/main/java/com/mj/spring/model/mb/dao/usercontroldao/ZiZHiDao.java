package com.mj.spring.model.mb.dao.usercontroldao;

import com.mj.spring.model.mb.vo.CoPtnrInf;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * Created by mingwang on 2017/7/31.
 */
@Repository
public interface ZiZHiDao extends CrudRepository<CoPtnrInf, Integer> {
    //    修改信息 这是修改合作伙伴的信息钱的查询
    public CoPtnrInf findOne(@Param("spId") Integer spId);

}
