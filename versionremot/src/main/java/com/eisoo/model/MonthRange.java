package com.eisoo.model;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@TableName(value = "es_month_range")
@Data
public class MonthRange  extends Model<MonthRange> {
    private Long id;
    private String cat;
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    private Date minMonth;
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    private Date maxMonth;
    private int version;

    @Override
    protected Serializable pkVal() {
        return this.id;
    }
}
