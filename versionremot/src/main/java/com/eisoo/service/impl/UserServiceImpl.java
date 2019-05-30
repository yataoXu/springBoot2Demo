package com.eisoo.service.impl;

import com.eisoo.mapper.UserMapper;
import com.eisoo.model.User;
import com.eisoo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User findUserByUsername(String username) {
        User user = userMapper.findUserByUsername(username);
        return user;
    }
}
