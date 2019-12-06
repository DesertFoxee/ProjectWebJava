package controllers.website;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import models.TaiKhoan;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import validation.ValidationResponse;

@Controller
@RequestMapping(value = "/customer")
public class CustomerController {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView getFormLogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("website/customer/login");
        return mv;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ValidationResponse login(@Valid @ModelAttribute TaiKhoan account,
            BindingResult binding, HttpServletResponse response) throws IOException {
        ValidationResponse resp = new ValidationResponse();
        if (binding.hasErrors()) {
            resp.processError(binding.getFieldErrors());
        } else {
            resp.setValidated(true);
            response.sendRedirect("/customer");
        }
        return resp;
    }

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView Index() {
        ModelAndView mv = new ModelAndView();

        mv.setViewName("website/customer/index");
        return mv;
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView getFormRegister() {
        ModelAndView mv = new ModelAndView();

        mv.setViewName("website/customer/register");
        return mv;
    }

    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public ModelAndView getCart() {
        ModelAndView mv = new ModelAndView();

        mv.setViewName("website/customer/cart");
        return mv;
    }

}
