package com.sen.hebeu.service.impl;

import com.sen.hebeu.mapper.TbAcademyMapper;
import com.sen.hebeu.pojo.TbAcademy;
import com.sen.hebeu.service.AcademyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class AcademyServiceImpl implements AcademyService {

    @Autowired
    private TbAcademyMapper tbAcademyMapper;

    /**
     * 通过用户id获取学院名称
     *
     * @param id
     * @return academyName
     */
    @Override
    public String getAcademyById(Integer id) {
        TbAcademy tbAcademy = tbAcademyMapper.selectByPrimaryKey(id);
        String academyName = tbAcademy.getAcademyName();
        return academyName;
    }
}
