package com.sen.hebeu.controller;

import com.sen.hebeu.pojo.TbUserInformation;
import com.sen.hebeu.service.UserInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserInformationController {

    @Autowired
    private UserInformationService userInformationService;

    @RequestMapping("/user/{id}")
    @ResponseBody
    public TbUserInformation getInformation(@PathVariable("id") Integer id){
        TbUserInformation userInformationById = userInformationService.getUserInformationById(id);
        System.out.println(userInformationById.getLabel());
        return userInformationById;
    }


}
