package com.okxe.controllers;
import java.util.List;

import com.okxe.beans.User;
import com.okxe.dao.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping("/user/")
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
        return "okxe/register";
    }

    @RequestMapping("/createAccount")
    public String createAccount(ModelMap model, HttpServletRequest request)
    {
        String name = request.getParameter("name");
        String location = request.getParameter("location");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String CID = request.getParameter("citizenID");
        User user = new User(username, password, name, location, CID, 1);


        if (!userDAO.getUserByUsername(user.getUsername()).isEmpty()) {
            model.addAttribute("error", "Username đã tồn tại, vui lòng nhập lại");
            return "okxe/register";
        }
        if (!userDAO.getUserByCID(user.getCitizen_id()).isEmpty()) {
            model.addAttribute("error", "CCCD đã tồn tại, vui lòng nhập lại");
            return "okxe/register";
        }


        model.addAttribute("error", null);
        userDAO.insert(user);
        return "okxe/login";
    }
}
