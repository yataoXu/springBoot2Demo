package com.eisoo.service.impl;

import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.mapper.SportPropertionMapper;
import com.eisoo.service.ISportPropertionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SportPropertionServiceImpl implements ISportPropertionService {

    @Autowired
    private SportPropertionMapper sportPropertionMapper;

    @Override
    public Integer getHotSpot(BaseSearchDTO baseSearchDTO) {


        return sportPropertionMapper.getHotSpot(baseSearchDTO.getMonths(),baseSearchDTO.getCollege(),baseSearchDTO.getGrade());
    }
}
