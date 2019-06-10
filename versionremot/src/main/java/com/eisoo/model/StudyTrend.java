package com.eisoo.model;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName(value = "table_study_trend")
public class StudyTrend extends Model<StudyTrend> {
    private Integer id;
    private String days;
    private String college;
    private String grade;
    private String major;
    private Integer counts;


    @Override
    protected Serializable pkVal() {
        return null;
    }
}
