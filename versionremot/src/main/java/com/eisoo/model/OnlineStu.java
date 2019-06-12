package com.eisoo.model;

import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

@Data
@TableName(value = "table_online_stu")
public class OnlineStu extends BaseModel {


    private String months;
    private String college;
    private String grade;
    private String major;
    private int stuNums;

}
