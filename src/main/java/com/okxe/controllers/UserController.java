package com.okxe.controllers;
import java.security.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.okxe.beans.Bike;
import com.okxe.beans.Brand;
import com.okxe.beans.Type;
import com.okxe.beans.User;
import com.okxe.dao.BikeDAO;
import com.okxe.dao.BrandDAO;
import com.okxe.dao.TypeDAO;
import com.okxe.dao.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("okxe/user/")
public class UserController {
    @Autowired
    UserDAO userDAO;

    @Autowired
    BrandDAO brandDAO;

    @Autowired
    TypeDAO typeDAO;

    @Autowired
    BikeDAO bikeDAO;


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

    // add post page
    @RequestMapping("/addNewPost")
    public String addNewPost(ModelMap model, HttpServletRequest request) {
        // check if user logged in
        HttpSession session = request.getSession();
        User authUser = (User) session.getAttribute("authUser");
        if (authUser == null) {
            return "okxe/login";
        }

        List<Brand> brandList = brandDAO.getAll();
        List<Type> typeList = typeDAO.getAll();

        model.addAttribute("brandList", brandList);
        model.addAttribute("typeList", typeList);
        model.addAttribute("bike", new Bike());
        model.addAttribute("action", "add");

        return "okxe/ad-listing";
    }

    // insert new post
    @RequestMapping("/addPost")
    public String addPost(ModelMap model, HttpServletRequest request) {
        // check if user logged in
        HttpSession session = request.getSession();
        User authUser = (User) session.getAttribute("authUser");
        if (authUser == null) {
            return "okxe/login";
        }

        // get data
        int user_id = authUser.getUser_id();
        String name = request.getParameter("name");
        Long price = Long.valueOf(request.getParameter("price"));
//        String year = request.getParameter("year");
        String color = request.getParameter("color");
        String odo = request.getParameter("odo");
        int type_id = Integer.parseInt(request.getParameter("type_id"));
        int brand_id = Integer.parseInt(request.getParameter("brand_id"));
        String engine = request.getParameter("engine");
        int status = 1;

        long millis=System.currentTimeMillis();
        java.sql.Date posted_date = new java.sql.Date(millis);


        // insert new bike
        Bike bike = new Bike(name, price, null, color, odo, type_id, engine, brand_id, user_id, null, posted_date, status);
        bikeDAO.insert(bike);

        // redirect to my post
        model.addAttribute("user", authUser);
        List<Bike> bikeList = bikeDAO.getByUserId(authUser.getUser_id());
        model.addAttribute("bikeList", bikeList);

        return "okxe/dashboard-my-ads";
    }

    // trang edit post
    @RequestMapping("/editPost/{bike_id}")
    public String editPost(ModelMap model, @PathVariable String
            bike_id, HttpServletRequest request) {
        // check if user logged in
        HttpSession session = request.getSession();
        User authUser = (User) session.getAttribute("authUser");
        if (authUser == null) {
            return "okxe/login";
        }

        // check null bikeid
//        if (bike_id == null) {
//            return "okxe/404";
//        }

        Bike bike = bikeDAO.getById(bike_id);
        // check if seller edit post
        if (authUser.getUser_id() != bike.getUser_id()) {
            return "okxe/404";
        }

        List<Brand> brandList = brandDAO.getAll();
        List<Type> typeList = typeDAO.getAll();

        model.addAttribute("brandList", brandList);
        model.addAttribute("typeList", typeList);
        model.addAttribute("bike", bike);
        model.addAttribute("action", "edit");

        return "okxe/ad-listing";
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

        model.addAttribute("user", userDAO.getById(id));
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

    @RequestMapping("/myPosts")
    public String myPosts(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User authUser = (User) session.getAttribute("authUser");
        if (authUser == null) {
            return "okxe/login";
        }

        model.addAttribute("user", authUser);
        List<Bike> bikeList = bikeDAO.getByUserId(authUser.getUser_id());
        model.addAttribute("bikeList", bikeList);

        return "okxe/dashboard-my-ads";
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


        if (userDAO.getUserByUsername(user.getUsername()).size() != 0) {
            model.addAttribute("error", "Username already exists");
            return "okxe/register";
        }
        if (!userDAO.getUserByCID(user.getCitizen_id()).isEmpty()) {
            model.addAttribute("error", "Citizen ID already exists");
            return "okxe/register";
        }


        model.addAttribute("error", null);
        userDAO.insert(user);
        return "okxe/login";
    }
}
