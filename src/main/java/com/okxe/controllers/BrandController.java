package com.okxe.controllers;

import com.okxe.beans.Brand;
import com.okxe.dao.BikeDAO;
import com.okxe.dao.BrandDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/okxe/brand")
public class BrandController {
    @Autowired
    BrandDAO brandDAO;

    @Autowired
    BikeDAO bikeDAO;

    @RequestMapping("/{brandname}")
    public String showBrands(ModelMap model, @PathVariable String
            brandname){
        if(brandname==null) {
            model.addAttribute("brands", brandDAO.getAll());
            model.addAttribute("bikes", bikeDAO.getAll());
            return "okxe/store";
        } else {
            Brand b = brandDAO.getByName(brandname);

            if(b==null){
                return "okxe/404";
            } else {
                model.addAttribute("brand", brandDAO.getByName(brandname));
                model.addAttribute("brandbikes", bikeDAO.getBikeByBrandId(b.getBrand_id()));
                return "okxe/store";
            }
        }
    }
}
