package com.eisoo.mapper;

import com.eisoo.model.ValueDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BorrowPropertionMapper {

    List<ValueDTO> groupCollege(@Param("months")String months,@Param("grade")String grade);

    List<ValueDTO> groupGrade(@Param("months")String months,@Param("college")String college);

}
