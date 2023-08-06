package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Sample {
    @GetMapping("/status")
    public String status(){
        return "Ok";
    }
}
