package com.eisoo.model;


import com.baomidou.mybatisplus.activerecord.Model;
import lombok.Data;

import java.io.Serializable;

@Data
public class SportDuration extends Model<SportDuration> {
    private String months;
    private String college;
    private String major;
    private String grade;
    private int duration;
    private int counts;

    @Override
    protected Serializable pkVal() {
        return null;
    }
}
