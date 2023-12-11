package com.tms.graduate.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = "/admin/createTest")
public class CreateTestController {

    @GetMapping
    public String home(Model model){
        return "createTest";
    }

}
