package com.mj.spring.model.mb.dao.usercontroldao;

import com.mj.spring.model.mb.vo.CoComUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by mingwang on 2017/7/28.
 */

@Repository
public interface EnterUserDao extends JpaRepository<CoComUser, Integer> {
    @Query(value = "select * from co_com_user cc  join co_ptnr_inf cp on cc.user_id= cp.co_com_user_user_id  where cc.user_name=:userName and cc.user_pwd= :psword", nativeQuery = true)
//    @Query(value = "select * from co_com_user where user_name=:userName and user_pwd= :psword", nativeQuery = true)
    public CoComUser findName(@Param("userName") String userName, @Param("psword") String psword); //查询所有的用户

    @Modifying
    @Query(value = "update co_com_user set user_pwd= :psword where user_id=:userId", nativeQuery = true)
    public int coComUserUpdate(@Param("psword") String psword, @Param("userId") Integer userId);//修改密码

    @Modifying
    @Query(value = "insert into co_com_user(user_name,user_pwd,email,status) values('cac','123','543393735@qq.com','Y')", nativeQuery = true)
    public int testInsert();
}
