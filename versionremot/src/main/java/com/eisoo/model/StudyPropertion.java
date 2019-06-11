package com.eisoo.model;

import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;


@Data
@TableName(value = "table_study_propertion")
public class StudyPropertion extends BaseModel {
    private String months;
    private String college;
    private String major;
    private String grade;
    private String counts;

}
