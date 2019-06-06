package com.eisoo.mapper;

import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.model.ValueDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentInfoMapper {

    int getStudentCount(BaseSearchDTO baseSearchDTO);

    List<ValueDTO> groupCollege(@Param("grade")String grade);

    List<ValueDTO> groupGrade(@Param("college")String college);
}
