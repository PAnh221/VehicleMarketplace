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
    public String getUserProfile(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("authUser");

        if(user == null){
            return "okxe/404";
        }
        else{
            model.addAttribute("user", user);
        }
        return "okxe/user-profile";
    }

    @RequestMapping("/updateUserProfile")
    public String updateUserProfile(ModelMap model, HttpServletRequest request) {
        // check if user logged in
        HttpSession session = request.getSession();
        User authUser = (User) session.getAttribute("authUser");
        if (authUser == null) {
            return "okxe/login";
        }

        int id = Integer.valueOf(request.getParameter("id"));
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String location = request.getParameter("location");
        String CID = request.getParameter("CID");

        User user = new User(id,null, null, phone, name, location, null, CID, 1);

        userDAO.updatePersonalInfo(user);
        model.addAttribute("user", user);
        model.addAttribute("error", "Changes saved");

        return "okxe/user-profile";
    }

    @RequestMapping("/changePassword")
    public String changePassword(ModelMap model, HttpServletRequest request) {


        // if not logged in
        HttpSession session = request.getSession();
        User authUser = (User) session.getAttribute("authUser");
        if (authUser == null) {
            return "okxe/login";
        }

        // get params
        int id = Integer.valueOf(request.getParameter("id"));
        String password = request.getParameter("password");
        String newPassword = request.getParameter("newPassword");
        String confirmNewPassword = request.getParameter("confirmNewPassword");

        // if password incorrect
        if (!authUser.getPassword().equals(password)) {
            model.addAttribute("user", authUser);
            model.addAttribute("error", "Incorrect password");
            return "okxe/user-profile";
        }

        // if comfirm password not valid
        if (!confirmNewPassword.equals(newPassword)) {
            model.addAttribute("user", authUser);
            model.addAttribute("error", "Confirm password not valid");
            return "okxe/user-profile";
        }

        User user = new User(id,null, newPassword, null, null, null, null, null, 1);
        userDAO.changePassword(user);
        model.addAttribute("error", "Password changed successfully");
        return "okxe/user-profile";
    }

    @RequestMapping("/login")
    public String login(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User authUser = (User) session.getAttribute("authUser");
        if (authUser == null) {
            return "okxe/login";
        }
        return "okxe/index";
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
                model.addAttribute("error", "Incorrect password");
                return "okxe/login";
            }
        }
        else {
            model.addAttribute("error", "Incorrect password");
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
        String CID = request.getParameter("citizenID");
        String password = request.getParameter("password");
        String confirmpassword = request.getParameter("confirmpassword");

        if (!confirmpassword.trim().equals(password.trim())) {
            model.addAttribute("error", "Confirm password not valid");
            return "okxe/register";
        }

        User user = new User(username.trim(), password.trim(), name, location.trim(), CID.trim(), 1);


        if (userDAO.getUserByUsername(user.getUsername()) != null) {
            model.addAttribute("error", "Username already exists");
            return "okxe/register";
        }
        if (userDAO.getUserByCID(user.getCitizen_id()).isEmpty()) {
            model.addAttribute("error", "Citizen ID already exists");
            return "okxe/register";
        }


        model.addAttribute("error", null);
        userDAO.insert(user);
        return "okxe/login";
    }
}
