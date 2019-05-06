package com.sen.hebeu.service;

import com.sen.hebeu.pojo.TbUserInformation;

public interface UserInformationService {

    /**
     * 通过用户id获取用户详细信息
     * @param id
     * @return TbUserInformation
     */
    TbUserInformation getUserInformationById(Integer id);

}
