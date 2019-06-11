package com.eisoo.model;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName(value = "table_study_portrait")
public class StudyProtrait extends Model<StudyProtrait> {
    private String months;
    private String college;
    private String major;
    private int grade;
    private int loveBook;
    private int superScholar;
    private int badScholar;
    private int loveDorm;
    private int scoreUnbalance;
    private int scoreBalance;
    private int loveStudy;
    private int loveLiterature;
    private int lovePolitics;
    private int loveLaw;
    private int lovePhilosophy;
    private int loveSport;
    private int nightRunner;
    private int muke;
    private int postgraduate;
    private int search;

    @Override
    protected Serializable pkVal() {
        return null;
    }
}
