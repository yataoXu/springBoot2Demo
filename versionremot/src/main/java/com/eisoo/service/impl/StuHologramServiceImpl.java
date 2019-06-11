package com.eisoo.service.impl;

import cn.hutool.core.map.MapUtil;
import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.common.constant.state.ESConstants;
import com.eisoo.common.core.exception.BusinessException;
import com.eisoo.common.util.ESDateUtils;
import com.eisoo.mapper.*;
import com.eisoo.model.SportPortrait;
import com.eisoo.model.StudyProtrait;
import com.eisoo.model.ValueDTO;
import com.eisoo.service.IStuHologramService;
import com.google.common.collect.Maps;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.*;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.stream.Collectors;

@Service
public class StuHologramServiceImpl implements IStuHologramService {

    @Autowired
    StudentInfoMapper studentInfoMapper;
    @Autowired
    SportPropertionMapper sportPropertionMapper;
    @Autowired
    SportPortraitMapper sportPortraitMapper;
    @Autowired
    SportDurationMapper sportDurationMapper;
    @Autowired
    BorrowTrendMapper borrowTrendMapper;
    @Autowired
    BorrowPropertionMapper borrowPropertionMapper;
    @Autowired
    StudyTrendMapper studyTrendMapper;
    @Autowired
    StudyPropertionMapper studyPropertionMapper;
    @Autowired
    StudyProtraitMapper studyProtraitMapper;
    @Autowired
    StudyLoungeMapper studyLoungeMapper;
    @Autowired
    OnlineStudyTrendMapper onlineStudyTrendMapper;


    /**
     * 学院排行
     *
     * @param baseSearchDTO
     * @return
     */
    @Override
    public Map<String, Object> getCollege(BaseSearchDTO baseSearchDTO) {

        Map<String, Object> map = MapUtil.newHashMap();

        List<ValueDTO> groupcollege = studentInfoMapper.groupCollege(baseSearchDTO.getGrade());

        List<ValueDTO> sortcollege = sportPropertionMapper.orderCollegeMonth(baseSearchDTO.getMonths(), baseSearchDTO.getGrade());

        map.put("groupcollege", groupcollege);
        map.put("sortcollege", sortcollege);

        return map;
    }

    /**
     * 年级排行
     *
     * @param baseSearchDTO
     * @return
     */
    public Map<String, Object> getGrade(BaseSearchDTO baseSearchDTO) {
        Map<String, Object> map = MapUtil.newHashMap();
        List<ValueDTO> groupGrade = studentInfoMapper.groupGrade(baseSearchDTO.getCollege());

        List<ValueDTO> orderGradeMonth = sportPropertionMapper.orderGradeMonth(baseSearchDTO.getMonths(), baseSearchDTO.getGrade());

        map.put("groupGrade", groupGrade);
        map.put("orderGradeMonth", orderGradeMonth);
        return map;
    }

