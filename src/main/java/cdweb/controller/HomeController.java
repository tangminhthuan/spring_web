package cdweb.controller;

import cdweb.dao.CategoryDAO;
import cdweb.dao.ProductDAO;
import cdweb.entity.Category;
import cdweb.utils.CartItems;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    CategoryDAO cd;

    @Autowired
    ProductDAO pd;

    @Autowired
    HttpSession ss;

    @GetMapping("/")
    public String index(Model model) {
        if (ss.getAttribute("cart") == null) {
            ss.setAttribute("cart", new CartItems());
        }
        model.addAttribute("user", ss.getAttribute("user"));
        List<Category> cs = cd.findAll();
//		List<Product> ps = pd.findAll().subList(0,8);
        model.addAttribute("cs", cs);
//		model.addAttribute("ps", ps);
        model.addAttribute("cartNumber", ((CartItems) ss.getAttribute("cart")).getTotal());
        return "index";
    }

}
