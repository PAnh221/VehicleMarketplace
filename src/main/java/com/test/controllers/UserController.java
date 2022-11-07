package com.test.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {
    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String showForm() {
        return "trangchu";
    }

    @RequestMapping("/login")
    public String login(ModelMap model, HttpServletRequest request) {
        String id = request.getParameter("id");
        String pw = request.getParameter("password");
        if (id.equals("admin") && pw.equals("admin")) {
            model.addAttribute("uid", id);
            model.addAttribute("pwd", pw);
            return "info";
        }
        model.addAttribute("thongbao", "Sai thong tin dang nhap");
        return "trangchu";
    }
}
