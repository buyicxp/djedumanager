package com.csdj.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @version 1.0
 * @ClassName HelloController
 * @Author wuzl
 * @Date 2019/9/6
 **/
@Controller
public class HelloController {
    @RequestMapping("/hello")
    public String hello(){
        return "index";
    }
}
