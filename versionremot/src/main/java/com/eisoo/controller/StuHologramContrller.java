package com.eisoo.controller;

import com.alibaba.fastjson.JSON;
import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.DTO.ResultDTO;
import com.eisoo.DTO.venueDTO;
import com.eisoo.common.core.exception.BusinessException;

import com.eisoo.common.util.ESDateUtils;
import com.eisoo.common.util.ValidatorUtils;
import com.eisoo.model.MonthRange;
import com.eisoo.service.IMonthRangeService;
import com.eisoo.service.IVenueService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/stuHologram")
public class StuHologramContrller {

    @Autowired
    IMonthRangeService monthRangeService;

    @Autowired
    IVenueService venueService;

    /**
     * 自主学习
     *
     * @return
     */
    @RequestMapping("/autoStudy")
    public ResultDTO AutoStudy() {
        ResultDTO resultDTO = new ResultDTO();
        return resultDTO;
    }

    /**
     * 体育锻炼
     *
     * @return
     */
    @RequestMapping("/sports")
    public ResultDTO sports(BaseSearchDTO baseSearchDTO) {
        log.info("登录参数:" + JSON.toJSONString(baseSearchDTO));
        ResultDTO resultDTO = new ResultDTO();
        try {
            ValidatorUtils.validate(baseSearchDTO);
            MonthRange sportMonthRange = monthRangeService.getMonthRangeByCat(baseSearchDTO.getCat());
            if (sportMonthRange == null){
                resultDTO.setCode(ResultDTO.ERROR_CODE);
                resultDTO.setMsg("error");
                return resultDTO;
            }

            boolean between = ESDateUtils.isBetween(sportMonthRange.getMinMonth(), sportMonthRange.getMaxMonth(), baseSearchDTO.getMonth());
            if (!between){
                resultDTO.setCode(ResultDTO.SUCCESS_CODE);
                resultDTO.setMsg("暂无数据");
                return resultDTO;
            }
            //获取热力图
            List<venueDTO> venueDTOS = venueService.queryHotVenue(baseSearchDTO);


        } catch (Exception e) {
            resultDTO.setCode(ResultDTO.ERROR_CODE);
            resultDTO.setMsg("error");
            throw new BusinessException(e.getMessage());
        }

        return resultDTO;
    }

    /**
     * 生活起居
     *
     * @return
     */
    @RequestMapping("/employment")
    public ResultDTO employment() {
        ResultDTO resultDTO = new ResultDTO();
        return resultDTO;
    }

    /**
     * 性格爱好
     *
     * @return
     */
    @RequestMapping("/behavior")
    public ResultDTO behavior() {
        ResultDTO resultDTO = new ResultDTO();
        return resultDTO;
    }

    /**
     * 心理分析
     *
     * @return
     */
    @RequestMapping("/mental")
    public ResultDTO mental() {
        ResultDTO resultDTO = new ResultDTO();
        return resultDTO;
    }
}
