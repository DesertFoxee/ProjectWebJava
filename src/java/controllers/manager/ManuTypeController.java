package controllers.manager;

import config.interceptor.Auth;
import dao.GiayDAO;
import dao.HangGiayDAO;
import dao.LoaiGiayDAO;
import java.util.Map;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import models.HangGiay;
import models.LoaiGiay;
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
public class ManuTypeController {

    //--- Manufacturer
    @Auth(role = Auth.Role.ADMIN)
    @RequestMapping(value = "/manu/add", method = RequestMethod.GET)
    public ModelAndView fromAddManu() {
        ModelAndView mv = new ModelAndView();
        String path = "partialview/manager/";
        mv.setViewName(path + "manu/add");
        return mv;
    }

    @Auth(role = Auth.Role.ADMIN)
    @ResponseBody
    @RequestMapping(value = "/manu/add", method = RequestMethod.POST)
    public ValidationResponse addType(@ModelAttribute @Valid HangGiay manu,
            BindingResult binding) {
        ValidationResponse resp = new ValidationResponse();
        resp.setValidated(false);
        if (binding.hasErrors()) {
            Map<String, String> errors = binding.getFieldErrors().stream()
                    .collect(
                            Collectors.toMap(FieldError::getField, FieldError::getDefaultMessage)
                    );
            resp.setErrorMessages(errors);
        } else {
            if (HangGiayDAO.save(manu)) {
                resp.setValidated(true);
            } else {
                resp.addErrorMessages("common", "Có lỗi xảy ra khi thêm !");
            }
        }
        return resp;
    }

    @Auth(role = Auth.Role.ADMIN)
    @ResponseBody
    @RequestMapping(value = "/manu/delete", method = RequestMethod.POST)
    public ValidationResponse deleteManu(@RequestParam("ma") String maHang,
            HttpServletResponse response) {
        ValidationResponse resp = new ValidationResponse();

        Integer id_manu = Integer.parseInt(maHang);
        if (HangGiayDAO.delete(id_manu)) {
            resp.setValidated(true);
        } else {
            resp.setValidated(false);
            resp.addErrorMessages("err", " Xóa thất bại : Lỗi máy chủ !");
        }
        return resp;
    }

    @Auth(role = Auth.Role.ADMIN)
    @RequestMapping(value = "/manu/edit", method = RequestMethod.GET)
    public ModelAndView fromEditManu(@RequestParam("ma") String mahang) {
        ModelAndView mv = new ModelAndView();

        String path = "partialview/manager/";
        Integer maHang = Integer.parseInt(mahang);

        HangGiay manu = HangGiayDAO.exists(maHang);
        mv.addObject("manu", manu);
        mv.setViewName(path + "manu/edit");

        return mv;
    }

    @Auth(role = Auth.Role.ADMIN)
    @ResponseBody
    @RequestMapping(value = "/manu/edit", method = RequestMethod.POST)
    public ValidationResponse editManu(@ModelAttribute @Valid HangGiay manu,
            BindingResult binding) {
        ValidationResponse resp = new ValidationResponse();
        resp.setValidated(false);
        if (binding.hasErrors()) {
            Map<String, String> errors = binding.getFieldErrors().stream()
                    .collect(
                            Collectors.toMap(FieldError::getField, FieldError::getDefaultMessage)
                    );
            resp.setErrorMessages(errors);
        } else {
            if (HangGiayDAO.update(manu)) {
                resp.setValidated(true);
            } else {
                resp.addErrorMessages("common", "Có lỗi xảy ra trong khi update !");
            }
        }
        return resp;
    }

    // Type 
    @Auth(role = Auth.Role.ADMIN)
    @RequestMapping(value = "/type/add", method = RequestMethod.GET)
    public ModelAndView fromAddType() {
        ModelAndView mv = new ModelAndView();
        String path = "partialview/manager/";
        mv.setViewName(path + "type/add");
        return mv;
    }

    @Auth(role = Auth.Role.ADMIN)
    @ResponseBody
    @RequestMapping(value = "/type/add", method = RequestMethod.POST)
    public ValidationResponse addType(@ModelAttribute @Valid LoaiGiay type,
            BindingResult binding) {
        ValidationResponse resp = new ValidationResponse();
        resp.setValidated(false);
        if (binding.hasErrors()) {
            Map<String, String> errors = binding.getFieldErrors().stream()
                    .collect(
                            Collectors.toMap(FieldError::getField, FieldError::getDefaultMessage)
                    );
            resp.setErrorMessages(errors);
        } else {
            if (LoaiGiayDAO.save(type)) {
                resp.setValidated(true);
            } else {
                resp.addErrorMessages("common", "Có lỗi xảy ra khi thêm !");
            }
        }
        return resp;
    }

    @Auth(role = Auth.Role.ADMIN)
    @ResponseBody
    @RequestMapping(value = "/type/delete", method = RequestMethod.POST)
    public ValidationResponse deleteType(@RequestParam("ma") String maloaigiay,
            HttpServletResponse response) {
        ValidationResponse resp = new ValidationResponse();

        Integer id_type = Integer.parseInt(maloaigiay);
        if (LoaiGiayDAO.delete(id_type)) {
            resp.setValidated(true);
        } else {
            resp.setValidated(false);
            resp.addErrorMessages("err", " Xóa thất bại : Lỗi máy chủ !");
        }
        return resp;
    }

    @Auth(role = Auth.Role.ADMIN)
    @RequestMapping(value = "/type/edit", method = RequestMethod.GET)
    public ModelAndView fromEditShoes(@RequestParam("ma") String maloaigiay) {
        ModelAndView mv = new ModelAndView();

        String path = "partialview/manager/";
        Integer maLoaiGiay = Integer.parseInt(maloaigiay);

        LoaiGiay type = LoaiGiayDAO.exists(maLoaiGiay);
        mv.addObject("type", type);
        mv.setViewName(path + "type/edit");

        return mv;
    }

    @Auth(role = Auth.Role.ADMIN)
    @ResponseBody
    @RequestMapping(value = "/type/edit", method = RequestMethod.POST)
    public ValidationResponse editType(@ModelAttribute @Valid LoaiGiay type,
            BindingResult binding) {
        ValidationResponse resp = new ValidationResponse();
        resp.setValidated(false);
        if (binding.hasErrors()) {
            Map<String, String> errors = binding.getFieldErrors().stream()
                    .collect(
                            Collectors.toMap(FieldError::getField, FieldError::getDefaultMessage)
                    );
            resp.setErrorMessages(errors);
        } else {
            if (LoaiGiayDAO.update(type)) {
                resp.setValidated(true);
            } else {
                resp.addErrorMessages("common", "Có lỗi xảy ra trong khi update !");
            }
        }
        return resp;
    }
}
