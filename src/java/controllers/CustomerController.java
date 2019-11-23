package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/customer")
public class CustomerController {
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView Index(){
        ModelAndView mv = new ModelAndView();
        
        mv.setViewName("customer/index"); 
        return mv;
    }
}
