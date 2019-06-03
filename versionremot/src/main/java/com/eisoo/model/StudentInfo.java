package com.eisoo.model;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;

@TableName(value = "es_student_info")
@Data
public class StudentInfo extends Model<StudentInfo> {

    private int id;
    private Long stdId;
    private String name;
    private String major;
    private String college;
    private String grade;
    private int gender;

    @Override
    protected Serializable pkVal() {
        return this.id;
    }
}
