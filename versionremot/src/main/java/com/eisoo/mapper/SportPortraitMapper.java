package com.eisoo.mapper;

import com.eisoo.model.SportPortrait;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SportPortraitMapper {

    List<SportPortrait> getPortrait(@Param("params") String params, @Param("months") String months, @Param("college") String college, @Param("grade") String grade);
}
