package pl.charity.charity.controller;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.eclipse.tags.shaded.org.apache.xpath.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.charity.charity.entity.Category;
import pl.charity.charity.entity.Donation;
import pl.charity.charity.entity.Institution;
import pl.charity.charity.entity.User;
import pl.charity.charity.service.CategoryService;
import pl.charity.charity.service.DonationService;
import pl.charity.charity.service.InstitutionService;
import pl.charity.charity.service.UserService;

import java.security.Principal;
import java.util.List;


@Controller
@RequiredArgsConstructor
public class DonationController {
    private final CategoryService categoryService;
    private final InstitutionService institutionService;
    private final DonationService donationService;
    private final UserService userService;
    @GetMapping(path = "/donation")
    public String donationCreateForm(Model model){
        model.addAttribute("donation", new Donation());
        return "form";
    }
    @PostMapping(path = "/donation")
    public String donationProcessForm(@Valid Donation donation, Principal principal){
        String email=principal.getName();
        donation.setUser(userService.findByEmail(email));
        donationService.save(donation);
        return "header-confirmation";
    }

    @GetMapping(path="user/donationslList")
    String showDonationsList(Model model,Principal principal){
        String email=principal.getName();
        List<Donation> donations=donationService.findDontationByUserEmail(email);
        model.addAttribute("donations",donations);
        return "userDonations";
    }
    @GetMapping(path = "/user/donationEdit")
    String showEditdonationForm(@RequestParam Long id, Model model) {
        model.addAttribute("donation", donationService.findById(id));
        return "donationEdit";
    }

    @PostMapping(path = "/user/donationEdit")
    String processEditSupplierForm(@Valid Donation donation, BindingResult errors, Principal principal) {

        if (errors.hasErrors()) {
            return "donationEdit";
        }

        donation.setUser(userService.findByEmail(principal.getName()));
        donationService.update(donation);

        return "redirect:/user/donationslList";
    }
    @GetMapping(path = "user/donationDelete")
    String deleteProducts(@RequestParam long id) {
        donationService.deleteById(id);
        return "redirect:/user/donationslList";
    }

    @ModelAttribute(name = "categories")
    public List<Category> categoriesList(){
        return categoryService.findAll();
    }
    @ModelAttribute(name = "institutions")
    public List<Institution> institutionsList(){
        return institutionService.findAll();
    }

}