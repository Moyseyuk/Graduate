package com.tms.graduate.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = "/")
public class HomeController {

    @GetMapping
    public String home(){
        return "home";
    }

    @GetMapping(path = "/user")
    public String user(){
        return "userHomePage";
    }

    @GetMapping(path = "/admin")
    public String admin(){
        return "adminHomePage";
    }

}
