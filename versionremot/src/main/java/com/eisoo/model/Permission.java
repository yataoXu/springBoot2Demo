package com.eisoo.model;

import com.baomidou.mybatisplus.activerecord.Model;
import lombok.Data;

import java.io.Serializable;

@Data
public class Permission extends Model<Permission> {
    private Long id;
    private String name;
    private String permission;
    private String url;
    private String description;

    @Override
    protected Serializable pkVal() {
        return this.id;
    }
}
