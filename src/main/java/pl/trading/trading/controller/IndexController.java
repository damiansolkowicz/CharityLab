package pl.trading.trading.controller;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.trading.trading.entity.Product;
import pl.trading.trading.service.ProductsService;

import java.security.Principal;
import java.util.List;

@AllArgsConstructor
@Controller
public class IndexController {
    private final ProductsService productsService;


    @GetMapping(path = "/index")
    public String index(Principal principal, Model model) {
        List<Product> productList = productsService.findAll();
        String name = principal.getName();
        model.addAttribute("name", name);
        model.addAttribute("products", productList);
        return "index";
    }

    @GetMapping(path = "/home")
    public String home() {
        return "home";
    }
}
