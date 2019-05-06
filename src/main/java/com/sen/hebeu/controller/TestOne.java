package com.sen.hebeu.controller;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.sen.hebeu.pojo.TbUserInformation;
import com.sen.hebeu.service.UserInformationService;
import org.apache.tomcat.util.json.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestOne {

    @Autowired
    private UserInformationService userInformationService;

    @RequestMapping("/hello")
//    @ResponseBody
    public String helloword(Model model){
       // loginService.getLoginOpenId("1111");
        TbUserInformation userInformationById = userInformationService.getUserInformationById(111);
        String label = userInformationById.getLabel();
        JSON json = JSONObject.parseArray(label);


        model.addAttribute("user",userInformationById);
        model.addAttribute("json",json);
        return "jsp/hello";
    }

}
