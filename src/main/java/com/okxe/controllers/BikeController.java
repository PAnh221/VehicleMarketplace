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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/okxe/")
public class BikeController {
    @Autowired
    BikeDAO bikeDAO;

    @Autowired
    UserDAO userDAO;

    @Autowired
    BrandDAO brandDAO;

    @RequestMapping("okxe/bikes")
    public String showProducts(ModelMap model,
                               @RequestParam(value="brandId", required=false) Integer
                                       brandId) {
        if(brandId == null){
            model.addAttribute("bikes", bikeDAO.getAll());
        }
        else{
            model.addAttribute("bikes", bikeDAO.
                    getBikeByBrandId(brandId));
        }
        return "okxe/index";
    }
    @RequestMapping("okxe/bike/{bikeId}")
    public String showProduct(ModelMap model, @PathVariable Integer bikeId) {
        Bike b = bikeDAO.getById(bikeId);
        if(b == null){
            return "okxe/index";
        }
        else{
            User u = userDAO.getById(b.getUser_id());
            Brand br = brandDAO.getById(b.getBrand_id());
            model.addAttribute("seller", u);
            model.addAttribute("brand", br);
            model.addAttribute("bike", b);
            return "okxe/single";
        }
    }


}
