package com.eisoo.controller;


import cn.hutool.core.date.DateField;
import cn.hutool.core.date.DateTime;
import cn.hutool.core.date.DateUtil;
import com.alibaba.fastjson.JSON;
import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.DTO.ResultDTO;
import com.eisoo.common.core.exception.BusinessException;
import com.eisoo.common.util.ESDateUtils;
import com.eisoo.common.util.ValidatorUtils;
import com.eisoo.mapper.BorrowTrendMapper;
import com.eisoo.model.MonthRange;
import com.eisoo.model.ValueDTO;
import com.eisoo.service.*;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@RestController
@RequestMapping("/stuHologram")
public class StuHologramContrller {

    @Autowired
    IMonthRangeService monthRangeService;

    @Autowired
    IVenueService venueService;
    @Autowired
    ISportPropertionService sportPropertionService;

    @Autowired
    ISportTrendService sportTrendService;

    @Autowired
    IStuHologramService stuHologramService;

    @Autowired
    BorrowTrendMapper borrowTrendMapper;

    /**
     * 自主学习
     *
     * @return
     */
    @RequestMapping("/autoStudy")
    public ResultDTO AutoStudy(BaseSearchDTO baseSearchDTO) {

        log.info("登录参数:" + JSON.toJSONString(baseSearchDTO));
        ResultDTO resultDTO = new ResultDTO();
        Map<String, Object> map = new HashMap<>();

        if (StringUtils.isBlank(baseSearchDTO.getType())) {
            resultDTO.setCode(ResultDTO.ERROR_CODE);
            resultDTO.setMsg("请求参数有误");
            return resultDTO;
        }

        MonthRange monthRange = monthRangeService.getMonthRangeByCat(baseSearchDTO.getCat());
        if (monthRange == null) {
            resultDTO.setCode(ResultDTO.ERROR_CODE);
            resultDTO.setMsg("暂无数据");
            return resultDTO;
        }

        if ("borrow".equals(baseSearchDTO.getType())) {

            HashMap<String, Map<String, BigDecimal>> hotBook = stuHologramService.getHotBook(baseSearchDTO);

            map.put("hotBook", hotBook);
            if (baseSearchDTO.getPage() == 1) {
                List<String> strings = borrowTrendMapper.daysOrder(baseSearchDTO.getMonths(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());

                String thisMonthHeatMap = borrowTrendMapper.getHeatMap(baseSearchDTO.getMonths(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());
                map.put("thisMonthHeatMap", thisMonthHeatMap);

                DateTime parse = DateUtil.parse(baseSearchDTO.getMonths() + "-01").offset(DateField.MONTH, -1);
                String lastMonthHeatMap = borrowTrendMapper.getHeatMap(parse.year() + "-" + parse.monthStartFromOne(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());
                map.put("lastMonthHeatMap", lastMonthHeatMap);

                List<ValueDTO> trend = borrowTrendMapper.getTrend(baseSearchDTO.getMonths(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());
                map.put("trend", trend);
            } else {
                Map<String, Integer> portrait = stuHologramService.getFormatPortrait(baseSearchDTO);
                HashMap<String, Map<String, Integer>> portraitMap = new HashMap<String, Map<String, Integer>>();
                portraitMap.put("student", portrait);
                // 实际条件下的学院、年级计数
                Map<String, Object> groupGradeOrCollegeCondition = stuHologramService.groupGradeOrCollegeCondition(baseSearchDTO);
                map.putAll(portraitMap);
                map.putAll(groupGradeOrCollegeCondition);
            }
        } else if ("study".equals(baseSearchDTO.getType())) {
            if (baseSearchDTO.getPage() == 1) {
                Map<String, Object> stringObjectMap = stuHologramService.extractStudy(baseSearchDTO);
                map.putAll(stringObjectMap);
            } else {
                Map<String, Object> stringObjectMap = stuHologramService.extractStudyCondition(baseSearchDTO);
                map.putAll(stringObjectMap);
            }
        } else if ("onlineStudy".equals(baseSearchDTO.getType())) {
            Map<String, Object> stringObjectMap = stuHologramService.extractOnlineStudy(baseSearchDTO);
            map.putAll(stringObjectMap);
        }

        resultDTO.setData(map);
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
            if (sportMonthRange == null) {
                resultDTO.setCode(ResultDTO.ERROR_CODE);
                resultDTO.setMsg("error");
                return resultDTO;
            }

            boolean between = ESDateUtils.isBetween(sportMonthRange.getMinMonth(), sportMonthRange.getMaxMonth(), baseSearchDTO.getMonths());
            if (!between) {
                resultDTO.setCode(ResultDTO.SUCCESS_CODE);
                resultDTO.setMsg("暂无数据");
                return resultDTO;
            }

            if (baseSearchDTO.getPage() == 1) {
                Map<String, Object> hotNew = sportTrendService.getHotNew(baseSearchDTO);
                resultDTO.setCode(ResultDTO.SUCCESS_CODE);
                resultDTO.setData(hotNew);
            } else {

                Map<String, Integer> portrait = stuHologramService.getPortrait(baseSearchDTO);
                Map<String, Object> college = stuHologramService.getCollege(baseSearchDTO);
                Map<String, Object> grade = stuHologramService.getGrade(baseSearchDTO);
                Map<String, Object> dura = stuHologramService.getDura(baseSearchDTO);
                if (grade.size() != 0 && grade != null) {
                    college.putAll(grade);
                }
                if (dura.size() != 0 && dura != null) {
                    college.putAll(dura);
                }
                college.put("student", portrait);
                resultDTO.setCode(ResultDTO.SUCCESS_CODE);
                resultDTO.setData(college);

            }

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
