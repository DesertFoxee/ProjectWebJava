package controllers.manager;

import config.interceptor.Auth;
import dao.GiayDAO;
import dao.HangGiayDAO;

import dao.HoaDonDAO;
import dao.LoaiGiayDAO;
import dao.QuanTriDAO;
import dao.TaiKhoanDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
@RequestMapping(value = "manager")
public class DashboardController {

    @RequestMapping(method = RequestMethod.GET)
    public String showlogin(Model model) {
        model.addAttribute("admin", new QuanTri());
        return "manager/login";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String login(@Valid @ModelAttribute("admin") QuanTri admin, BindingResult binding,
            HttpSession session, Model model) {
        if (binding.hasErrors()) {
            return "manager/login";
        } else {
            QuanTri ad = QuanTriDAO.exists(admin);
            if (ad != null) {
                session.setAttribute("user_login", Auth.Role.ADMIN);
                session.setAttribute("user_id",ad.getMaQuantri());
                return "redirect:" + "manager/dashboard";
            } else {
                model.addAttribute("incorrect", "Tài khoản mật khẩu không đúng");
                return "manager/login";
            }
        }
    }

    // page dashboard
    @Auth(role = Auth.Role.ADMIN)
    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("c_shoes", GiayDAO.getSize());
        mv.addObject("c_invoice", HoaDonDAO.getSize());
        mv.addObject("c_account", TaiKhoanDAO.getSize());

        mv.setViewName("manager/dashboard");
        return mv;
    }

    // page shoes manager
    @Auth(role = Auth.Role.ADMIN)
    @RequestMapping(value = "/shoes", method = RequestMethod.GET)
    public ModelAndView shoesManager() {
        ModelAndView mv = new ModelAndView();
        List shoes = GiayDAO.getAllShoes();
        mv.addObject("l_shoes", shoes);

        mv.setViewName("manager/shoes");
        return mv;
    }

    // page manufacturer and type shoes 
    @Auth(role = Auth.Role.ADMIN)
    @RequestMapping(value = "/manufacturer", method = RequestMethod.GET)
    public ModelAndView managerManufacturerAndType() {
        ModelAndView mv = new ModelAndView();

        mv.setViewName("manager/manufacturer");
        mv.addObject("manus", HangGiayDAO.getAllManufacturer());
        mv.addObject("types", LoaiGiayDAO.getAllType());
        return mv;
    }

    // page customer shoes
    @Auth(role = Auth.Role.ADMIN)
    @RequestMapping(value = "/account", method = RequestMethod.GET)
    public ModelAndView managerCustomer() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("manager/account");

        mv.addObject("accounts", TaiKhoanDAO.getAllAccount());
        return mv;
    }

    // page invoice shoes
    @Auth(role = Auth.Role.ADMIN)
    @RequestMapping(value = "/invoice", method = RequestMethod.GET)
    public ModelAndView managerInvoice() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("manager/invoice");
        mv.addObject("invoices", HoaDonDAO.getAllInvoice());
        return mv;
    }

    // page account shoes
    @Auth(role = Auth.Role.ADMIN)
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public ModelAndView managerAccount() {
        ModelAndView mv = new ModelAndView();

        QuanTri admin = new QuanTri(1, "admin", "admin");

        mv.setViewName("manager/user");
        mv.addObject("admin", admin);
        return mv;
    }

    // logout page manager 
    @Auth(role = Auth.Role.ADMIN)
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public void logout(HttpServletResponse response, HttpServletRequest request, HttpSession session) throws IOException {
        session.removeAttribute("user_login");

        response.sendRedirect(request.getContextPath());
    }

}
