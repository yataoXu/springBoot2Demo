package com.eisoo.service;

import com.eisoo.DTO.BaseSearchDTO;

import java.util.Map;


public interface ISportTrendService {

    Map<String,Object> getHotNew(BaseSearchDTO baseSearchDTO);

}
