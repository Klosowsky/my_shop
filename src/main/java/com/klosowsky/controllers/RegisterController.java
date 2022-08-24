package com.klosowsky.controllers;


import com.klosowsky.api.RegistrationDTO;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
public class RegisterController {

    @RequestMapping("/register")
    public String register(@ModelAttribute("registrationDTO")RegistrationDTO registrationDTO){

        return "register-page";
    }

    @RequestMapping("/process-register")
    public String registerSucces(@Valid @ModelAttribute("registrationDTO")RegistrationDTO registrationDTO, BindingResult result){
        System.out.println("Inside process-register");

        if(result.hasErrors()){
            List<ObjectError> errorList = result.getAllErrors();
            for(ObjectError error : errorList){
                System.out.println(error);
            }
            //System.out.println("username error...");
            return "register-page";
        }
        return "register-succes-page";
    }


}
