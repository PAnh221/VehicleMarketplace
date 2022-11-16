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
import javax.servlet.http.HttpSession;


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
        return "okxe/login";
    }

    @RequestMapping("/logoutUser")
    public String logoutUser(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.setAttribute("auth", false);
        session.setAttribute("authUser", new User());
        return "okxe/login";
    }

    @RequestMapping("/loginUser")
    public String loginUser(ModelMap model, HttpServletRequest request) {
//        String id = request.getParameter("id");
//        String pw = request.getParameter("password");
//        if (id.equals("admin") && pw.equals("admin")) {
//            model.addAttribute("uid", id);
//            model.addAttribute("pwd", pw);
//            return "info";
//        }
//        model.addAttribute("thongbao", "Sai thong tin dang nhap");
//        return "trangchu";

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        List<User> userList = userDAO.getUserByUsername(username);

        // if username exists
        if (userList.size() != 0) {
            User user = userList.get(0);
            // if password is correct
            if (password.equals(user.getPassword())) {
                HttpSession session = request.getSession();
                session.setAttribute("auth", true);
                session.setAttribute("authUser", user);
                return "okxe/index";
            }
            else {
                model.addAttribute("error", "Sai mật khẩu, vui lòng nhập lại");
                return "okxe/login";
            }
        }
        else {
            model.addAttribute("error", "Sai mật khẩu, vui lòng nhập lại");
            return "okxe/login";
        }
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
        User user = new User(username.trim(), password.trim(), name, location.trim(), CID.trim(), 1);


        if (userDAO.getUserByUsername(user.getUsername()) != null) {
            model.addAttribute("error", "Username đã tồn tại, vui lòng nhập lại");
            return "okxe/register";
        }
        if (userDAO.getUserByCID(user.getCitizen_id()).isEmpty()) {
            model.addAttribute("error", "CCCD đã tồn tại, vui lòng nhập lại");
            return "okxe/register";
        }


        model.addAttribute("error", null);
        userDAO.insert(user);
        return "okxe/login";
    }
}
