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
import pl.trading.trading.dto.UserDto;
import pl.trading.trading.entity.Unit;
import pl.trading.trading.service.UnitService;
import pl.trading.trading.service.UserService;

import java.security.Principal;
import java.util.List;


@Controller
@RequiredArgsConstructor
class UnitController {

    private final UnitService unitService;
    private final UserService userService;

    @GetMapping(path = "/unit/list")
    String showUnitList(Model model, Principal principal) {
        String email = principal.getName();
        List<Unit> unit = unitService.findByUserEmail(email);
        model.addAttribute("units", unit);
        return "unit/list";
    }

    @GetMapping(path = "/unit/add")
    String showAddUnitForm(Model model) {
        model.addAttribute("unit", new Unit());
        return "unit/add";
    }

    @PostMapping(path = "/unit/add")
    String processAddUnitForm(@Valid Unit unit, BindingResult errors, Principal principal) {

        if (errors.hasErrors()) {
            return "unit/add";
        }
        String email = principal.getName();
        unit.setUser(userService.findByEmail(email));
        unitService.save(unit);

        return "redirect:/unit/list";
    }

    @GetMapping(path = "/unit/edit")
    String showEditUnitForm(@RequestParam Long id, Model model) {
        model.addAttribute("unit", unitService.findById(id));
        return "unit/edit";
    }

    @PostMapping(path = "/unit/edit")
    String processEditUnitForm(@Valid Unit unit, BindingResult errors, Principal principal) {

        if (errors.hasErrors()) {
            return "unit/edit";
        }
        String email = principal.getName();
        unit.setUser(userService.findByEmail(email));
        unitService.update(unit);

        return "redirect:/unit/list";
    }

    @GetMapping(path = "unit/delete")
    String deleteUnits(@RequestParam long id) {
        unitService.deleteById(id);
        return "redirect:/unit/list";
    }

    @ModelAttribute("users")
    List<UserDto> users() {
        return userService.findAllUsers();
    }
}
