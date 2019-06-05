package com.eisoo.model;


import com.baomidou.mybatisplus.activerecord.Model;
import lombok.Data;

import java.io.Serializable;

@Data
public class PortraitMap extends Model<PortraitMap> {
    private String id;
    private String portrait_english;
    private String portrait_chinese;
    private String description;

    @Override
    protected Serializable pkVal() {
        return this.id;
    }
}
