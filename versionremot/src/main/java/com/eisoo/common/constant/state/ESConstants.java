package com.eisoo.common.constant.state;

public class ESConstants {

    public enum Venue{
        field("运动场"),
        volly("排球场"),
        pp("乒乓球馆"),
        exer("健身房"),
        swim("游泳馆");
        Venue(String descr){
            this.descr = descr;
        }
        private String descr;
    }
}
