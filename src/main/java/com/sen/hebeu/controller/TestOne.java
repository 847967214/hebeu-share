package com.sen.hebeu.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestOne {


    @RequestMapping("/hello")
    @ResponseBody
    public String helloword(){
       // loginService.getLoginOpenId("1111");
        return "hello world";
    }

}
