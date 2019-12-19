package controllers.website;

import dao.GiayDAO;
import java.util.List;
import models.database.Giay;
import models.database.HinhAnh;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "")
public class HomeController {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView Index() {

        ModelAndView mv = new ModelAndView();
        List<Giay> adi_shoes_price = GiayDAO.getShoesManu("adidas", "gia", 6, true);
        List<Giay> adi_shoes_sale = GiayDAO.getShoesManu("adidas", "giamGia", 6, true);
        List<Giay> best_sale = GiayDAO.getBestSale(3);

        String path_img_default = HinhAnh.getPathImgDefault();
        mv.addObject("adi_shoes_price", adi_shoes_price);
        mv.addObject("adi_shoes_sale", adi_shoes_sale);
        mv.addObject("path_default", path_img_default);
        mv.addObject("best_sale_shoes", best_sale);
        
        mv.setViewName("website/home/index");
        return mv;
    }
}
