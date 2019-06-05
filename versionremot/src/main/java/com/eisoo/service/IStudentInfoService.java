package com.eisoo.service;

import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.model.ValueDTO;

import java.util.List;

public interface IStudentInfoService {

    int getStudentCount(BaseSearchDTO baseSearchDTO);

    /**
     *  根据grade 分组统计
     * @param grade
     * @return
     */
    List<ValueDTO> getCollege(String grade);

    /**
     *  根据 month grade 分组统计
     *
     * @param month
     * @param grade
     * @return
     */
    List<ValueDTO> getCollegemonth(String month,String grade);
}
