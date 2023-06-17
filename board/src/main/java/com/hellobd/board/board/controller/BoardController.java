package com.hellobd.board.board.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Slf4j
@RequestMapping("/")
public class BoardController {
    @GetMapping
    public String getMainHandler() {
        log.debug("Entered: Main");
        return "You are now at main";
    }
}
