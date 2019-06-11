package com.eisoo.model;

import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

@Data
@TableName(value = "table_study_lounge")
public class StudyLounge extends BaseModel {
    private String months;
    private String college;
    private String major;
    private String grade;
    private String lounge;
    private String counts;
}
