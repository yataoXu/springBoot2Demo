package com.eisoo.mapper;

import com.eisoo.model.OnlineStudyPropertion;
import com.eisoo.model.ValueDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OnlineStudyPropertionMapper {

    List<ValueDTO> gradeCondition(@Param("months") String months, @Param("college") String college);

    List<ValueDTO> collegeCondition(@Param("months") String months, @Param("grade") String grade);

    List<OnlineStudyPropertion> getStudyPropertion(@Param("months") String months, @Param("college") String college,@Param("major") String major,@Param("grade") String grade);
}
