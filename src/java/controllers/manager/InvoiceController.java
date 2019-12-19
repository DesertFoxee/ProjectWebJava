package controllers.manager;

import config.interceptor.Auth;
import dao.ChiTietHoaDonDAO;
import dao.KhachHangDAO;
import java.util.List;
import models.database.ChiTietHoaDon;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import validation.ValidationResponse;



@Controller
@RequestMapping(value = "manager")
public class InvoiceController {
    
    @Auth(role = Auth.Role.ADMIN)
    @ResponseBody
    @RequestMapping(value = "/invoice/delete", method = RequestMethod.POST)
    public ValidationResponse deleteInvoice(@RequestParam("ma") String mahoadon) {
        ValidationResponse resp = new ValidationResponse();
        Integer MaHoaDon = Integer.parseInt(mahoadon);
        if (KhachHangDAO.delete(MaHoaDon)) {
            resp.setValidated(true);
        } else {
            resp.setValidated(false);
            resp.addErrorMessages("err", " Xóa thất bại : Lỗi máy chủ !");
        }
        return resp;
    }
    
    @Auth(role = Auth.Role.ADMIN)
    @RequestMapping(value = "/invoice/edit", method = RequestMethod.GET)
    public ModelAndView fromEditInvoice(@RequestParam("ma") String mahoadon) {
        
        ModelAndView mv = new ModelAndView();
        String path = "partialview/manager/";
        Integer MaHoaDon = Integer.parseInt(mahoadon);

        List detail_invoice = ChiTietHoaDonDAO.getDetailInvoiceID(MaHoaDon);
        mv.addObject("detail_invoice", detail_invoice);
        mv.setViewName(path + "invoice/edit");
        return mv;
    }
}
