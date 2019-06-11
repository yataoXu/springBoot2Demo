package com.eisoo.mapper;

import com.eisoo.model.StudyProtrait;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudyProtraitMapper {

    List<StudyProtrait> getPortrait( @Param("months") String months, @Param("college") String college, @Param("grade") String grade);

}
