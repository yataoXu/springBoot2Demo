package com.eisoo.mapper;

import com.eisoo.model.ValueDTO;
import org.apache.ibatis.annotations.Param;

import java.math.BigDecimal;
import java.util.List;

public interface SportTrendMapper {

    Double getHotNew(@Param("radix")double radix,@Param("months")String months, @Param("college")String college, @Param("grade")String grade);

    List<String> getDaysOrder(@Param("months")String months, @Param("college")String college, @Param("grade")String grade);

    List<ValueDTO> getTrend(@Param("radix")double radix,@Param("months")String months, @Param("college")String college, @Param("grade")String grade);



}
