package com.eisoo.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BorrowTrendMapper {

    List<String> getHotBook(@Param("months") String months, @Param("college") String college, @Param("grade") String grade);


}
