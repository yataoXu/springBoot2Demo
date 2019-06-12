package com.eisoo.mapper;

import com.eisoo.model.Protrait;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OnlineStudyPortraitMapper  {

    List<Protrait> getPortrait(@Param("months") String months, @Param("college") String college, @Param("grade") String grade);

}
