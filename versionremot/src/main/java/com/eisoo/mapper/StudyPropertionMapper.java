package com.eisoo.mapper;


import com.eisoo.model.ValueDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudyPropertionMapper {

    int getStudyProperCount(@Param("months") String months, @Param("college") String college, @Param("grade") String grade);

    List<ValueDTO> gradeCondition(@Param("months") String months, @Param("college") String college);

    List<ValueDTO> collegeCondition(@Param("months") String months, @Param("grade") String grade);

}
