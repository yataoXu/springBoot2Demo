package com.eisoo.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.eisoo.model.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleMapper extends BaseMapper<Role> {

    /**
     * 根据用户名查找其角色
     *
     * @param username
     * @return
     */
    List<Role> findRoleByUsername(@Param("username") String username);
}