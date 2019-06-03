package com.eisoo.mapper;

import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.model.VenueDTO;

import java.util.List;

public interface SportVenueMapper {

    List<VenueDTO> queryHotVenue(BaseSearchDTO searchDTO);

}
