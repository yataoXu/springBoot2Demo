package com.eisoo.common.util;

import cn.hutool.core.date.DateUtil;

import java.util.Date;

public class ESDateUtils {

    /**
     * 判断日期是否在某个时间段内
     *
     * @param startDay 第一个时间点
     * @param endDay   第二个时间点
     * @return
     */
    public static boolean isBetween(Date startDay, Date endDay, String dateRange) {

        String dateStr = dateRange + "-01";
        Date date = DateUtil.parse(dateStr);
        if(date.compareTo(startDay) >= 0 &&
                date.compareTo(endDay) <= 0){
            return true;
        }
        return false;
    }

    public static void main(String[] args) {
        Date date1 = DateUtil.parseDate("2018-12-01");
        Date date2 = DateUtil.parseDate("2019-03-01");
        String dateRange = "2018-11";
        boolean sameDay = isBetween(date1, date2, dateRange);
        System.out.println(sameDay);


    }
}