package com.eisoo.service.impl;

import cn.hutool.core.map.MapUtil;
import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.common.constant.state.ESConstants;
import com.eisoo.mapper.SportDurationMapper;
import com.eisoo.mapper.SportPortraitMapper;
import com.eisoo.mapper.SportPropertionMapper;
import com.eisoo.mapper.StudentInfoMapper;
import com.eisoo.model.SportPortrait;
import com.eisoo.model.ValueDTO;
import com.eisoo.service.IStuHologramService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class StuHologramServiceImpl implements IStuHologramService {

    @Autowired
    StudentInfoMapper studentInfoMapper;
    @Autowired
    SportPropertionMapper sportPropertionMapper;
    @Autowired
    SportPortraitMapper sportPortraitMapper;
    @Autowired
    SportDurationMapper sportDurationMapper;


    /**
     * 学院排行
     *
     * @param baseSearchDTO
     * @return
     */
    @Override
    public Map<String, Object> getCollege(BaseSearchDTO baseSearchDTO) {

        Map<String, Object> map = MapUtil.newHashMap();

        List<ValueDTO> collegeValue = studentInfoMapper.getCollege(baseSearchDTO.getGrade());

        List<ValueDTO> valueDTOS = sportPropertionMapper.orderCollegeMonth(baseSearchDTO.getMonths(), baseSearchDTO.getGrade());

        map.put("collegeValue", collegeValue);
        map.put("valueDTOS", valueDTOS);

        return map;
    }

    /**
     * 天数分布
     *
     * @param baseSearchDTO
     * @return
     */
    @Override
    public Map<String, Object> getDura(BaseSearchDTO baseSearchDTO) {

        Map<String, Object> map = MapUtil.newHashMap();
//        int maxDuration = sportDurationMapper.getMaxDuration(baseSearchDTO.getMonths(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());
        List<ValueDTO> valueDTOS = sportDurationMapper.sportDurationTotal(baseSearchDTO.getMonths(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());
        map.put("valueDTOS", valueDTOS);
        return map;

    }

    @Override
    public List<SportPortrait> getPortrait(BaseSearchDTO baseSearchDTO) {


        StringBuilder sb = new StringBuilder();
        for (ESConstants.PortraitMap portrait : ESConstants.PortraitMap.values()) {
            sb.append(portrait.name()).append(",");
        }

        String params = sb.deleteCharAt(sb.length() - 1).toString();
        List<SportPortrait> portrait = sportPortraitMapper.getPortrait(params, baseSearchDTO.getMonths(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());

        return portrait;
    }


}
