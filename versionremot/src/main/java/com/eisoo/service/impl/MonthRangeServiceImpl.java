package com.eisoo.service.impl;

import com.eisoo.mapper.MonthRangeMapper;
import com.eisoo.model.MonthRange;
import com.eisoo.service.IMonthRangeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MonthRangeServiceImpl implements IMonthRangeService {

    @Autowired
    private MonthRangeMapper monthRangeMapper;

    public MonthRange getMonthRangeByCat(String cat){

        MonthRange monthRange = monthRangeMapper.queryMonthRangeByCat(cat);

        return monthRange;
    }
}
