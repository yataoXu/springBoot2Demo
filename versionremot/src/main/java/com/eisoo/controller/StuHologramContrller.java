package com.eisoo.controller;

import com.eisoo.DTO.ResultDTO;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("/stuHologram")
public class StuHologramContrller {

    /**
     *  自主学习
     *
     * @return
     */
    @RequestMapping("/autoStudy")
    public ResultDTO AutoStudy(){
        ResultDTO resultDTO = new ResultDTO();
        return resultDTO;
    }

    /**
     * 体育锻炼
     *
     * @return
     */
    @RequestMapping("/sports")
    public ResultDTO sports(){
        ResultDTO resultDTO = new ResultDTO();
        return resultDTO;
    }

    /**
     * 生活起居
     *
     * @return
     */
    @RequestMapping("/employment")
    public ResultDTO employment(){
        ResultDTO resultDTO = new ResultDTO();
        return resultDTO;
    }

    /**
     * 性格爱好
     *
     * @return
     */
    @RequestMapping("/behavior")
    public ResultDTO behavior(){
        ResultDTO resultDTO = new ResultDTO();
        return resultDTO;
    }

    /**
     * 心理分析
     *
     * @return
     */
    @RequestMapping("/mental")
    public ResultDTO mental(){
        ResultDTO resultDTO = new ResultDTO();
        return resultDTO;
    }
}
