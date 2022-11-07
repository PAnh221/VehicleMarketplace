package com.test.controllers;

import com.test.beans.Test;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/test/")
public class TestController {
    @RequestMapping("list")
    public String format(ModelMap model) {
        Test test1 = new Test("Nokia Star", 1000.0, 0.05);
        Test test2 = new Test("iPhone 9", 1500.0, 0.10);
        Test test3 = new Test("Samsung Galaxy N10", 750.0, 0.15);
        Test test4 = new Test("Sony Experia", 500.0, 0.00);
        List<Test> testList = new ArrayList<Test>();
        testList.add(test1);
        testList.add(test2);
        testList.add(test3);
        testList.add(test4);
        model.addAttribute("tests", testList);
        return "test";
    }
}
