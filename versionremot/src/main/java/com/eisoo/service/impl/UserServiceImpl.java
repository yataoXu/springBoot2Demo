package com.eisoo.service.impl;

import com.eisoo.common.core.exception.BusinessException;
import com.eisoo.common.util.MD5;
import com.eisoo.common.util.Pbkdf2Sha256;
import com.eisoo.mapper.UserMapper;
import com.eisoo.model.User;
import com.eisoo.service.IUserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User checkExistByUserName(String userName) {
        User user = userMapper.selectByUserName(userName);
        if (user == null) {
            throw new BusinessException("username.not.exist");
        }
        return user;
    }

    @Override
    public void checkLoginPassword(String inputPassword, String loginPassword) {
        if (!Pbkdf2Sha256.verification(inputPassword,loginPassword)){
            throw new BusinessException("password.error");
        }
    }

    //生成登录密码
    public String genLoginPassword(String password, String salt) {
        password = StringUtils.upperCase(password);
        salt = StringUtils.upperCase(salt);
        if (salt.length() < 10)
            return "";
        return MD5.MD5Encode(password + salt.substring(4, 10)).toUpperCase();
    }
}
