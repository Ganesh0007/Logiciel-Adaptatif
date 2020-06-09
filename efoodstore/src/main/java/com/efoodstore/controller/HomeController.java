package com.efoodstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Ihcen on 01/06/2020.
 */

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @RequestMapping("/login")
    public String login(@RequestParam(value="error", required = false) String error, @RequestParam(value="logout",
            required = false) String logout, Model model) {
        if (error!=null) {
            model.addAttribute("error", "Pseudo ou mot de passe invalide");
        }

        if(logout!=null) {
            model.addAttribute("msg", "Vous vous êtes deconnecté.");
        }

        return "login";
    }

    @RequestMapping("/about")
    public String about() {
        return "about";
    }
}
