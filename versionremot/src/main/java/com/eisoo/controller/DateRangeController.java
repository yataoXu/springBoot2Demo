package com.eisoo.controller;

import com.eisoo.DTO.ResultDTO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController("dataRange")
public class DateRangeController {

    /**
     * 体育锻炼
     *
     * @return
     */
    @RequestMapping("/hotView")
    public ResultDTO hotView(){
        ResultDTO resultDTO = new ResultDTO();
        return resultDTO;
    }
}
