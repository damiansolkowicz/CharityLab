package pl.charity.charity.controller;

import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.charity.charity.entity.Institution;
import pl.charity.charity.service.InstitutionService;


import java.security.Principal;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class InstitutionController {
    private  final InstitutionService institutionService;
    @GetMapping(path = "/institutions/list")
    String showInstitutionsList(Model model){
        List <Institution> institutions=institutionService.findAll();
        model.addAttribute("institutions",institutions);
        return "institutionsList";
    }
    @GetMapping(path = "institutions/add")
    String showAddInstitutionForm(Model model){
        model.addAttribute("institutions", new Institution());
        return  "institutionsAdd";
    }
    @PostMapping(path = "institutions/add")
    String processAddSupplierForm(@Valid Institution institution, BindingResult errors, Principal principal) {

        if (errors.hasErrors()) {
            return "institutionsAdd";
        }
      institutionService.save(institution);

        return "redirect:/institutions/list";
    }
    @GetMapping(path = "/institutions/delete")
    String deleteInstitutions(@RequestParam long id) {
        institutionService.deleteById(id);
        return "redirect:institutions/list";
    }
    @GetMapping(path = "/institutions/edit")
    String showEditSupplierForm(@RequestParam Long id, Model model) {
        model.addAttribute("institutions", institutionService.findById(id));
        return "institutionsEdit";
    }

    @PostMapping(path = "/institutions/edit")
    String processEditSupplierForm(@Valid Institution institution, BindingResult errors) {

        if (errors.hasErrors()) {
            return "institutionsEdit";
        }

        institutionService.update(institution);

        return "redirect:/institutions/list";
    }
}
