package com.eisoo.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.eisoo.model.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper extends BaseMapper<User> {

    /**
     * 根据用户名获取用户
     *
     * @param userName
     * @return
     */
    User selectByUserName(@Param("userName") String userName);
}