package com.mj.spring.model.mb.dao.xuanyancontroldao;

import com.mj.spring.model.mb.vo.CoSlctSchema;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by mingwang on 2017/7/31.
 */
public interface CoSlctSchemaDao extends JpaRepository<CoSlctSchema, Integer> {

    @Modifying
//    @Query(value = "insert into co_slct_schema(slct_list_id_slct_id,ptnr_id_slct_sp_id,schema_name,schema_desc,create_date,slct_type,attachment,op_status,deal_status,summing) values(1,:SpId,:SchemaName,:SchemaDesc,:dates,:SlctType,'aa.doc','1','待管理员审核','待实施')", nativeQuery = true)
    @Query(value = "insert into co_slct_schema(slct_list_id_slct_id,ptnr_id_slct_sp_id,schema_name,schema_desc,create_date,slct_type,attachment,op_status,deal_status,summing) values(1,?1,?2,?3,?4,?5,'aa.doc','1','待管理员审核','待实施')", nativeQuery = true)
    public int saveCoSlctSchema(Integer SpId, String SchemaName, String SchemaDesc, String dates, String SlctType); //添加宣言方案

    // 查询用户的宣言列表
    @Query(value = "select * from co_slct_schema where ptnr_id_slct_sp_id=:ptnrIdSlct", nativeQuery = true)
    public List<CoSlctSchema> selectSpID(@Param("ptnrIdSlct") Integer ptnrIdSlct);

}
