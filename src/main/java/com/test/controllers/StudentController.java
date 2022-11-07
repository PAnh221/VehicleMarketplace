package com.test.controllers;

import com.test.beans.Product;
import com.test.beans.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/student/")
public class StudentController {
    @RequestMapping("list")
    public String format(ModelMap model) throws ParseException {
        Student student1 = new Student("Sumels1", 7.0, "Software");
        Student student2 = new Student("Sumels2", 9.5, "Hardware");
        Student student3 = new Student("Sumels3", 4.0, "Cloud");
        List<Student> studentList = new ArrayList<Student>();
        studentList.add(student1);
        studentList.add(student2);
        studentList.add(student3);
        model.addAttribute("students", studentList);
        return "student";
    }
}
