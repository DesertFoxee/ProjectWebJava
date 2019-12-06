package controllers.manager;

import config.interceptor.Auth;
import dao.KhachHangDAO;
import dao.TaiKhoanDAO;
import java.util.Map;
import java.util.stream.Collectors;
import javax.validation.Valid;
import models.KhachHang;
import models.TaiKhoan;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import validation.ValidationResponse;

@Controller
@RequestMapping(value = "manager")
public class AccountController {

    @Auth(role = Auth.Role.ADMIN)
    @ResponseBody
    @RequestMapping(value = "/account/delete", method = RequestMethod.POST)
    public ValidationResponse deleteUser(@RequestParam("ma") String mataikhoan) {
        ValidationResponse resp = new ValidationResponse();
        Integer MaTaiKhoan = Integer.parseInt(mataikhoan);
        if (TaiKhoanDAO.delete(MaTaiKhoan)) {
            resp.setValidated(true);
        } else {
            resp.setValidated(false);
            resp.addErrorMessages("err", " Xóa thất bại : Lỗi máy chủ !");
        }
        return resp;
    }

    @Auth(role = Auth.Role.ADMIN)
    @RequestMapping(value = "/account/edit", method = RequestMethod.GET)
    public ModelAndView fromEditAccount(@RequestParam("ma") String mataikhoan) {

        ModelAndView mv = new ModelAndView();
        String path = "partialview/manager/";
        Integer MaKhachHang = Integer.parseInt(mataikhoan);

        TaiKhoan account = TaiKhoanDAO.getAccountID(MaKhachHang);
        mv.addObject("account", account);
        mv.setViewName(path + "account/edit");
        return mv;
    }

    @Auth(role = Auth.Role.ADMIN)
    @ResponseBody
    @RequestMapping(value = "/account/edit", method = RequestMethod.POST)
    public ValidationResponse editAccount(@Valid @ModelAttribute TaiKhoan account,BindingResult binding,
            @Valid @ModelAttribute KhachHang customer,BindingResult bindingcus
            ) {

        ValidationResponse resp = new ValidationResponse();
        resp.setValidated(false);
        if (binding.hasErrors() || bindingcus.hasErrors()) {
            resp.processError(binding.getFieldErrors());
            resp.processError(bindingcus.getFieldErrors());
        } else {
            TaiKhoan acc = TaiKhoanDAO.getAccountID(account.getMaTaiKhoan());
            if (acc.getKhachHang() != null) {
                customer.setMaKhachHang(acc.getKhachHang().getMaKhachHang());
                if (KhachHangDAO.update(customer)) {
                    account.setKhachHang(customer);
                    if (TaiKhoanDAO.update(account)) {
                        resp.setValidated(true);
                    } else {
                        resp.addErrorMessages("common", "Cập nhật tài khoản thất bại!");
                    }
                } else {
                    resp.addErrorMessages("common", "Cập nhật khách hàng thất bại!");
                }
            } else {
                resp.addErrorMessages("common", "Lỗi cập nhật !");
            }
        }
        return resp;
    }
}
