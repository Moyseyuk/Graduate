package com.tms.graduate.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = "/admin")
public class AdminHomPageController {

    @PostMapping
    public String home(){
        return "adminHomePage";
    }

}
