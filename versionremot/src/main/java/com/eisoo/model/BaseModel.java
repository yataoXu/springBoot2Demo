package com.eisoo.model;

import com.baomidou.mybatisplus.activerecord.Model;

import java.io.Serializable;

public abstract class BaseModel extends Model<BaseModel> {

    @Override
    protected Serializable pkVal() {
        return null;
    }
}
