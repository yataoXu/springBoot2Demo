package com.eisoo.model;

import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.util.Date;

@Data
@TableName(value = "table_onlineStudy_trend")
public class OnlineStudyTrend extends BaseModel {
    private Date days;
    private Long stdId;
    private String college;
    private String major;
    private String grade;
    private String urls;

}
