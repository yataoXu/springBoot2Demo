package com.eisoo.mapper;

import org.apache.ibatis.annotations.Param;

public interface SportPropertionMapper {

    Integer getHotSpot(@Param("months")String months, @Param("college")String college, @Param("grade")String grade);
}
