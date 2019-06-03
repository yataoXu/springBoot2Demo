package com.eisoo.model;

import com.baomidou.mybatisplus.activerecord.Model;
import lombok.Data;

import java.io.Serializable;

@Data
public class SportTrend extends Model<SportTrend> {
      private String days;
      private String college;
      private String major;
      private String grade;
      private int counts;

    @Override
    protected Serializable pkVal() {
        return null;
    }
}
