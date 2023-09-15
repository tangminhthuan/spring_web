package cdweb.controller;

import cdweb.bean.MailInfo;
import cdweb.dao.AccountDAO;
import cdweb.entity.Account;
import cdweb.utils.MailerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.mail.MessagingException;
import java.util.Optional;

@Controller
public class ForgetController {

    @Autowired
    AccountDAO ad;
    @Autowired
    MailerService ms;


    @GetMapping("/forget")
    public String forget() {
        return "forget";
    }

    @PostMapping("/forget")
    public String forget2(RedirectAttributes ra, @RequestParam("email") String e) {
        Optional<Account> account = ad.findByEmail(e);
        MailInfo mail = new MailInfo(e, "forget pasword", account.get().getPassword());
        try {
            ms.send(mail);
            ra.addAttribute("message", "Check your mail");
        } catch (MessagingException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
            ra.addAttribute("message", "Unknown error");
        }
        return "redirect:/forget";
    }

}
