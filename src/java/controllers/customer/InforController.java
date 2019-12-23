package controllers.customer;

import dao.KhachHangDAO;
import dao.TaiKhoanDAO;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import models.database.KhachHang;
import models.database.TaiKhoan;
import models.parameter.ParaCustomer;
import models.parameter.ParaPass;
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

public class InforController {

    @RequestMapping(value = "/dashboard/account", method = RequestMethod.GET)
    public ModelAndView infor(HttpSession session, HttpServletResponse response,
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
        mv.setViewName("website/customer/account");
        return mv;
    }

    @RequestMapping(value = "/dashboard/account/changeinfor", method = RequestMethod.POST)
    @ResponseBody
    public ValidationResponse changePass(@Valid @ModelAttribute ParaCustomer cus, BindingResult binding,
            HttpSession session) {

        ValidationResponse resp = new ValidationResponse();
        if (binding.hasErrors()) {
            resp.processError(binding.getFieldErrors());
        } else {
            TaiKhoan account = (TaiKhoan) session.getAttribute("user_customer");
            account = TaiKhoanDAO.getAccountID(account.getMaTaiKhoan());
            KhachHang kh = account.getKhachHang();

            kh.setDiaChi(cus.getDiaChi());
            kh.setSdt(cus.getSdt());
            kh.setTenKhachHang(cus.getTenKhachHang());

            if (KhachHangDAO.update(kh)) {
                resp.setValidated(true);
            } else {
                resp.setValidated(false);
                resp.setAlert(true);
                resp.addErrorMessages("err", "Lỗi xảy ra ! Cập nhật thất bại");
            }
        }
        return resp;
    }

    @RequestMapping(value = "/dashboard/account/changepass", method = RequestMethod.POST)
    @ResponseBody
    public ValidationResponse edit(@Valid @ModelAttribute ParaPass cus, BindingResult binding,
            HttpSession session) {

        ValidationResponse resp = new ValidationResponse();
        if (binding.hasErrors()) {
            resp.processError(binding.getFieldErrors());
        } else {
            TaiKhoan account = (TaiKhoan) session.getAttribute("user_customer");
            account = TaiKhoanDAO.getAccountID(account.getMaTaiKhoan());
            
            if (account.getMatKhau().equals(cus.getMatKhauCu())) {
                account.setMatKhau(cus.getMatKhau());
                if (TaiKhoanDAO.updatePass(account, cus.getMatKhau())) {
                    resp.setValidated(true);
                } else {
                    resp.setValidated(false);
                    resp.setAlert(true);
                    resp.addErrorMessages("err", "Lỗi xảy ra ! Cập nhật thất bại");
                }
            } else {
                resp.setValidated(false);
                resp.setAlert(true);
                resp.addErrorMessages("err", "Mật khẩu không chính xác");
            }
        }
        return resp;
    }
}
