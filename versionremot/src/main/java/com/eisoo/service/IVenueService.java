package com.eisoo.service;

import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.model.VenueDTO;

import java.util.List;

public interface IVenueService {

    List<VenueDTO> queryHotVenue(BaseSearchDTO searchDTO);

}
