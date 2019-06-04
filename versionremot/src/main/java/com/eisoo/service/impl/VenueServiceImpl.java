package com.eisoo.service.impl;

import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.model.ValueDTO;
import com.eisoo.mapper.SportVenueMapper;
import com.eisoo.service.IVenueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VenueServiceImpl implements IVenueService {

    @Autowired
    private SportVenueMapper sportVenueMapper;

    @Override
    public List<ValueDTO> queryHotVenue(BaseSearchDTO searchDTO) {
        List<ValueDTO> venueDTOS = sportVenueMapper.queryHotVenue(searchDTO);
        return venueDTOS;
    }
}
