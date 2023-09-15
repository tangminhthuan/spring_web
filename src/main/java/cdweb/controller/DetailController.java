package cdweb.controller;

import cdweb.dao.ProductDAO;
import cdweb.entity.Product;
import cdweb.utils.CartItems;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpSession;

@Controller
public class DetailController {

    @Autowired
    ProductDAO pd;
    @Autowired
    HttpSession ss;

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") int id, Model model) {
        Product p = pd.findById(id).orElse(new Product());
        model.addAttribute("user", ss.getAttribute("user"));
        model.addAttribute("p", p);
        model.addAttribute("cartNumber", ((CartItems) ss.getAttribute("cart")).getTotal());
        return "detail";
    }
}
