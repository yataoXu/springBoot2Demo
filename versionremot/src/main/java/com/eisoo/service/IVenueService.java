package com.eisoo.service;

import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.model.ValueDTO;

import java.util.List;

public interface IVenueService {

    List<ValueDTO> queryHotVenue(BaseSearchDTO searchDTO);

}
