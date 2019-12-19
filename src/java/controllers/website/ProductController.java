package controllers.website;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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

    @RequestMapping(value = "/single", method = RequestMethod.GET)
    public ModelAndView showSingleProduct(@RequestParam("id") String id) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("website/product/single");
        return mv;
    }

    @RequestMapping(value = "/manu", method = RequestMethod.GET)
    public ModelAndView showManuProduct(@RequestParam("id") String id) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("website/product/index");
        return mv;
    }

    @RequestMapping(value = "/style", method = RequestMethod.GET)
    public ModelAndView showStyleProduct(@RequestParam("id") String id) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("website/product/index");
        return mv;
    }

    @RequestMapping(value = "/filter", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView shortAndFitler(@RequestParam("filter") String filter ,
            @RequestParam("manu") String maHang , @RequestParam("type") String maLoaiGiay) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("website/product/search");
        return mv;
    }

}
