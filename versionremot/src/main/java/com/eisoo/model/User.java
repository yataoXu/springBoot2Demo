package com.eisoo.model;

import com.baomidou.mybatisplus.activerecord.Model;
import lombok.Data;

import java.io.Serializable;

@Data
public class User extends Model<User> {
    private Long id;

    /**
     * 用户名
     */
    private String userName;
    /**
     * 登录密码
     */
    private String password;
    /**
     * 盐，用于密码加密
     */
    private String salt;
    /**
     * 用户状态，1：可用，0：不可用
     */
    private Integer state;
    /**
     * 描述
     */
    private String description;

    /**
     * 密码盐.
     * @return
     */
    public String getCredentialsSalt(){

        return this.userName+this.salt;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }
}
