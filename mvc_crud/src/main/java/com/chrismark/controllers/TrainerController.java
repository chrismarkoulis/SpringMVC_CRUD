/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.chrismark.controllers;

import com.chrismark.entities.Trainer;
import com.chrismark.service.TrainerService;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author chris
 */
@Controller
@RequestMapping("/trainer")
public class TrainerController {

    @Autowired
    TrainerService service;

    @GetMapping("/list")
    public String showTrainers(Model m) {
        List<Trainer> list = service.getAllTrainers();
        m.addAttribute("listOfTrainers", list);

        return "listTrainer";
    }

    @GetMapping("/create")
    public String showForm(@ModelAttribute("trainer") Trainer t) {

        return "formTrainer";

    }

    @PostMapping("/create")
    public String createTrainer(@Valid Trainer t, BindingResult result) {
        if (result.hasErrors()) {
            return "formTrainer";
        }  
        service.createOrUpdateTrainer(t);
        return "redirect:/trainer/list";

    }

    @GetMapping("/delete")
    public String deleteTrainer(@RequestParam("trainerId") int id){
        service.deleteTrainer(id);
    return "redirect:/trainer/list";
    
    }
    
    @GetMapping("/update")
    public String showUpdateForm(@RequestParam("trainerId") int id, Model model){
        Trainer t = service.getTrainerById(id);
        model.addAttribute("trainer",t);
        return "formTrainer";
    
    }
    
    @GetMapping("/search")
    public String showTrainersByName(@RequestParam("searchName") String searchName, Model model){
    
    List<Trainer> list = service.findTrainersByName(searchName);
    model.addAttribute("listOfTrainers", list);
    return "listTrainer";
    }
    
}
