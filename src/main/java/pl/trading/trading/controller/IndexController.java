package pl.trading.trading.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class IndexController {
    @GetMapping(path = "/index")
    public String index(){
        return "index";
    }
    @GetMapping(path = "/home")
    public String home(){
        return "home";
    }
}
