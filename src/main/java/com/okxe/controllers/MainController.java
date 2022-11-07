package com.okxe.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/okxe/home/")
public class MainController {
    @RequestMapping("index")
    public String index(){
        return "okxe/index";
    }
}
