package cdweb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class LogoutController {
    @Autowired
    HttpSession ss;

    @GetMapping("/logout")
    public String logout() {
        ss.removeAttribute("user");
        return "redirect:/";
    }

}
