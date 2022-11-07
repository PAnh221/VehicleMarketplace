package com.test.controllers;

import com.test.beans.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Date;

@Controller
@RequestMapping("/product/")
public class ProductController {
    @RequestMapping("demo")
    public String sayHello(ModelMap model, HttpSession session){
        session.setAttribute("name", "Sumels");
        model.addAttribute("salary",2000);
        return "product";
    }

    @RequestMapping("format")
    public String format(ModelMap model) throws ParseException {
        Product product = new Product("iPhone 14", 2579.2, 0.05);
        Date date = new SimpleDateFormat("dd/MM/yyyy").parse("01/09/2001");
        product.setDate(date);
        model.addAttribute("product", product);
        return "sanpham";
    }
}
