package pl.trading.trading.controller;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.trading.trading.entity.Products;
import pl.trading.trading.entity.Supplier;
import pl.trading.trading.service.ProductsService;
import pl.trading.trading.service.SupplierService;

import java.util.List;


@Controller
@RequiredArgsConstructor
class ProductsController {

    private final ProductsService productsService;
    private final SupplierService supplierService;


    @GetMapping(path = "/products/list")
    String showProductsList(Model model) {
        List<Products> products = productsService.findAll();
        model.addAttribute("products", products);
        return "/products/list";
    }

    @GetMapping(path = "/products/add")
    String showAddProductsForm(Model model) {
        model.addAttribute("products", new Products());
        return "products/add";
    }

    @PostMapping(path = "/products/add")
    String processAddProductsForm(@Valid Products products, BindingResult errors) {

        if (errors.hasErrors()) {
            return "products/add";
        }

        productsService.save(products);

        return "redirect:/products/list";
    }

    @GetMapping(path = "/products/edit")
    String showEditProductsForm(@RequestParam Long id, Model model) {
        model.addAttribute("products", productsService.findById(id));
        return "products/edit";
    }

    @PostMapping(path = "/products/edit")
    String processEditProductsForm(@Valid Products products, BindingResult errors) {

        if (errors.hasErrors()) {
            return "products/edit";
        }

        productsService.update(products);

        return "redirect:/products/list";
    }

    @GetMapping(path = "products/delete")
    String deleteProducts(@RequestParam long id) {
        productsService.deleteById(id);
        return "redirect:/products/list";
    }

    @ModelAttribute("suppliers")
    List<Supplier> suppliers() {
        return supplierService.findAll();
    }
}
