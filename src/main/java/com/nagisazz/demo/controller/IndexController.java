package com.nagisazz.demo.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping
@RestController
public class IndexController {

    @GetMapping("/")
    public ResponseEntity<String> index() {
        System.out.println("Hello Spring Native");
        return ResponseEntity.ok("Hello Spring Native");
    }
}
