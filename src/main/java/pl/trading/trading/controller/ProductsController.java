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
import pl.trading.trading.entity.Product;
import pl.trading.trading.entity.Supplier;
import pl.trading.trading.entity.Unit;
import pl.trading.trading.entity.User;
import pl.trading.trading.service.ProductsService;
import pl.trading.trading.service.SupplierService;
import pl.trading.trading.service.UnitService;
import pl.trading.trading.service.UserService;

import java.security.Principal;
import java.util.List;


@Controller
@RequiredArgsConstructor
class ProductsController {

    private final ProductsService productsService;
    private final SupplierService supplierService;
    private final UnitService unitService;
private final UserService userService;

    @GetMapping(path = "/products/list")
    String showProductsList(Model model, Principal principal) {
        String email=principal.getName();
        List<Product> product = productsService.findByUserEmail(email);
        model.addAttribute("products", product);
        return "products/list";
    }

    @GetMapping(path = "/products/add")
    String showAddProductsForm(Model model) {
        model.addAttribute("products", new Product());
        return "products/add";
    }

    @PostMapping(path = "/products/add")
    String processAddProductsForm(@Valid Product product, BindingResult errors,Principal principal) {
        if (errors.hasErrors()) {
            return "products/add";
        }
        double totalPrice = product.getPrice() * product.getQuantity();
        product.setToPay(totalPrice);
        String email=principal.getName();
        product.setUser(userService.findByEmail(email));
        productsService.save(product);
        return "redirect:/products/list";
    }

    @GetMapping(path = "/products/edit")
    String showEditProductsForm(@RequestParam Long id, Model model) {
        model.addAttribute("products", productsService.findById(id));
        return "products/edit";
    }

    @PostMapping(path = "/products/edit")
    String processEditProductsForm(@Valid Product product, BindingResult errors,Principal principal) {
        if (errors.hasErrors()) {
            return "products/edit";
        }
        product.setUser(userService.findByEmail(principal.getName()));
        productsService.update(product);
        return "redirect:/products/list";
    }

    @GetMapping(path = "products/delete")
    String deleteProducts(@RequestParam long id) {
        productsService.deleteById(id);
        return "redirect:/products/list";
    }

    @GetMapping(path = "supplier/supplies", params = "supplierId")
    String findBySupplierId(@RequestParam Long supplierId, Model model) {
        List<Product> products = productsService.findBySupplierId(supplierId);
        model.addAttribute("products", products);
        return "products/supplies";
    }

    @GetMapping(path = "/pesel", params = "pesel")
    String findBySupplierPesel(@RequestParam String pesel, Model model) {
        List<Product> products = productsService.findBySupplierPesel(pesel);
        model.addAttribute("products", products);
        return "products/listSuppliesByPesel";
    }

    @GetMapping("/pesel")
    public String findBySupplierPesel() {
        return "products/searchSuppliesByPesel";
    }

    @ModelAttribute("suppliers")
    List<Supplier> suppliers() {
        return supplierService.findAll();
    }

    @ModelAttribute("units")
    List<Unit> units() {
        return unitService.findAll();
    }
}