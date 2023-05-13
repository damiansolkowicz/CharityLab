package pl.trading.trading.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.trading.trading.entity.Product;
import pl.trading.trading.service.ProductsService;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class IndexController {
    private final ProductsService productsService;


    @GetMapping(path = "/index")
    String showProductsList(Model model) {
        List<Product> products = productsService.findAll();
        model.addAttribute("products", products);
        return "index";
    }

}
