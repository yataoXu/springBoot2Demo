package com.eisoo.mapper;

import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.model.ValueDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentInfoMapper {

    int getStudentCount(BaseSearchDTO baseSearchDTO);

    List<ValueDTO> getCollege(@Param("grade")String grade);

    List<ValueDTO> getGrade(@Param("months")String months,@Param("grade")String grade);
}
