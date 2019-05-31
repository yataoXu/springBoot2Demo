package com.eisoo.mapper;

import com.eisoo.model.MonthRange;
import org.apache.ibatis.annotations.Param;

public interface MonthRangeMapper {

    MonthRange queryMonthRangeByCat(@Param("cat") String cat);

}
