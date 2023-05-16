package pl.trading.trading.controller;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.trading.trading.entity.Supplier;
import pl.trading.trading.service.SupplierService;

import java.util.List;


@Controller
@RequiredArgsConstructor
class SupplierController {

    private final SupplierService supplierService;


    @GetMapping(path = "/supplier/list")
    String showSupplierList(Model model) {
        List<Supplier> suppliers = supplierService.findAll();
        model.addAttribute("suppliers", suppliers);
        return "supplier/list";
    }

    @GetMapping(path = "/supplier/add")
    String showAddSupplierForm(Model model) {
        model.addAttribute("supplier", new Supplier());
        return "supplier/add";
    }

    @PostMapping(path = "/supplier/add")
    String processAddSupplierForm(@Valid Supplier supplier, BindingResult errors) {

        if (errors.hasErrors()) {
            return "supplier/add";
        }
        supplierService.save(supplier);

        return "redirect:/supplier/list";
    }

    @GetMapping(path = "/supplier/edit")
    String showEditSupplierForm(@RequestParam Long id, Model model) {
        model.addAttribute("supplier", supplierService.findById(id));
        return "supplier/edit";
    }

    @PostMapping(path = "/supplier/edit")
    String processEditSupplierForm(@Valid Supplier supplier, BindingResult errors) {

        if (errors.hasErrors()) {
            return "supplier/edit";
        }

        supplierService.update(supplier);

        return "redirect:/supplier/list";
    }

    @GetMapping(path = "supplier/delete")
    String deleteProducts(@RequestParam long id) {
        supplierService.deleteById(id);
        return "redirect:/supplier/list";
    }
}
