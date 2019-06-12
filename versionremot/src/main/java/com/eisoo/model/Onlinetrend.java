package com.eisoo.model;

import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

@Data
@TableName(value = "table_online_trend")
public class Onlinetrend extends BaseModel{
    private String days;
    private String college;
    private String grade;
    private String major;
    private int stuNums;
}
