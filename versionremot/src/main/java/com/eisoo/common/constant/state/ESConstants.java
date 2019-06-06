package com.eisoo.common.constant.state;


public class ESConstants {

    public enum Venue {
        field("运动场"),
        volly("排球场"),
        pp("乒乓球馆"),
        exer("健身房"),
        swim("游泳馆");

        Venue(String descr) {
            this.descr = descr;
        }

        private String descr;

        public String getDescr() {
            return descr;
        }

    }

    public enum PortraitMap{
        love_book("love_book", "借阅达人"),
        super_scholar("super_scholar", "学霸"),
        bad_scholar("bad_scholar", "学渣"),
        love_dorm("love_dorm", "寝室宅"),
        score_unbalance("score_unbalance", "偏科"),
        score_balance("score_balance", "学科均衡"),
        love_study("love_study", "自习达人"),
        love_literature("love_literature", "哲学爱好者"),
        love_politics("love_politics", "文学党"),
        love_law("'love_law", "法律爱好者"),
        love_philosophy("'love_philosophy", "政治爱好者"),
        love_sport("'love_sport", "爱运动"),
        night_runner("'night_runner", "夜跑党");
//        muke("'muke", "慕课党"),
//        postgraduate("'postgraduate", "考研党"),
//        search("'search", "文献查找频繁");

        PortraitMap(String portraitEnglish,String portraitChinese){
            this.portraitChinese = portraitChinese;
            this.portraitEnglish = portraitEnglish;
        }
        private String portraitEnglish;
        private String portraitChinese;

        public String getPortraitEnglish() {
            return portraitEnglish;
        }

        public void setPortraitEnglish(String portraitEnglish) {
            this.portraitEnglish = portraitEnglish;
        }

        public String getPortraitChinese() {
            return portraitChinese;
        }

        public void setPortraitChinese(String portraitChinese) {
            this.portraitChinese = portraitChinese;
        }
    }

}
