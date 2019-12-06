package controllers.website;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "product")
public class ProductController {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView Index() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("website/product/index");
        return mv;
    }

    @RequestMapping(value="/single" ,method = RequestMethod.GET)
    public ModelAndView showSingleProduct() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("website/product/single");
        return mv;
    }
}
