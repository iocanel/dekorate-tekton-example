
package com.example.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

  private static final String HELLO = "hello world!";

    @RequestMapping("/")
    public String hello() {
        return HELLO;
    }
}
