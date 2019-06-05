package com.eisoo.service.impl;

import com.eisoo.DTO.BaseSearchDTO;
import com.eisoo.mapper.StudentInfoMapper;
import com.eisoo.model.ValueDTO;
import com.eisoo.service.IStudentInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentInfoServiceImpl implements IStudentInfoService {

    @Autowired
    StudentInfoMapper studentInfoMapper;

    @Override
    public int getStudentCount(BaseSearchDTO baseSearchDTO) {
        return studentInfoMapper.getStudentCount(baseSearchDTO);
    }

    @Override
    public List<ValueDTO> getCollege(String grade) {
        return null;
    }

    @Override
    public List<ValueDTO> getCollegemonth(String month, String grade) {
        return null;
    }


}
