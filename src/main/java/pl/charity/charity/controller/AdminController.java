package pl.charity.charity.controller;

import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.charity.charity.dto.UserDto;
import pl.charity.charity.entity.Role;
import pl.charity.charity.entity.User;
import pl.charity.charity.repository.RoleRepository;
import pl.charity.charity.repository.UserRepository;
import pl.charity.charity.service.UserService;

import java.util.Arrays;


@Controller
@AllArgsConstructor
public class AdminController {
    private final UserService userService;
    private  final RoleRepository roleRepository;
    private final UserRepository userRepository;
private final PasswordEncoder passwordEncoder;
    @GetMapping(path = "/admin/add")
     public  String showRegistrationForm(Model model) {
        UserDto user = new UserDto();
        model.addAttribute("user", user);
        return "newAdminRegistration";
    }

    @PostMapping(path = "/admin/add")
    public String registration(@Valid @ModelAttribute("user") UserDto user,
                               BindingResult result,
                               Model model, String roleName) {
        roleName="ADMIN";
        User existing = userService.findByEmail(user.getEmail());
        if (existing != null) {
            result.rejectValue("email", null, "There is already an account registered with that email");
        }
        if (result.hasErrors()) {
            model.addAttribute("user", user);
            return "newAdminRegistration";
        }
        userService.saveUser(user,roleName);
        return "adminPage";
    }

}