    /**
     * 天数分布
     *
     * @param baseSearchDTO
     * @return
     */
    @Override
    public Map<String, Object> getDura(BaseSearchDTO baseSearchDTO) {

        Map<String, Object> map = MapUtil.newHashMap();
//        int maxDuration = sportDurationMapper.getMaxDuration(baseSearchDTO.getMonths(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());
        List<ValueDTO> sportsDay = sportDurationMapper.sportDurationTotal(baseSearchDTO.getMonths(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());
        map.put("sportsday", sportsDay);
        return map;

    }

    @Override
    public Map<String, Integer> getFormatPortrait(BaseSearchDTO baseSearchDTO) {
        Map<String, Integer> portrait = getPortrait(baseSearchDTO);
        Map<String, Integer> stringIntegerMap = formatMap(portrait);
        return stringIntegerMap;
    }

    @Override
    public Map<String, Integer> getPortrait(BaseSearchDTO baseSearchDTO) {

        int loveBookSum = 0;
        int superScholarSum = 0;
        int badScholarSum = 0;
        int loveDormSum = 0;
        int scoreUnbalanceSum = 0;
        int scoreBalanceSum = 0;
        int loveStudySum = 0;
        int loveLiteratureSum = 0;
        int lovePoliticsSum = 0;
        int loveLawSum = 0;
        int lovePhilosophySum = 0;
        int loveSportSum = 0;
        int nightRunnerSum = 0;

        List<SportPortrait> portrait = sportPortraitMapper.getPortrait(baseSearchDTO.getMonths(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());

        for (SportPortrait sportPortrait : portrait) {

            loveBookSum += sportPortrait.getLoveBook();
            superScholarSum += sportPortrait.getSuperScholar();
            badScholarSum += sportPortrait.getBadScholar();
            loveDormSum += sportPortrait.getLoveDorm();
            scoreUnbalanceSum += sportPortrait.getScoreUnbalance();
            scoreBalanceSum += sportPortrait.getScoreBalance();
            loveStudySum += sportPortrait.getLoveStudy();
            loveLiteratureSum += sportPortrait.getLoveLiterature();
            lovePoliticsSum += sportPortrait.getLovePolitics();
            loveLawSum += sportPortrait.getLoveLaw();
            lovePhilosophySum += sportPortrait.getLovePhilosophy();
            loveSportSum += sportPortrait.getLoveSport();
            nightRunnerSum += sportPortrait.getNightRunner();

        }

        Map<String, Integer> map = MapUtil.newHashMap();
        map.put(ESConstants.PortraitMap.love_book.getPortraitChinese(), loveBookSum);
        map.put(ESConstants.PortraitMap.super_scholar.getPortraitChinese(), superScholarSum);
        map.put(ESConstants.PortraitMap.bad_scholar.getPortraitChinese(), badScholarSum);
        map.put(ESConstants.PortraitMap.love_dorm.getPortraitChinese(), loveDormSum);
        map.put(ESConstants.PortraitMap.score_unbalance.getPortraitChinese(), scoreUnbalanceSum);
        map.put(ESConstants.PortraitMap.score_balance.getPortraitChinese(), scoreBalanceSum);
        map.put(ESConstants.PortraitMap.love_study.getPortraitChinese(), loveStudySum);
        map.put(ESConstants.PortraitMap.love_literature.getPortraitChinese(), loveLiteratureSum);
        map.put(ESConstants.PortraitMap.love_politics.getPortraitChinese(), lovePoliticsSum);
        map.put(ESConstants.PortraitMap.love_law.getPortraitChinese(), loveLawSum);
        map.put(ESConstants.PortraitMap.love_philosophy.getPortraitChinese(), lovePhilosophySum);
        map.put(ESConstants.PortraitMap.love_sport.getPortraitChinese(), loveSportSum);
        map.put(ESConstants.PortraitMap.night_runner.getPortraitChinese(), nightRunnerSum);

        return map;
    }

    @Override
    public Map<String, Integer> getStudyPortrait(BaseSearchDTO baseSearchDTO) {

        int loveBookSum = 0;
        int superScholarSum = 0;
        int badScholarSum = 0;
        int loveDormSum = 0;
        int scoreUnbalanceSum = 0;
        int scoreBalanceSum = 0;
        int loveStudySum = 0;
        int loveLiteratureSum = 0;
        int lovePoliticsSum = 0;
        int loveLawSum = 0;
        int lovePhilosophySum = 0;
        int loveSportSum = 0;
        int nightRunnerSum = 0;

        List<StudyProtrait> portraits = studyProtraitMapper.getPortrait(baseSearchDTO.getMonths(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());

        for (StudyProtrait portrait : portraits) {

            loveBookSum += portrait.getLoveBook();
            superScholarSum += portrait.getSuperScholar();
            badScholarSum += portrait.getBadScholar();
            loveDormSum += portrait.getLoveDorm();
            scoreUnbalanceSum += portrait.getScoreUnbalance();
            scoreBalanceSum += portrait.getScoreBalance();
            loveStudySum += portrait.getLoveStudy();
            loveLiteratureSum += portrait.getLoveLiterature();
            lovePoliticsSum += portrait.getLovePolitics();
            loveLawSum += portrait.getLoveLaw();
            lovePhilosophySum += portrait.getLovePhilosophy();
            loveSportSum += portrait.getLoveSport();
            nightRunnerSum += portrait.getNightRunner();

        }

        Map<String, Integer> map = MapUtil.newHashMap();
        map.put(ESConstants.PortraitMap.love_book.getPortraitChinese(), loveBookSum);
        map.put(ESConstants.PortraitMap.super_scholar.getPortraitChinese(), superScholarSum);
        map.put(ESConstants.PortraitMap.bad_scholar.getPortraitChinese(), badScholarSum);
        map.put(ESConstants.PortraitMap.love_dorm.getPortraitChinese(), loveDormSum);
        map.put(ESConstants.PortraitMap.score_unbalance.getPortraitChinese(), scoreUnbalanceSum);
        map.put(ESConstants.PortraitMap.score_balance.getPortraitChinese(), scoreBalanceSum);
        map.put(ESConstants.PortraitMap.love_study.getPortraitChinese(), loveStudySum);
        map.put(ESConstants.PortraitMap.love_literature.getPortraitChinese(), loveLiteratureSum);
        map.put(ESConstants.PortraitMap.love_politics.getPortraitChinese(), lovePoliticsSum);
        map.put(ESConstants.PortraitMap.love_law.getPortraitChinese(), loveLawSum);
        map.put(ESConstants.PortraitMap.love_philosophy.getPortraitChinese(), lovePhilosophySum);
        map.put(ESConstants.PortraitMap.love_sport.getPortraitChinese(), loveSportSum);
        map.put(ESConstants.PortraitMap.night_runner.getPortraitChinese(), nightRunnerSum);

        return map;
    }

    public HashMap<String, Map<String, BigDecimal>> getHotBook(BaseSearchDTO baseSearchDTO) {

        List<Map<String, AtomicInteger>> list = new ArrayList<>();

        List<String> hotBook = borrowTrendMapper.getHotBook(baseSearchDTO.getMonths(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());

        Map<String, AtomicInteger> bookNameMap = Maps.newHashMap();
        Map<String, AtomicInteger> bookTypeMap = Maps.newHashMap();

        for (String books : hotBook) {
            String[] bookz = books.split("%%");
            for (String book : bookz) {

                String[] split1 = book.split("&&");
                statistics(bookNameMap, split1[0]);
                statistics(bookTypeMap, split1[1]);
            }
        }

        Map<String, BigDecimal> shortBookNameMap = sortMapByValue(bookNameMap);
        Map<String, BigDecimal> shortBookTypeMap = sortMapByValue(bookTypeMap);

        HashMap<String, Map<String, BigDecimal>> re = new HashMap<String, Map<String, BigDecimal>>();
        re.put("shortBookNameMap", shortBookNameMap);
        re.put("shortBookTypeMap", shortBookTypeMap);

        return re;
    }

    //Map 按value值从大到小排序，并取前10
    public Map<String, BigDecimal> sortMapByValue(Map<String, AtomicInteger> map) {

        Map<String, BigDecimal> sortedMap = new LinkedHashMap();
        List<Map.Entry<String, AtomicInteger>> lists = new ArrayList(map.entrySet());
        Collections.sort(lists, new Comparator<Map.Entry<String, AtomicInteger>>() {
            @Override
            public int compare(Map.Entry<String, AtomicInteger> o1, Map.Entry<String, AtomicInteger> o2) {
                int q1 = o1.getValue().intValue();
                int q2 = o2.getValue().intValue();
                int p = q2 - q1;
                if (p > 0) {
                    return 1;
                } else if (p == 0) {
                    return 0;
                } else
                    return -1;
            }
        });

        if (lists.size() >= 10) {

            for (Map.Entry<String, AtomicInteger> set : lists.subList(0, 10)) {
                BigDecimal bigDecimal = new BigDecimal(set.getValue().intValue());
                BigDecimal divide = bigDecimal.divide(new BigDecimal(1000)).setScale(2, RoundingMode.DOWN);
                sortedMap.put(set.getKey(), divide);
            }
        } else {
            for (Map.Entry<String, AtomicInteger> set : lists) {
                BigDecimal val = new BigDecimal(set.getValue().intValue());
                BigDecimal divides = val.divide(new BigDecimal(1000)).setScale(2, RoundingMode.DOWN);
                sortedMap.put(set.getKey(), divides);
            }
        }
        return sortedMap;
    }


    public void statistics(Map<String, AtomicInteger> map, String name) {
        if (map.containsKey(name)) {
            map.get(name).getAndIncrement();
        } else {
            AtomicInteger atomicInteger = new AtomicInteger(1);
            map.put(name, atomicInteger);
        }

    }

    /**
     * 学院&年级基数，学院&年级TOP以学院切片
     *
     * @param baseSearchDTO
     * @return
     */
    public Map<String, Object> groupGradeOrCollegeNOCondition(BaseSearchDTO baseSearchDTO) {
        Map<String, Object> map = new HashMap<>();
        List<ValueDTO> groupCollege = studentInfoMapper.groupCollege(baseSearchDTO.getGrade());
        List<ValueDTO> groupGrade = studentInfoMapper.groupGrade(baseSearchDTO.getGrade());
        map.put("groupCollege", groupCollege);
        map.put("groupGrade", groupGrade);
        return map;
    }

    /**
     * 实际条件下的学院、年级计数
     *
     * @param baseSearchDTO
     * @return
     */
    public Map<String, Object> groupGradeOrCollegeCondition(BaseSearchDTO baseSearchDTO) {
        Map<String, Object> map = new HashMap<>();

        List<ValueDTO> groupCollege = studentInfoMapper.groupCollege(baseSearchDTO.getGrade());
        List<ValueDTO> groupGrade = studentInfoMapper.groupGrade(baseSearchDTO.getGrade());

        Map<String, String> groupCollegeMap = listTomap(groupCollege);
        Map<String, String> groupGradeMap = listTomap(groupGrade);


        List<ValueDTO> groupGradeeCondition = borrowPropertionMapper.groupGrade(baseSearchDTO.getMonths(), baseSearchDTO.getGrade());
        List<ValueDTO> groupCollegeeCondition = borrowPropertionMapper.groupCollege(baseSearchDTO.getMonths(), baseSearchDTO.getGrade());

        Map<String, String> groupGradeeConditionMap = listTomap(groupGradeeCondition);
        Map<String, String> groupCollegeeConditionMap = listTomap(groupCollegeeCondition);


        Map<String, String> sortgrade = Maps.newHashMap();
        Map<String, String> sortcollege = Maps.newHashMap();

        getMap(groupCollegeMap, groupCollegeeConditionMap, sortgrade);
        getMap(groupGradeMap, groupGradeeConditionMap, sortcollege);

        map.put("sortgrade", sortcollege);
        map.put("sortcollege", sortgrade);
        return map;
    }

    public void getMap(Map<String, String> fomMap1, Map<String, String> formMap2, Map<String, String> toMap) {

        for (Map.Entry<String, String> m : formMap2.entrySet()) {

            String value = m.getValue();
            if (fomMap1.containsKey(m.getKey())) {
                String fromValue1 = fomMap1.get(m.getKey());
                if (StringUtils.isNotBlank(value) && StringUtils.isNotBlank(fromValue1)) {
                    BigDecimal value1 = new BigDecimal(fromValue1);
                    BigDecimal value2 = new BigDecimal(value);
                    BigDecimal toValue = value2.divide(value1, 3, RoundingMode.HALF_UP);
                    toMap.put(m.getKey(), toValue.toString());
                }
            }
        }
    }


    private Map<String, String> listTomap(List<ValueDTO> list) {
        Map<String, String> map = list.stream().collect(
                Collectors.toMap(ValueDTO::getKey, (p) -> p.getNums() + ""));
        return map;
    }

    @Override
    public Map<String, Object> extractStudy(BaseSearchDTO baseSearchDTO) {
        Map<String, Object> map = MapUtil.newHashMap();
        // 趋势图
        List<ValueDTO> trend = studyTrendMapper.getTrend(baseSearchDTO.getMonths());
        if (null == trend || trend.isEmpty()) {
            throw new BusinessException("msg err");
        }
        // 热度图
        // 得到学生总人数
        int studentCount = studentInfoMapper.getStudentCount(baseSearchDTO);

        int recentMonth = studyPropertionMapper.getStudyProperCount(baseSearchDTO.getMonths(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());


        String lastMonth = ESDateUtils.formatLastMonth(baseSearchDTO.getMonths());
        int lastTwoMonth = studyPropertionMapper.getStudyProperCount(lastMonth, baseSearchDTO.getCollege(), baseSearchDTO.getGrade());

        ValueDTO studyTrend = studyTrendMapper.getStudyTrend(studentCount / 3.0, baseSearchDTO.getCollege(), baseSearchDTO.getGrade(), baseSearchDTO.getMonths());
        String percent = fromalNum(recentMonth, lastTwoMonth);

        map.put("percent", percent);
        String hot = null;
        if (StringUtils.isNotBlank(studyTrend.getKey()) && studyTrend.getNums() != 0){
            hot = hotJugde(Integer.parseInt(studyTrend.getKey()), studyTrend.getNums());
        }
        map.put("hot",hot );
        map.put("trendChart", trend);
        return map;
    }

    private String hotJugde(int part, int all) {
        int num;
        num = (part * 10) / all;
        if (num < 3) {
            return "低";
        } else if (num < 7) {
            return "中";
        } else {
            return "高";
        }
    }

    private String fromalNum(int recentMonth, int lastTwoMonth) {
        BigDecimal recent = new BigDecimal(recentMonth);
        BigDecimal last = new BigDecimal(lastTwoMonth);
        BigDecimal fromalNum = recent.subtract(last).multiply(new BigDecimal(100)).divide(last, 1, RoundingMode.HALF_UP);
        return fromalNum.toString();
    }

    @Override
    public Map<String, Object> extractStudyCondition(BaseSearchDTO baseSearchDTO) {
        Map<String, Object> map = MapUtil.newHashMap();

        // 地点
        List<ValueDTO> lounge = studyLoungeMapper.getLounge(baseSearchDTO.getMonths(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());
        Map<String, String> loungeMap = lounge.stream().collect(
                Collectors.toMap(ValueDTO::getKey, (p) -> new BigDecimal(p.getNums()).divide(new BigDecimal(1000), 3, RoundingMode.HALF_DOWN).toString()));


        // 画像
        Map<String, Integer> portrait = getStudyPortrait(baseSearchDTO);
        Map<String, Integer> portraitMap = formatMap(portrait);
        Map<String, Object> stringObjectMap = sortgradeAndCollege(baseSearchDTO);

        map.putAll(stringObjectMap);
        map.put("student", portraitMap);
        map.put("studyBuilding", loungeMap);

        return map;
    }


    public Map<String, Object> sortgradeAndCollege(BaseSearchDTO baseSearchDTO) {
        Map<String, Object> map = new HashMap<>();

        List<ValueDTO> groupCollege = studentInfoMapper.groupCollege(baseSearchDTO.getGrade());
        List<ValueDTO> groupGrade = studentInfoMapper.groupGrade(baseSearchDTO.getGrade());

        Map<String, String> groupCollegeMap = listTomap(groupCollege);
        Map<String, String> groupGradeMap = listTomap(groupGrade);

        List<ValueDTO> gradeCondition = studyPropertionMapper.gradeCondition(baseSearchDTO.getMonths(), baseSearchDTO.getGrade());
        List<ValueDTO> collegeCondition = studyPropertionMapper.collegeCondition(baseSearchDTO.getMonths(), baseSearchDTO.getGrade());

        Map<String, String> groupGradeConditionMap = listTomap(gradeCondition);
        Map<String, String> groupCollegeConditionMap = listTomap(collegeCondition);

        Map<String, String> sortgrade = Maps.newHashMap();
        Map<String, String> sortcollege = Maps.newHashMap();

        getMap(groupCollegeMap, groupCollegeConditionMap, sortcollege);
        getMap(groupGradeMap, groupGradeConditionMap, sortgrade);

        map.put("sortgrade", sortgrade);
        map.put("sortcollege", sortcollege);
        return map;

    }

    private Map<String, Integer> formatMap(Map<String, Integer> portrait) {
        if (portrait.containsKey("学科均衡") && portrait.containsKey("偏科")) {
            Integer k1 = portrait.get("学科均衡");
            Integer k2 = portrait.get("学科均衡");
            if (k1 != null && k2 != null) {
                if (k1 / (k1 + k2) >= 7) {
                    portrait.remove("学科均衡'");
                } else if (k1 / (k1 + k2) < 3) {
                    portrait.remove("'偏科''");
                }
            } else {
                portrait.remove("学科均衡'");
                portrait.remove("'偏科''");
            }
        }
        if (portrait.containsKey("寝室宅")) {
            portrait.remove("寝室宅");
        }
        return portrait;
    }


    @Override
    public Map<String, Object> extractOnlineStudy(BaseSearchDTO baseSearchDTO) {
        Map<String,Object> map = MapUtil.newHashMap();
        if (baseSearchDTO.getPage() == 1) {
            int recent = onlineStudyTrendMapper.onlineStudyCount(baseSearchDTO.getMonths(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());
            String lastMonth = ESDateUtils.formatLastMonth(baseSearchDTO.getMonths());
            int last = onlineStudyTrendMapper.onlineStudyCount(lastMonth, baseSearchDTO.getCollege(), baseSearchDTO.getGrade());

            // 趋势图
            List<ValueDTO> trend = onlineStudyTrendMapper.getTrend(baseSearchDTO.getMonths(), baseSearchDTO.getCollege(), baseSearchDTO.getGrade());

            // 得到学生数量
            int studentCount = studentInfoMapper.getStudentCount(baseSearchDTO);
            String hot = hotJugde(recent, studentCount);
            map.put("hot",hot);
            map.put("percent",linkCounts(last,recent));
            map.put("trendChart",linkCounts(last,recent));


        }
        return null;
    }
    private String linkCounts(int last, int recent){
        BigDecimal recentBig = new BigDecimal(recent);
        BigDecimal lastBig = new BigDecimal(last);
        String linkCounts = recentBig.subtract(lastBig).divide(lastBig, 3, RoundingMode.HALF_UP).multiply(new BigDecimal(100)).setScale(1, RoundingMode.HALF_UP).toString();
        return  linkCounts+"%";
    }
}
