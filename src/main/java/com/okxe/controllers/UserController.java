package com.okxe.controllers;
import java.util.List;

import com.okxe.dao.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;


@Controller
public class UserController {
    @Autowired
    UserDAO userDAO;

    @RequestMapping("/profile")
    public String getUserProfile(ModelMap model,
                               @RequestParam(value="userId", required=false) Integer
                                       userid) {
        if(userid == null){
            return "okxe/404";
        }
        else{
            model.addAttribute("user", userDAO.
                    getById(userid));
        }
        return "okxe/profile";
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
    @RequestMapping("/signup")
    public String signup()
    {
        return null;
    }
}
