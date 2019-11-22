package controllers.admin;

import dao.QuanTriDAO;
import javax.validation.Valid;
import models.QuanTri;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "admin")
public class AdminController {

    @RequestMapping(value = "/manager", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("admin/items");
        return mv;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String showlogin(Model model) {
        model.addAttribute("mAdmin", new QuanTri());
        return "admin/login";
    }
    @RequestMapping(method = RequestMethod.POST)
    public String login(@Valid @ModelAttribute("mAdmin") QuanTri admin, BindingResult binding ) {
        if(binding.hasErrors()){
            return "admin/login";
        }
        else {
            if (QuanTriDAO.validate(admin)) {
            return "redirect:" + "admin/manager";
            } else {
                return "redirect:" + "admin";
            }
        }
    }
}
