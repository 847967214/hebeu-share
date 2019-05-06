package com.sen.hebeu.service.impl;

import com.sen.hebeu.mapper.TbProfessionMapper;
import com.sen.hebeu.pojo.TbProfession;
import com.sen.hebeu.service.ProfessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProfessionServiceImpl implements ProfessionService {

    @Autowired
    private TbProfessionMapper professionMapper;

    /**
     * 通过用户id获取用户专业
     *
     * @param id
     * @return String ProfessionName
     */
    @Override
    public String getProfessionById(Integer id) {

        TbProfession tbProfession = professionMapper.selectByPrimaryKey(id);
        String professionName = tbProfession.getProfessionName();
        return professionName;
    }
}
