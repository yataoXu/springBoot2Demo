package com.eisoo.mapper;

import com.eisoo.model.Onlinetrend;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OnlinetrendMapper {

    // 学习趋势
    List<Onlinetrend> studyTrend(@Param("months") String months, @Param("college") String college,@Param("major")String major, @Param("grade") String grade);
    // 学习热度
    List<Onlinetrend> studyHot(@Param("months") String months, @Param("college") String college,@Param("major")String major, @Param("grade") String grade);

}
