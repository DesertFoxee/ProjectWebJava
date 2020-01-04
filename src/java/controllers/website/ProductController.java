package controllers.website;

import dao.DanhGiaDAO;
import dao.GiayDAO;
import dao.KhachHangDAO;
import dao.TaiKhoanDAO;
import java.util.Date;
import models.database.Giay;
import java.util.List;
import javafx.util.Pair;
import javax.servlet.http.HttpSession;
import models.database.DanhGia;
import models.database.DanhGiaId;
import models.database.HinhAnh;
import models.database.KhachHang;
import models.database.TaiKhoan;
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
import validation.ValidationResponse;

@Controller
@RequestMapping(value = "product")
public class ProductController {

    public ModelAndView setUpPage(String sort, String manu, String type,
            String pnumber, String key) {

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
        List<Giay> list_shoes_filter = GiayDAO.filter(key_filter, key_sort, key);

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
        ModelAndView mv = setUpPage("DF", "0", "0", null, null);
        mv.setViewName("website/product/index");
        return mv;
    }

    @RequestMapping(value = "/single", method = RequestMethod.GET)
    public ModelAndView showSingleProduct(@RequestParam("id") String id) {
        ModelAndView mv = new ModelAndView();
        Giay shoes = GiayDAO.getShoesID(Integer.parseInt(id));
        List<DanhGia> reviews = DanhGiaDAO.getReviewsShoesID(Integer.parseInt(id));
        String path_img_default = HinhAnh.getPathImgDefault();
        
        mv.addObject("shoes", shoes);
        mv.addObject("reviews", reviews);
        mv.addObject("path_default", path_img_default);
        mv.setViewName("website/product/single");
        return mv;
    }

    @RequestMapping(value = "/manu", method = RequestMethod.GET)
    public ModelAndView showManuProduct(@RequestParam("id") String manu) {

        ModelAndView mv = setUpPage(null, manu, null, null, null);

        mv.addObject("f_manu", manu);

        mv.setViewName("website/product/index");
        return mv;
    }

    @RequestMapping(value = "/style", method = RequestMethod.GET)
    public ModelAndView showStyleProduct(@RequestParam("id") String type) {
        ModelAndView mv = setUpPage(null, null, type, null, null);

        mv.addObject("f_type", type);

        mv.setViewName("website/product/index");
        return mv;
    }

    @RequestMapping(value = "/page", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView showPage(@RequestParam("sort") String sort,
            @RequestParam("manu") String manu,
            @RequestParam("type") String type,
            @RequestParam("number") String number,
            @RequestParam(value = "key", required = false) String key) {

        ModelAndView mv = setUpPage(sort, manu, type, number, key);
        mv.setViewName("partialview/website/product/page");
        return mv;
    }

    @RequestMapping(value = "/filter", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView fitler(@RequestParam(value = "sort", required = false) String sort,
            @RequestParam(value = "manu", required = false) String manu,
            @RequestParam(value = "type", required = false) String type,
            @RequestParam(value = "first", required = false) String first,
            @RequestParam(value = "key", required = false) String key) {
        ModelAndView mv = setUpPage(sort, manu, type, null, key);

        mv.addObject("f_manu", manu);
        mv.addObject("f_type", type);
        mv.addObject("f_sort", sort);

        if (first != null) {
            mv.setViewName("website/product/index");
        } else {
            mv.setViewName("partialview/website/product/page");
        }
        return mv;
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public ModelAndView search(@RequestParam(value = "category", required = false) String category,
            @RequestParam(value = "key", required = false) String key) {
        String manu = null;
        String type = null;
        int index_type = (category != null) ? category.indexOf("_") : -1;
        if (index_type > -1) {
            String name_type = category.substring(0, index_type);
            if ("m".equals(name_type)) {
                manu = category.substring(index_type, category.length());
            } else if ("t".equals(name_type)) {
                type = category.substring(index_type, category.length());
            }
        }
        ModelAndView mv = setUpPage(null, manu, type, null, key);

        mv.addObject("key", key);
        mv.addObject("f_manu", manu);
        mv.addObject("f_type", type);
        mv.addObject("f_sort", null);

        mv.setViewName("website/product/index");

        return mv;
    }

    @RequestMapping(value = "/comment", method = RequestMethod.POST)
    @ResponseBody
    public ValidationResponse comment(@RequestParam("shoes") String shoes_id,
            @RequestParam("comment") String comment, HttpSession session) {
        ValidationResponse resp = new ValidationResponse();
        TaiKhoan tk = (TaiKhoan) session.getAttribute("user_customer");

        if (tk != null) {

            Giay shoes = GiayDAO.exists(Integer.parseInt(shoes_id));
            TaiKhoan acc = TaiKhoanDAO.getAccountID(tk.getMaTaiKhoan());
            KhachHang customer = acc.getKhachHang();
            if (shoes == null || customer == null) {
                resp.addErrorMessages("err", "Yêu cầu không hợp lệ !");
            } else {
                DanhGia review = new DanhGia();
                review.setId(new DanhGiaId(customer.getMaKhachHang() , shoes.getMaGiay()));
                review.setNoiDung(comment);
                review.setThoiGian(new Date());
                review.setKhachHang(customer);
                review.setGiay(shoes);
                if (DanhGiaDAO.save(review) != null) {
                    resp.setValidated(true);
                } else {
                    resp.addErrorMessages("err", "Lỗi hệ thống hoặc Bạn đã bình luận !");
                }
            }
        } else {
            resp.addErrorMessages("err", "Hãy đăng nhập trước khi bình luận !");
        }
        return resp;
    }
}
