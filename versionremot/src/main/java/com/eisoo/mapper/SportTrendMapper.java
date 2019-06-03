package com.eisoo.mapper;

import com.eisoo.model.VenueDTO;

import java.math.BigDecimal;
import java.util.List;

public interface SportTrendMapper {

    Double getHotNew(int radix, String months, String college, String grade);

    List<String> getDaysOrder(String months, String college, String grade);

    List<VenueDTO> getTrend(double radix, String months, String college, String grade);



}
