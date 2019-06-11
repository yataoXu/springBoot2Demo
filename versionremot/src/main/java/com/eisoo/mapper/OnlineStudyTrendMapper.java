package com.eisoo.mapper;

import com.eisoo.model.ValueDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OnlineStudyTrendMapper {

    int onlineStudyCount(@Param("months") String months,@Param("college") String college, @Param("grade") String grade);

    List<ValueDTO> getTrend(@Param("months") String months, @Param("college") String college, @Param("grade") String grade);
}
