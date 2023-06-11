package pl.charity.charity.controller;

import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.eclipse.tags.shaded.org.apache.xpath.operations.Mod;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.charity.charity.dto.UserDto;
import pl.charity.charity.entity.User;
import pl.charity.charity.service.UserService;

import java.security.Principal;

@Controller
@AllArgsConstructor
public class UserController {
    private final UserService userService;
   private final PasswordEncoder passwordEncoder;
    @GetMapping(path = "/adminPage")
    public String adminPage(Model model) {
        model.addAttribute("adminsQuantity", userService.countAdminUsers());
        model.addAttribute("regularUsersQuantity", userService.countRegularUsers());
        return "adminPage";
    }
    @GetMapping(path = "user/edit")
    String showUserUpdateForm(Model model, Principal principal){
        String email=principal.getName();
        User user=userService.findByEmail(email);
        String password=passwordEncoder.encode(user.getPassword());
        user.setPassword(password);
        model.addAttribute("user",user);
        return "userdata";
    }
    @PostMapping(path = "/user/edit")
    public String registration(@Valid @ModelAttribute("user") UserDto user,
                               BindingResult result,
                               Model model) {
        if (result.hasErrors()) {
            model.addAttribute("user", user);
            return "/userData";
        }

        return "redirect:/donation";
    }
    @GetMapping("/account")
    public String userProfile(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String userEmail = authentication.getName();
        if (authentication.getAuthorities().stream()
                .anyMatch(authority -> authority.getAuthority().equals("ADMIN"))) {
            return "redirect:/adminPage";
        }

        return "redirect:/donation";
    }

}
