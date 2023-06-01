package pl.charity.charity.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.charity.charity.service.DonationService;
import pl.charity.charity.service.InstitutionService;

@Controller
@RequiredArgsConstructor
public class IndexController {
    private final DonationService donationService;
    private final InstitutionService institutionService;

    @GetMapping(path = "/")
    public String index(Model model) {
        model.addAttribute("bagsQuantity", donationService.countBagsQuantity());
        model.addAttribute("donationsQuantity", donationService.countDonationsQuantity());
        model.addAttribute("institutions",institutionService.findAll());
        return "index";
    }
}

