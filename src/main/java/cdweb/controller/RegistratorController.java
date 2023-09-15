package cdweb.controller;

import cdweb.dao.AccountDAO;
import cdweb.entity.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class RegistratorController {

    @Autowired
    AccountDAO ad;

    @GetMapping("/registrator")
    public String registrator() {
        return "registrator";
    }

    @PostMapping("/registrator")
    public String registrator2(@Valid @ModelAttribute("account") Account account, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("err", "error");
            return "/registrator";

        }
        return "redirect:/login";
    }
}
