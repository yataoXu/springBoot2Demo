package com.eisoo.service;

import com.eisoo.model.User;

/**
 *
 *  用户相关服务
 */
public interface IUserService {

    /**
     * 根据用户名获取用户
     * @param username
     * @return
     */
    User findUserByUsername(String username);

}
