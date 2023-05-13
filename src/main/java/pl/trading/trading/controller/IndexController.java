package pl.trading.trading.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.trading.trading.entity.Product;
import pl.trading.trading.service.ProductsService;

import java.security.Principal;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class IndexController {
    private final ProductsService productsService;


    @GetMapping(path = "/index")
    String showProductsList(Model model, Principal principal) {
        List<Product> products = productsService.findAll();
        String username=principal.getName();
        model.addAttribute("products", products);
        model.addAttribute("username",username);
        return "index";
    }


}
