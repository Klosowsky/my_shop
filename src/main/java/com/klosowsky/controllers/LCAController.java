package com.klosowsky.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LCAController {

    @RequestMapping("/")
    public String showHomePage(){
        return "home-page";
    }
}
