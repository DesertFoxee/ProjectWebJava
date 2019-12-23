package controllers.customer;

import config.interceptor.Auth;
import dao.GiayDAO;
import dao.GioHangDAO;
import dao.TaiKhoanDAO;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import models.database.Giay;
import models.database.GioHang;
import models.database.TaiKhoan;
import models.parameter.ParaAddToCart;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import validation.ValidationResponse;

@Controller
@RequestMapping(value = "/customer")
public class CartController {

    @Auth(role = Auth.Role.USER)
    @RequestMapping(value = "/dashboard/cart", method = RequestMethod.GET)
    public ModelAndView index(HttpSession session, HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        ModelAndView mv = new ModelAndView();

        TaiKhoan account = (TaiKhoan) session.getAttribute("user_customer");
        if (account != null) {
            List<GioHang> gh = GioHangDAO.getCartAccountID(account.getMaTaiKhoan());
            mv.addObject("list_cart", gh);
        } else {
            response.sendRedirect(request.getContextPath() + "/customer/login");
            return null;
        }
        mv.setViewName("website/customer/cart");
        return mv;
    }

    @RequestMapping(value = "/dashboard/cart/delete", method = RequestMethod.POST)
    public ValidationResponse delete(@RequestParam("id") String idCart, HttpServletResponse response,
            HttpSession session, HttpServletRequest request) throws IOException {
        ValidationResponse resp = new ValidationResponse();
        resp.setValidated(false);
        TaiKhoan account = (TaiKhoan) session.getAttribute("user_customer");
        if (account != null) {
            resp.setValidated(true);
//            List<GioHang> gh = GioHangDAO.getCartAccountID(account.getMaTaiKhoan());
//            mv.addObject("items", gh);
        } else {
            response.sendRedirect(request.getContextPath() + "/customer/login");
            return null;
        }
        return resp;
    }

    @RequestMapping(value = "/dashboard/cart/confirm", method = RequestMethod.POST)
    public ValidationResponse confirm(@RequestParam("id") String id_cart, HttpServletResponse response,
            HttpSession session, HttpServletRequest request) throws IOException {
        ValidationResponse resp = new ValidationResponse();
        resp.setValidated(false);
        TaiKhoan account = (TaiKhoan) session.getAttribute("user_customer");
        if (account != null) {
            resp.setValidated(true);
//            List<GioHang> gh = GioHangDAO.getCartAccountID(account.getMaTaiKhoan());
//            mv.addObject("items", gh);
        } else {
            response.sendRedirect(request.getContextPath() + "/customer/login");
            return null;
        }
        return resp;
    }
    
    @RequestMapping(value = "/dashboard/cart/add", method = RequestMethod.POST)
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
                GioHang gh_exist = GioHangDAO.checkShoesSizeCart(shoes.getMaGiay(), account.getMaTaiKhoan(), order.getKichCo());
                if (account != null && shoes != null) {
                    if (gh_exist != null) {
                        gh_exist.setSoLuong(order.getSoLuong() + gh_exist.getSoLuong());
                    }
                    if (GiayDAO.checkOverSizeCount(shoes.getMaGiay(), order.getKichCo(),
                            order.getSoLuong()) == false) {
                        if (gh_exist != null) {
                            if (GioHangDAO.update(gh_exist)) {
                                resp.setValidated(true);
                                resp.addErrorMessages("cus", "Tiếp tục thêm" + order.getSoLuong() + " giày "
                                        + shoes.getTenGiay() + "vào giỏ hàng");
                            } else {
                                resp.addErrorMessages("err", "Tiếp tục thêm vào giỏ hàng thất bại");
                            }
                        } else {
                            GioHang gh = new GioHang(shoes, account, new Date(),
                                    order.getSoLuong(), shoes.getGia(), shoes.getGiamGia(), order.getKichCo());

                            if (GioHangDAO.save(gh) != null) {
                                resp.setValidated(true);
                                resp.addErrorMessages("cus", "Thêm mới " + order.getSoLuong() + " giày "
                                        + shoes.getTenGiay() + "vào giỏ hàng");
                            } else {
                                resp.addErrorMessages("err", "Thêm vào giỏ hàng thất bại");
                            }
                        }
                    } else {
                        resp.addErrorMessages("err", "Dữ liệu không hợp lệ");
                    }
                } else {
                    resp.addErrorMessages("err", "Hành động không cho phép / Dữ liệu không hợp lệ");
                }
            } else {
                resp.setRedirect(request.getContextPath() + "/customer/login");
            }
        }
        return resp;
    }

}
