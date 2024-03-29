package com.eisoo.mapper;

import com.eisoo.model.ValueDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudyLoungeMapper {

    List<ValueDTO> getLounge(@Param("months") String months, @Param("college") String college, @Param("grade") String grade);
}
