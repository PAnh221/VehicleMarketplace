package com.test.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home/")
public class homeController {
    @RequestMapping("index")
    public String index(){
        return "home/index";
    }
    @RequestMapping("about")
    public String about(){
        return "home/about";
    }
    @RequestMapping("menu")
    public String menu(){
        return "layout";
    }
}
