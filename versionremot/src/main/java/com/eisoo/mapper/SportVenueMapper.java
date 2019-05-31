package com.eisoo.mapper;

import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.DTO.venueDTO;

import java.util.List;

public interface SportVenueMapper {

    List<venueDTO> queryHotVenue(BaseSearchDTO searchDTO);

}
