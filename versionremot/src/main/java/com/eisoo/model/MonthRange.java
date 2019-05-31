package com.eisoo.model;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

@TableName(value = "es_month_range")
@Data
public class MonthRange  extends Model<MonthRange> {
    private Long id;
    private String cat;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date minMonth;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date maxMonth;
    private int version;

    @Override
    protected Serializable pkVal() {
        return this.id;
    }
}
