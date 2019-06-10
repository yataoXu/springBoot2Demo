package com.eisoo.mapper;

import com.eisoo.model.ValueDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudyTrendMapper {

    List<ValueDTO> getTrend(@Param("months") String month);

}
