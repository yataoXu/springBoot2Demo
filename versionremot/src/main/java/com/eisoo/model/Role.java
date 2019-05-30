package com.eisoo.model;

import com.baomidou.mybatisplus.activerecord.Model;
import lombok.Data;

import java.io.Serializable;

@Data
public class Role extends Model<Role> {
    private Long id;
    private String name;
    private String description;

    @Override
    protected Serializable pkVal() {
        return this.id;
    }
}