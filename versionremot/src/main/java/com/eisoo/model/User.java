package com.eisoo.model;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;

@TableName(value = "es_user")
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

    private String apiKey;

    @Override
    protected Serializable pkVal() {
        return this.id;
    }
}
