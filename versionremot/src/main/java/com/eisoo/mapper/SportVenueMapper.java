package com.eisoo.mapper;

import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.model.ValueDTO;

import java.util.List;

public interface SportVenueMapper {

    List<ValueDTO> queryHotVenue(BaseSearchDTO searchDTO);

}
