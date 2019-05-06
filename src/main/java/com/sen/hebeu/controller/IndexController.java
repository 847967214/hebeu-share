package com.sen.hebeu.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.sen.hebeu.pojo.TbUserInformation;
import com.sen.hebeu.service.AcademyService;
import com.sen.hebeu.service.ProfessionService;
import com.sen.hebeu.service.UserInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {


    @Autowired
    private UserInformationService userInformationService;
    @Autowired
    private AcademyService academyService;
    @Autowired
    private ProfessionService professionService;

    /**
     * 返回首页视图
     * @param model
     * @return
     */
    @RequestMapping("/")
//    @ResponseBody
    public String index(Model model){
        // loginService.getLoginOpenId("1111");
        TbUserInformation userInformationById = userInformationService.getUserInformationById(111);
        Integer academyId = userInformationById.getAcademyId();
        Integer professionId = userInformationById.getProfessionId();
        String academyName = academyService.getAcademyById(academyId);
        String professionName = professionService.getProfessionById(professionId);


        String label = userInformationById.getLabel();
        JSON json = JSONObject.parseArray(label);
        model.addAttribute("user",userInformationById);
        model.addAttribute("json",json);
        model.addAttribute("academyName",academyName);
        model.addAttribute("professionName",professionName);
        return "index";
    }
}
