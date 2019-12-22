package controllers.customer;

import config.interceptor.Auth;
import dao.GiayDAO;
import dao.GioHangDAO;
import dao.KichCoDAO;
import dao.TaiKhoanDAO;
import java.io.IOException;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import models.database.Giay;
import models.database.GioHang;
import models.database.KichCo;
import models.database.TaiKhoan;
import models.parameter.ParaAddToCart;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public void logout(HttpSession session, HttpServletResponse response,
            HttpServletRequest request) throws IOException {
        ModelAndView mv = new ModelAndView();
        session.removeAttribute("user_customer");
        session.removeAttribute("user_login");
        response.sendRedirect(request.getContextPath());
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public ValidationResponse login(@Valid @ModelAttribute TaiKhoan account, BindingResult binding,
            HttpServletRequest request, HttpSession session) {
        ValidationResponse resp = new ValidationResponse();
        if (binding.hasErrors()) {
            resp.processError(binding.getFieldErrors());
        } else {
            TaiKhoan ac = TaiKhoanDAO.auth(account.getTenTaiKhoan(), account.getMatKhau());
            if (ac != null) {
                session.setAttribute("user_customer", ac);
                session.setAttribute("user_login", Auth.Role.USER);
            }
            resp.setValidated(true);
            resp.setRedirect(request.getContextPath());
        }
        return resp;
    }

    @Auth(role = Auth.Role.USER)
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView Index(HttpSession session, HttpServletResponse response,
            HttpServletRequest request) throws IOException {
        ModelAndView mv = new ModelAndView();
        TaiKhoan account = (TaiKhoan) session.getAttribute("user_customer");

        account = TaiKhoanDAO.getAccountID(account.getMaTaiKhoan());

        if (account != null) {
            mv.addObject("account", account);
        } else {
            response.sendRedirect(request.getContextPath() + "/customer/login");
            session.removeAttribute("user_customer");
            session.removeAttribute("user_login");
            return null;
        }
        mv.setViewName("website/customer/index");
        return mv;
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView getFormRegister() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("website/customer/register");
        return mv;
    }

    @RequestMapping(value = "/addtocart", method = RequestMethod.POST)
    @ResponseBody
    public ValidationResponse addToCart(@Valid @ModelAttribute ParaAddToCart order, BindingResult bindingResult,
            HttpSession session, HttpServletResponse response, HttpServletRequest request) throws IOException {
        ValidationResponse resp = new ValidationResponse();
        resp.setValidated(false);
        if (bindingResult.hasErrors()) {
            resp.processError(bindingResult.getFieldErrors());
        } else {
            TaiKhoan account = (TaiKhoan) session.getAttribute("user_customer");
            if (account != null) {
                account = TaiKhoanDAO.getAccountID(account.getMaTaiKhoan());
                Giay shoes = GiayDAO.getShoesID(order.getMaGiay());
                KichCo kc = KichCoDAO.exist(order.getMaKichCo());
                if (account != null && shoes != null && kc != null) {
                    if (GiayDAO.checkSizeCount(account.getMaTaiKhoan(), order.getMaKichCo(),
                            order.getSoLuong())) {
                        GioHang gh = new GioHang();
                        gh.setGiay(shoes);
                        gh.setTaiKhoan(account);
                        gh.setKichCo(kc.getKichCo());
                        gh.setSoLuong(order.getSoLuong());
                        gh.setGiamGia(shoes.getGiamGia());
                        gh.setGiaThanh(shoes.getGia());
                        if (GioHangDAO.save(gh) != null) {
                            resp.setValidated(true);
                        } else {
                            resp.addErrorMessages("err", "Xảy ra lỗi khi lưu");
                        }
                    } else {
                        resp.addErrorMessages("err", "Tham số không đúng");
                    }
                } else {
                    resp.addErrorMessages("err", "Hành động không cho phép");
                }
            } else {
                response.sendRedirect(request.getContextPath() + "/customer/login");
            }
        }
        return resp;
    }

    @Auth(role = Auth.Role.USER)
    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public ModelAndView getCart() {
        ModelAndView mv = new ModelAndView();

        mv.setViewName("website/customer/cart");
        return mv;
    }

    @RequestMapping(value = "/account", method = RequestMethod.GET)
    public ModelAndView getFormAccount() {
        ModelAndView mv = new ModelAndView();

        mv.setViewName("website/customer/account");
        return mv;
    }

}
