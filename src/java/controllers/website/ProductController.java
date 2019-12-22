package controllers.website;

import dao.GiayDAO;
import models.database.Giay;
import java.util.List;
import javafx.util.Pair;
import models.database.HinhAnh;
import models.parameter.KeyFilter;
import models.parameter.KeySort;
import models.parameter.ParaPage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import process.Filter;
import process.Page;

@Controller
@RequestMapping(value = "product")
public class ProductController {

    public ModelAndView setUpPage(String sort, String manu, String type, String pnumber) {

        ModelAndView mv = new ModelAndView();
        if (pnumber == null) {
            pnumber = "1";
        }
        int current_page = Integer.parseInt(pnumber);
        current_page = (current_page <= 0) ? 1 : current_page;

        ParaPage para_page = new ParaPage();
        KeyFilter key_filter = Filter.processKeyFilter(manu, type);
        KeySort key_sort = Filter.processKeySort(sort);

        String path_img_default = HinhAnh.getPathImgDefault();
        List<Giay> list_shoes_filter = GiayDAO.filter(key_filter, key_sort);

        if (list_shoes_filter != null) {
            int total = list_shoes_filter.size();
            int max_page = Page.getMaxPage(ParaPage.getShoesOfPage(), total);

            Pair page = Page.getNextPage(current_page, max_page);
            Pair index = Page.getIndexPage(current_page, max_page, ParaPage.getShoesOfPage(), total);
            int prev_page = (int) page.getKey();
            int next_page = (int) page.getValue();
            int start = (int) index.getKey();
            int end = (int) index.getValue();

            list_shoes_filter = Filter.getRange(list_shoes_filter, start, ParaPage.getShoesOfPage());
            para_page.set(start, end, total, max_page, next_page, prev_page);

        }
        mv.addObject("path_default", path_img_default);
        mv.addObject("list_shoes_filter", list_shoes_filter);
        mv.addObject("para_page", para_page);
        return mv;
    }

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView Index() {
        ModelAndView mv = setUpPage("DF", "0", "0", null);
        mv.setViewName("website/product/index");
        return mv;
    }

    @RequestMapping(value = "/single", method = RequestMethod.GET)
    public ModelAndView showSingleProduct(@RequestParam("id") String id) {
        ModelAndView mv = new ModelAndView();
        Giay shoes = GiayDAO.getShoesID(Integer.parseInt(id));
        String path_img_default = HinhAnh.getPathImgDefault();

        mv.addObject("shoes", shoes);
        mv.addObject("path_default", path_img_default);
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

    @RequestMapping(value = "/page", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView showPageProduct(@RequestParam("sort") String sort,
            @RequestParam("manu") String manu,
            @RequestParam("type") String type,
            @RequestParam("number") String number) {
        ModelAndView mv = setUpPage(sort, manu, type, number);
        mv.setViewName("partialview/website/product/page");
        return mv;
    }

    @RequestMapping(value = "/filter", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView shortAndFitler(@RequestParam(value = "sort", required = false) String sort,
            @RequestParam(value = "manu", required = false) String manu,
            @RequestParam(value = "type", required = false) String type,
            @RequestParam(value = "first", required = false) String first) {
        ModelAndView mv = setUpPage(sort, manu, type, null);
        if (first != null) {
            mv.setViewName("website/product/index");
        } else {
            mv.setViewName("partialview/website/product/page");
        }

        return mv;
    }
}
