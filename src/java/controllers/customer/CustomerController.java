package controllers.customer;

import config.interceptor.Auth;
import dao.MixtureDAO;
import dao.TaiKhoanDAO;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import models.database.KhachHang;
import models.database.TaiKhoan;
import models.parameter.ParaLogin;
import models.parameter.ParaNewCustomer;
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
        session.invalidate();
        response.sendRedirect(request.getContextPath());
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public ValidationResponse login(@Valid @ModelAttribute ParaLogin account, BindingResult binding,
            HttpServletRequest request, HttpSession session) {
        ValidationResponse resp = new ValidationResponse();
        if (binding.hasErrors()) {
            resp.processError(binding.getFieldErrors());
        } else {
            TaiKhoan ac = TaiKhoanDAO.auth(account.getTenTaiKhoan(), account.getMatKhau());
            if (ac != null) {
                session.setAttribute("user_customer", ac);
                session.setAttribute("user_login", Auth.Role.USER);
                resp.setValidated(true);
                resp.setRedirect(request.getContextPath());
            } else {
                resp.addErrorMessages("common", "Tài khoản / mật khẩu không đúng");
            }
        }
        return resp;
    }

    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public ModelAndView index(HttpSession session, HttpServletResponse response,
            HttpServletRequest request) throws IOException, IOException {
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

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    @ResponseBody
    public ValidationResponse register(@Valid @ModelAttribute ParaNewCustomer newaccout, BindingResult bindingResult) {
        ValidationResponse resp = new ValidationResponse();
        if (bindingResult.hasErrors()) {
            resp.processError(bindingResult.getFieldErrors());
        } else {
            if(TaiKhoanDAO.checkExistUsername(newaccout.getTenTaiKhoan()) ==false){
                KhachHang kh = newaccout.convertToNewKhachHang();
                TaiKhoan tk = newaccout.convertToNewTaiKhoan();
                
                if(MixtureDAO.register(tk, kh)){
                    resp.setValidated(true);
                }
                else {
                    resp.setAlert(true);
                    resp.addErrorMessages("","Lưu thất bại ");
                }
            }
            else {
                resp.addErrorMessages("common","Tên tài khoản đã tồn tại");
            }
        }
        return resp;
    }
}
