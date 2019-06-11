package com.eisoo.service;

import com.eisoo.DTO.BaseSearchDTO;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

public interface IStuHologramService {

    public Map<String, Object> getCollege(BaseSearchDTO baseSearchDTO);

    public Map<String, Object> getDura(BaseSearchDTO baseSearchDTO);

    public Map<String,Integer> getPortrait(BaseSearchDTO baseSearchDTO);

    public Map<String,Integer> getFormatPortrait(BaseSearchDTO baseSearchDTO);

    public Map<String,Integer> getStudyPortrait(BaseSearchDTO baseSearchDTO);

    public Map<String, Object> getGrade(BaseSearchDTO baseSearchDTO);

    public HashMap<String, Map<String, BigDecimal>> getHotBook(BaseSearchDTO baseSearchDTO);

    /**
     * 年级基数，年级TOP以学院切片
     * @param baseSearchDTO
     * @return
     */
    public Map<String,Object> groupGradeOrCollegeNOCondition(BaseSearchDTO baseSearchDTO);

    /**
     * 实际条件下的学院、年级计数
     * @param baseSearchDTO
     * @return
     */
    public Map<String,Object> groupGradeOrCollegeCondition(BaseSearchDTO baseSearchDTO);

    public Map<String,Object> extractStudy(BaseSearchDTO baseSearchDTO);

    public Map<String,Object> extractStudyCondition(BaseSearchDTO baseSearchDTO);

    public Map<String,Object> extractOnlineStudy(BaseSearchDTO baseSearchDTO);
}
