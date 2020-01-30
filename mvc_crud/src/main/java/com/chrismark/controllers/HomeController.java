package com.chrismark.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author chris
 */
@Controller
@RequestMapping("/")
public class HomeController {

    @RequestMapping
    public String home() {

        return "home";
    }
}
