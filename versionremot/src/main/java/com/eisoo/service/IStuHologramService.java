package com.eisoo.service;

import com.eisoo.DTO.BaseSearchDTO;

import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public interface IStuHologramService {

    public Map<String, Object> getCollege(BaseSearchDTO baseSearchDTO);

    public Map<String, Object> getDura(BaseSearchDTO baseSearchDTO);

    public Map<String,Integer> getPortrait(BaseSearchDTO baseSearchDTO);

    public Map<String, Object> getGrade(BaseSearchDTO baseSearchDTO);

    public List<Map<String, AtomicInteger>> getHotBook(BaseSearchDTO baseSearchDTO);

}
