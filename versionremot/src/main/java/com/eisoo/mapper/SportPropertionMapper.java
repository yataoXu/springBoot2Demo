package com.eisoo.mapper;

import com.eisoo.model.ValueDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SportPropertionMapper {

    Integer getHotSpot(@Param("months") String months, @Param("college") String college, @Param("grade") String grade);

    List<ValueDTO> orderCollegeMonth(@Param("months") String months, @Param("grade") String grade);

    List<ValueDTO> orderGradeMonth(@Param("months") String months, @Param("grade") String grade);
}
