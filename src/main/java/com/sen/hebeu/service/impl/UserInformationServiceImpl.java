package com.sen.hebeu.service.impl;

import com.sen.hebeu.mapper.TbUserInformationMapper;
import com.sen.hebeu.pojo.TbUserInformation;
import com.sen.hebeu.service.UserInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserInformationServiceImpl implements UserInformationService {


    @Autowired
    private TbUserInformationMapper userInformationMapper;

    /**
     * 通过用户id获取用户详细信息
     *
     * @param id
     * @return TbUserInformation
     */
    @Override
    public TbUserInformation getUserInformationById(Integer id) {
        TbUserInformation tbUserInformation = userInformationMapper.selectByPrimaryKey(id);
        return tbUserInformation;
    }
}
