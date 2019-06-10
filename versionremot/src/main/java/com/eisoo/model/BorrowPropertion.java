package com.eisoo.model;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName(value = "es_borrow_propertion")
public class BorrowPropertion extends Model<BorrowPropertion> {
    private String months;
    private String college;
    private String grade;
    private String major;
    private String counts;


    @Override
    protected Serializable pkVal() {
        return null;
    }
}
