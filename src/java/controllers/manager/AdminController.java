package controllers.manager;

import config.interceptor.Auth;
import dao.QuanTriDAO;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import models.QuanTri;
import models.QuanTriThay;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import validation.ValidationResponse;

@Controller
@RequestMapping(value = "manager")
public class AdminController {

    @Auth(role = Auth.Role.ADMIN)
    @ResponseBody
    @RequestMapping(value = "/admin/edit", method = RequestMethod.POST)
    public ValidationResponse editUser(@Valid @ModelAttribute QuanTriThay admin,
            BindingResult binding, HttpSession session) {
        ValidationResponse resp = new ValidationResponse();
        resp.setValidated(false);
        if (binding.hasErrors()) {
            resp.processError(binding.getFieldErrors());
        } else {
            Integer user_id = Integer.parseInt(session.getAttribute("user_id").toString());
            boolean is_true = QuanTriDAO.checkPass(user_id, admin.getMaKhauCu());

            if (is_true == true) {
                QuanTri quantri = new QuanTri();
                quantri.setMaQuantri(admin.getMaQuantri());
                quantri.setTenTaiKhoan(admin.getTenTaiKhoan());
                quantri.setMatKhau(admin.getMatKhauMoi());
                if (QuanTriDAO.update(quantri)) {
                    resp.setValidated(true);
                } else {
                    resp.addErrorMessages("common", "Cập nhật khách hàng thất bại!");
                }
            } else {
                resp.addErrorMessages("common", "Lỗi hệ thống");
            }
        }
        return resp;
    }
}
