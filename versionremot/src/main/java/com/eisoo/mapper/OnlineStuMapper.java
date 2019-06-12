package com.eisoo.mapper;

import com.eisoo.model.OnlineStu;
import com.eisoo.model.ValueDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OnlineStuMapper {

    List<OnlineStu> getStudyPercent(@Param("months") String months, @Param("college") String college, @Param("major") String major, @Param("grade") String grade);

    List<ValueDTO> gradeCondition(@Param("months")String months, @Param("grade") String grade);

    List<ValueDTO> collegeCondition(@Param("months")String months, @Param("college") String grade);
}
