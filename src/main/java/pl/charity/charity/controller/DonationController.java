package pl.charity.charity.controller;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.charity.charity.entity.Category;
import pl.charity.charity.entity.Donation;
import pl.charity.charity.entity.Institution;
import pl.charity.charity.service.CategoryService;
import pl.charity.charity.service.DonationService;
import pl.charity.charity.service.InstitutionService;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class DonationController {
    private final CategoryService categoryService;
    private final InstitutionService institutionService;
    private final DonationService donationService;
    @GetMapping(path = "/donation")
    public String donationCreateForm(Model model){
        model.addAttribute("donation", new Donation());
        return "form";
    }
    @PostMapping(path = "/donation")
    public String donationProcessForm(@Valid Donation donation){
        donationService.save(donation);
        return "header-confirmation";
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