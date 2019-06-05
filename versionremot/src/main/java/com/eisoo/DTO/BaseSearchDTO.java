package com.eisoo.DTO;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

import javax.validation.constraints.NotEmpty;
import java.io.Serializable;


@Data
public class BaseSearchDTO implements Serializable {

    @NotEmpty(message = "month 不能为空")
    @JSONField(format = "yyyy-MM")
    private String months;
    private String college;
    private String major;
    private String grade;
    @NotEmpty(message = "cat不能为空")
    private String cat;
    private int page = 1;

}
