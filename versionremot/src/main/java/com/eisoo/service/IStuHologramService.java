package com.eisoo.service;

import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.model.SportPortrait;
import com.eisoo.model.ValueDTO;

import java.util.List;
import java.util.Map;

public interface IStuHologramService {

    public Map<String, Object> getCollege(BaseSearchDTO baseSearchDTO);

    public Map<String, Object> getDura(BaseSearchDTO baseSearchDTO);

    public List<SportPortrait> getPortrait(BaseSearchDTO baseSearchDTO);


}
