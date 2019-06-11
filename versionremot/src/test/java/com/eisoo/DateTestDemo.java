package com.eisoo;


import java.math.BigDecimal;
import java.math.RoundingMode;

public class DateTestDemo {
    public static void main(String[] args) {
        System.out.println(linkCounts(550,0));


    }
    private static String linkCounts(int last, int recent){
        BigDecimal recentBig = new BigDecimal(recent);
        BigDecimal lastBig = new BigDecimal(last);
        String linkCounts = recentBig.subtract(lastBig).divide(lastBig, 3, RoundingMode.HALF_UP).multiply(new BigDecimal(100)).setScale(1, RoundingMode.HALF_UP).toString();
        return  linkCounts+"%";
    }
}
