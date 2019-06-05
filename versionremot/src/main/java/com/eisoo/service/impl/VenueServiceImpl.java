package com.eisoo.service.impl;

import cn.hutool.core.map.MapUtil;
import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.model.ValueDTO;
import com.eisoo.mapper.SportVenueMapper;
import com.eisoo.service.IVenueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class VenueServiceImpl implements IVenueService {

    @Autowired
    private SportVenueMapper sportVenueMapper;

    @Override
    public List<ValueDTO> queryHotVenue(BaseSearchDTO searchDTO) {
        List<ValueDTO> venueList = sportVenueMapper.queryHotVenue(searchDTO);
        int fieldNum = 0;
        for (ValueDTO valueDTO : venueList){
            if (valueDTO.getKey().startsWith("field")){
                fieldNum += valueDTO.getNums();
            }
        }
        ValueDTO valueDTO = new ValueDTO();
        valueDTO.setKey("field");
        valueDTO.setNums(fieldNum);
        venueList.add(valueDTO);
        return venueList;
    }

}
