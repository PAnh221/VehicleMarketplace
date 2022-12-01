package com.okxe.controllers;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.security.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.okxe.beans.*;
import com.okxe.dao.*;
import com.okxe.utils.StringValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("okxe/user/")
public class UserController {
//    private static final String syspath = "C:/Users/USER/IdeaProjects/";
    private static final String syspath = "E:/PhanMemMoi/finals/";
    private static final String UPLOAD_DIRECTORY =syspath+"VehicleMarketplace/src/main/webapp/WEB-INF/resources/images/bikes";
    private static final String UPLOAD_AVATAR_DIRECTORY ="/WEB-INF/resources/images/avatars";
    @Autowired
    UserDAO userDAO;

    @Autowired
    BrandDAO brandDAO;

    @Autowired
    TypeDAO typeDAO;

    @Autowired
    BikeDAO bikeDAO;

    @Autowired
    OrderDAO orderDAO;

    @RequestMapping("/profile")
    public String getUserProfile(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User authUser = (User) session.getAttribute("authUser");

        if(authUser == null){
            return "okxe/404";
        }
        else{
            model.addAttribute("user", userDAO.getById(authUser.getUser_id()));
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
    @RequestMapping(value = "/addPost", method = RequestMethod.POST)
    public String addPost(ModelMap model, @RequestParam CommonsMultipartFile file, HttpServletRequest request) {
        // check if user logged in
        HttpSession session = request.getSession();
        User authUser = (User) session.getAttribute("authUser");
        if (authUser == null) {
            return "okxe/login";
        }

        // get data
        int user_id = authUser.getUser_id();
        String name = request.getParameter("name").trim();
        Long price = Long.valueOf(request.getParameter("price"));
//        String year = request.getParameter("year");
        String color = request.getParameter("color").trim();
        String odo = request.getParameter("odo").trim();
        int type_id = Integer.parseInt(request.getParameter("type_id"));
        int brand_id = Integer.parseInt(request.getParameter("brand_id"));
        String engine = request.getParameter("engine").trim();
        int status = 1;

        long millis=System.currentTimeMillis();
        java.sql.Date posted_date = new java.sql.Date(millis);


        // get added bike
        int dir = bikeDAO.getAddedBike().get(0).getBike_id();
        System.out.println(dir);
        try{
            byte barr[]=file.getBytes();
            File theDir = new File(UPLOAD_DIRECTORY+"/"+dir);
            if (!theDir.exists()){
                theDir.mkdirs();
            }
            BufferedOutputStream bout=new BufferedOutputStream(
                    new FileOutputStream(theDir.getPath()+"/1.png"));
            bout.write(barr);
            bout.flush();
            bout.close();

        }catch(Exception e){System.out.println(e);}

        // insert new bike
        Bike bike = new Bike(name, price, null, color, odo, type_id, engine, brand_id, user_id, Integer.toString(dir), posted_date, status);
        bikeDAO.insert(bike);

        // redirect to my post
        model.addAttribute("user", userDAO.getById(authUser.getUser_id()));
        List<Bike> bikeList = bikeDAO.getByUserId(authUser.getUser_id());
        model.addAttribute("bikeList", bikeList);

        return "redirect:/okxe/user/myPosts";
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
        for(Bike b : bikeList){
            b.setBrand(brandDAO.getById(b.getBrand_id()));
        }
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

    // edit post
    @RequestMapping("/postEdit/{bike_id}")
    public String postEdit(ModelMap model,@PathVariable String
            bike_id, HttpServletRequest request) {
        // check if user logged in
        HttpSession session = request.getSession();
        User authUser = (User) session.getAttribute("authUser");
        if (authUser == null) {
            return "okxe/login";
        }

        // get data
        int user_id = authUser.getUser_id();

        List<Bike> bikeList = bikeDAO.getBikeById(Integer.parseInt(bike_id));

        // check if bike not exist
        if (bikeList.size() == 0) {
            return "okxe/404";
        }

        // get bike info from bike id
        Bike bikeInfo = bikeList.get(0);

        // check if seller deactive
        if (user_id != bikeInfo.getUser_id()) {
            return "okxe/404";
        }

        String name = request.getParameter("name").trim();
        Long price = Long.valueOf(request.getParameter("price"));
//        String year = request.getParameter("year");
        String color = request.getParameter("color").trim();
        String odo = request.getParameter("odo");
        int type_id = Integer.parseInt(request.getParameter("type_id"));
        int brand_id = Integer.parseInt(request.getParameter("brand_id"));
        String engine = request.getParameter("engine").trim();
        int status = Integer.parseInt(request.getParameter("status"));

        long millis=System.currentTimeMillis();
        java.sql.Date posted_date = new java.sql.Date(millis);

        Bike bike = new Bike(Integer.parseInt(bike_id), name, price, null, color, odo, type_id, engine, brand_id, authUser.getUser_id(), null, posted_date, status);
        // edit bike
        bikeDAO.update(bike);

        // redirect to my post
        model.addAttribute("user", authUser);
        List<Bike> bikes = bikeDAO.getByUserId(authUser.getUser_id());
        model.addAttribute("bikeList", bikes);

        return "redirect:/okxe/user/myPosts";
    }

    @RequestMapping("/updateUserProfile")
    public String updateUserProfile(ModelMap model, @RequestParam(value = "file", required = false) CommonsMultipartFile file, HttpServletRequest request) {
        // check if user logged in
        HttpSession session = request.getSession();
        User authUser = (User) session.getAttribute("authUser");
        if (authUser == null) {
            return "okxe/login";
        }

        int id = Integer.valueOf(request.getParameter("id"));
        String name = request.getParameter("name").trim();
        String phone = request.getParameter("phone").trim();
        String CID = request.getParameter("CID").trim();
        String location = request.getParameter("location").trim();

        // validate string
        if (StringValidator.containsNumber(name)) {
            model.addAttribute("user", userDAO.getById(id));
            model.addAttribute("error", "Name cannot contain numbers!");
            return "okxe/user-profile";
        }

        if (!StringValidator.isValidMobileNo(phone) || !StringValidator.isValidMobileNo(CID)) {
            model.addAttribute("user", userDAO.getById(id));
            model.addAttribute("error", "Phone number or CID not valid!");
            return "okxe/user-profile";
        }

        // get image
        String path=session.getServletContext().getRealPath(UPLOAD_AVATAR_DIRECTORY);
        int dir = authUser.getUser_id();

        String filename = Integer.toString(dir) + ".png";

        System.out.println(path+" "+filename);

        User user = new User();

        // check null image
        if (file.getSize() > 0) {
            try{
                byte barr[]=file.getBytes();

                BufferedOutputStream bout=new BufferedOutputStream(
                        new FileOutputStream(path+"/"+filename));
                bout.write(barr);
                bout.flush();
                bout.close();

            }catch(Exception e){System.out.println(e);}
            user = new User(id,null, null, phone, name, location, Integer.toString(authUser.getUser_id()), CID, 1);
        }
        else {
            // get updated user
            User u = userDAO.getById(authUser.getUser_id());
            if (u.getImage() != null) {
                user = new User(id,null, null, phone, name, location, Integer.toString(authUser.getUser_id()), CID, 1);
            }
            else {
                user = new User(id,null, null, phone, name, location, null, CID, 1);

            }
        }

        //

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
        return "redirect:/okxe/bikes";
    }

    @RequestMapping("/userPosts/{user_id}")
    public String userPosts(ModelMap model,@PathVariable String
            user_id,  HttpServletRequest request) {

        HttpSession session = request.getSession();
        User authUser = (User) session.getAttribute("authUser");
        if (authUser == null) {
            return "okxe/login";
        }

        // if check self posts
        if (authUser.getUser_id() == Integer.parseInt(user_id)) {
            model.addAttribute("user", userDAO.getById(authUser.getUser_id()));
            List<Bike> bikeList = bikeDAO.getByUserId(authUser.getUser_id());
            for(Bike b : bikeList){
                b.setBrand(brandDAO.getById(b.getBrand_id()));
            }
            model.addAttribute("bikeList", bikeList);
        }
        else {
            model.addAttribute("user", userDAO.getById(Integer.parseInt(user_id)));
            List<Bike> bikeList = bikeDAO.getActiveByUserId(Integer.parseInt(user_id));
            for(Bike b : bikeList){
                b.setBrand(brandDAO.getById(b.getBrand_id()));
            }
            model.addAttribute("bikeList", bikeList);
        }



        return "okxe/dashboard-my-ads";
    }

    @RequestMapping("orders")
    public String getUserPendingOrders(ModelMap model, HttpServletRequest request){
        HttpSession session = request.getSession();
        User authUser = (User) session.getAttribute("authUser");
        if (authUser == null) {
            return "okxe/login";
        }

        List<Order> orderList = orderDAO.getByUserId(authUser.getUser_id());
        for(Order o : orderList){
            o.setBike(bikeDAO.getById(o.getBike_id()));
        }
        model.addAttribute("orders", orderList);
        model.addAttribute("authUser", authUser);
        return "okxe/dashboard-pending-ads";
    }

    @RequestMapping("/order-requests")
    public String getUserRequestOrders(ModelMap model, HttpServletRequest request){
        HttpSession session = request.getSession();
        User authUser = (User) session.getAttribute("authUser");
        if (authUser == null) {
            return "okxe/login";
        }
        List<Order> orderList = orderDAO.getBySellerId(authUser.getUser_id());
        for(Order o : orderList){
            o.setBike(bikeDAO.getById(o.getBike_id()));
        }
        model.addAttribute("orders", orderList);
        model.addAttribute("authUser", authUser);
        return "okxe/dashboard-archived-ads";
    }

    @RequestMapping("/order-request/accept/{orderId}")
    public String acceptRequest(ModelMap model, @PathVariable Integer orderId, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User authUser = (User) session.getAttribute("authUser");
        if (authUser == null) {
            return "okxe/login";
        }
        Order order = orderDAO.getById(orderId);
        order.setStatus(2);
        orderDAO.update(order);
        List<Order> orderList = orderDAO.getBySellerId(authUser.getUser_id());
        for(Order o : orderList){
            o.setBike(bikeDAO.getById(o.getBike_id()));
        }
        model.addAttribute("orders", orderList);
        model.addAttribute("authUser", authUser);
        return "okxe/dashboard-archived-ads";
    }

    @RequestMapping("/order-request/deny/{orderId}")
    public String denyRequest(ModelMap model, @PathVariable Integer orderId, HttpServletRequest request){
        HttpSession session = request.getSession();
        User authUser = (User) session.getAttribute("authUser");
        if (authUser == null) {
            return "okxe/login";
        }
        Order order = orderDAO.getById(orderId);
        order.setStatus(3);
        orderDAO.update(order);

        List<Order> orderList = orderDAO.getBySellerId(authUser.getUser_id());
        for(Order o : orderList){
            o.setBike(bikeDAO.getById(o.getBike_id()));
        }
        model.addAttribute("orders", orderList);
        model.addAttribute("authUser", authUser);
        return "okxe/dashboard-archived-ads";
    }


    @RequestMapping("/logoutUser")
    public String logoutUser(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.setAttribute("auth", false);
        session.setAttribute("authUser", null);
        return "okxe/login";
    }

    @RequestMapping("/loginUser")
    public String loginUser(ModelMap model, HttpServletRequest request) {

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
                return "redirect:/okxe/bikes";
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

        if (StringValidator.containsNumber(name)) {
            model.addAttribute("error", "Name cannot contain numbers!");
            return "okxe/register";
        }

        if (!StringValidator.isValidMobileNo(CID)) {
            model.addAttribute("error", "CID not valid!");
            return "okxe/register";
        }

        if (!confirmpassword.trim().equals(password.trim())) {
            model.addAttribute("error", "Confirm password not valid");
            return "okxe/register";
        }

        User user = new User(username.trim(), password.trim(), name.trim(), location.trim(), CID.trim(), 1);


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
