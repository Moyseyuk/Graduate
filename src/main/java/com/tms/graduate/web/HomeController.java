package com.tms.graduate.web;

import com.tms.graduate.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@RequestMapping(path = "/")
public class HomeController {

    @GetMapping
    public String home(Map<String, Object> model) {
        User user = new User();
        model.put("user", user);
        return "loginPage";
    }

    @GetMapping(path = "/default")
    public String def(HttpServletRequest request){
        if (request.isUserInRole("ADMIN")){
            return "redirect:/admin";
        } else return "redirect:/user";
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
