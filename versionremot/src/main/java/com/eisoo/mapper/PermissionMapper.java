package com.eisoo.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.eisoo.model.Permission;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PermissionMapper  extends BaseMapper<Permission> {

    /**
     * 根据角色id查找权限
     * @param roleId
     * @return
     */
    List<Permission> findPermissionByRoleId(@Param("roleId") long roleId);
}