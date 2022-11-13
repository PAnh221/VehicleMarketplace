package com.okxe.controllers;
import java.util.List;

import com.okxe.dao.BikeDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class BikeController {
    @Autowired
    BikeDAO bikeDAO;

    @RequestMapping("bikes")
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

}
