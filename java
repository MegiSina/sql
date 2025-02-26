package com.hms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PatientController {

    @PostMapping("/submit_patient")
    public String submitPatient(@RequestParam String name, @RequestParam String age, Model model) {
        // Simulate saving patient data to the database here
        // You would save to the database and fetch the result
        model.addAttribute("message", "Patient " + name + " registered successfully!");
        
        // After saving, you can redirect or show the success page
        return "success";  // Render success page (you could design this page to show the success message)
    }
}
