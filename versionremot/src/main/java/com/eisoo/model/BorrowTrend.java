package com.eisoo.model;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@TableName(value = "es_borrow_trend")
public class BorrowTrend extends Model<BorrowTrend> {

    private Date days;
    private Long stdId;
    private String books;

    @Override
    protected Serializable pkVal() {
        return null;
    }
}
