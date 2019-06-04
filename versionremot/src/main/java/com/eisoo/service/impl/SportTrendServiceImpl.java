package com.eisoo.service.impl;

import cn.hutool.core.date.DateField;
import cn.hutool.core.date.DateTime;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.map.MapUtil;
import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.model.ValueDTO;
import com.eisoo.mapper.SportPropertionMapper;
import com.eisoo.mapper.SportTrendMapper;
import com.eisoo.mapper.StudentInfoMapper;
import com.eisoo.service.ISportTrendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service
public class SportTrendServiceImpl implements ISportTrendService {

    @Autowired
    SportTrendMapper sportTrendMapper;

    @Autowired
    private SportPropertionMapper sportPropertionMapper;
    @Autowired
    private StudentInfoMapper studentInfoMapper;

    @Override
    public Map<String,Object> getHotNew(BaseSearchDTO baseSearchDTO) {

        Map<String,Object> map = MapUtil.newHashMap();

        // 获得热力图
        Integer recent = sportPropertionMapper.getHotSpot(baseSearchDTO.getMonths(),baseSearchDTO.getCollege(),baseSearchDTO.getGrade());

        DateTime parse = DateUtil.parse(baseSearchDTO.getMonths() + "-01").offset(DateField.MONTH, -1);
        int year = parse.year();
        int month = parse.monthStartFromOne();
        StringBuilder sb = new StringBuilder();
        String lastMonth = sb.append(year).append("-").append(month).toString();
        //获得热力图 last Month
        Integer lastTwo = sportPropertionMapper.getHotSpot(lastMonth,baseSearchDTO.getCollege(),baseSearchDTO.getGrade());

        int radix = studentInfoMapper.getStudentCount(baseSearchDTO);
        Double hotNew = sportTrendMapper.getHotNew(radix, baseSearchDTO.getMonths(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());


        String hotRadix= "低";
        if (hotNew >= 0.7) {
            hotRadix = "高";
        } else if (hotNew > 0.3) {
            hotRadix = "中";
        } else {
            hotRadix = "低";
        }

        List<String> daysOrder = sportTrendMapper.getDaysOrder(baseSearchDTO.getMonths(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());
        List<ValueDTO> trend = sportTrendMapper.getTrend(radix / 3.5, baseSearchDTO.getMonths(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());

        map.put("recent",recent);
        map.put("lastTwo",lastTwo);
        map.put("radix",radix);
        map.put("hot",hotRadix);
        map.put("daysOrder",daysOrder);
        map.put("trend",trend);
        return map;
    }
}
