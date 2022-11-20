package com.okxe.controllers;

import java.util.List;

import com.okxe.beans.Bike;
import com.okxe.beans.Brand;
import com.okxe.beans.User;
import com.okxe.dao.BikeDAO;
import com.okxe.dao.BrandDAO;
import com.okxe.dao.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class BikeController {
    @Autowired
    BikeDAO bikeDAO;

    @Autowired
    UserDAO userDAO;

    @Autowired
    BrandDAO brandDAO;

    @RequestMapping("okxe/bikes")
    public String showProducts(ModelMap model,
                               @RequestParam(value = "brandId", required = false) Integer
                                       brandId) {
        if (brandId == null) {
            model.addAttribute("bikes", bikeDAO.getAll());
        } else {
            model.addAttribute("bikes", bikeDAO.
                    getBikeByBrandId(brandId));
        }
        return "okxe/index";
    }

    @RequestMapping("okxe/bikes/{brandName}")
    public String showAll(ModelMap model, @PathVariable String brandName) {
        if (brandName.equals("all")) {
            List<Bike> bikes = bikeDAO.getAll();
            model.addAttribute("bikes", bikes);
            model.addAttribute("currentBrand", "all");
            model.addAttribute("brands", brandDAO.getAll());
            return "okxe/category";
        } else {
            Brand b = brandDAO.getByName(brandName);
            if(b==null){
                return "okxe/404";
            } else {
                List<Bike> bikes = bikeDAO.getBikeByBrandId(b.getBrand_id());
                model.addAttribute("bikes", bikes);
                model.addAttribute("currentBrand", brandName);
                model.addAttribute("brands", brandDAO.getAll());
                return "okxe/category";
            }
        }
    }

    @RequestMapping("okxe/bikes/listView/{brandName}")
    public String showAllasListView(ModelMap model, @PathVariable String brandName) {
        if (brandName.equals("all")) {
            List<Bike> bikes = bikeDAO.getAll();
            model.addAttribute("bikes", bikes);
            model.addAttribute("currentBrand", "all");
            model.addAttribute("brands", brandDAO.getAll());
            return "okxe/ad-list-view";
        } else {
            Brand b = brandDAO.getByName(brandName);
            if(b==null){
                return "okxe/404";
            } else {
                List<Bike> bikes = bikeDAO.getBikeByBrandId(b.getBrand_id());
                model.addAttribute("bikes", bikes);
                model.addAttribute("currentBrand", brandName);
                model.addAttribute("brands", brandDAO.getAll());
                return "okxe/ad-list-view";
            }
        }
    }

    @RequestMapping("okxe/bike/{bikeId}")
    public String showProduct(ModelMap model, @PathVariable Integer bikeId, HttpServletRequest request) {
        Bike b = bikeDAO.getById(bikeId);
        if (b == null) {
            return "okxe/index";
        } else {
            HttpSession session = request.getSession();
            User authUser = (User) session.getAttribute("authUser");
            User u = userDAO.getById(b.getUser_id());
            Brand br = brandDAO.getById(b.getBrand_id());
            model.addAttribute("seller", u);
            model.addAttribute("brand", br);
            model.addAttribute("bike", b);
            if(authUser!=null && u.getUser_id() != authUser.getUser_id()){
                model.addAttribute("usertype", "normal");
            } else {
                model.addAttribute("usertype", null);
            }
            model.addAttribute("authUser", authUser);
            return "okxe/single";
        }
    }

    @RequestMapping("okxe/bike/delete/{bikeId}")
    public String deleteBike(ModelMap model, @PathVariable Integer bikeId, HttpServletRequest request) {
        Bike b = bikeDAO.getById(bikeId);
        HttpSession session = request.getSession();
        User authUser = (User) session.getAttribute("authUser");
        if (authUser == null) {
            return "okxe/login";
        }
        if(b.getUser_id()!=authUser.getUser_id()){
            model.addAttribute("message", "You are not the owner of this post! Please try login another account");
            return "okxe/404";
        } else {
            bikeDAO.delete(bikeId);
            model.addAttribute("user", authUser);
            List<Bike> bikeList = bikeDAO.getByUserId(authUser.getUser_id());
            model.addAttribute("bikeList", bikeList);
            return "okxe/dashboard-my-ads";
        }
    }

}
