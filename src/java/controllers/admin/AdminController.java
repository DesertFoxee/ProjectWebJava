package controllers.admin;

import dao.QuanTriDAO;
import models.QuanTri;
import org.springframework.stereotype.Controller;
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
    public ModelAndView login() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("admin/login");
        mv.addObject("mAdmin", new QuanTri());
        return mv;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@ModelAttribute("mAdmin") QuanTri admin) {

        if (QuanTriDAO.validate(admin)) {
            return "redirect:" + "/admin/manager";
        } else {
            return "redirect:" + "/admin";
        }
    }

}
