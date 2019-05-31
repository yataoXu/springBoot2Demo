package com.eisoo.service;

import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.DTO.venueDTO;

import java.util.List;

public interface IVenueService {

    List<venueDTO> queryHotVenue(BaseSearchDTO searchDTO);

}
