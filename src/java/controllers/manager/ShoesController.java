package controllers.manager;

import config.interceptor.Auth;
import dao.GiayDAO;
import dao.HangGiayDAO;
import dao.HinhAnhDAO;
import dao.LoaiGiayDAO;
import helper.FileHelper;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import models.Giay;
import models.HangGiay;
import models.HinhAnh;
import models.LoaiGiay;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import validation.ValidationResponse;

@Controller
@RequestMapping(value = "manager")
public class ShoesController {

    //--- Add
    @Auth(role = Auth.Role.ADMIN)
    @RequestMapping(value = "/shoes/add", method = RequestMethod.GET)
    public ModelAndView fromAddShoes() {
        ModelAndView mv = new ModelAndView();
        String path = "partialview/manager/";

        mv.addObject("list_manu", HangGiayDAO.getAllManufacturer());
        mv.addObject("list_type", LoaiGiayDAO.getAllType());
        mv.setViewName(path + "shoes/add");
        return mv;
    }

    @Auth(role = Auth.Role.ADMIN)
    @ResponseBody
    @RequestMapping(value = "/shoes/add", method = RequestMethod.POST)
    public ValidationResponse addShoes(@ModelAttribute @Valid Giay giay, BindingResult binding,
            @RequestParam("maHangGiay") String maHangGiay,
            @RequestParam("maLoaiGiay") String maLoaiGiay) {
        ValidationResponse resp = new ValidationResponse();
        resp.setValidated(false);
        if (binding.hasErrors()) {
            resp.processError(binding.getFieldErrors());
        } else {

            HangGiay manu = HangGiayDAO.exists(Integer.parseInt(maHangGiay));
            LoaiGiay type = LoaiGiayDAO.exists(Integer.parseInt(maLoaiGiay));
            giay.setHangGiay(manu);
            giay.setLoaiGiay(type);
            if (GiayDAO.save(giay)) {
                resp.setValidated(true);
            } else {
                resp.addErrorMessages("common", "Có lỗi xảy ra khi thêm !");
            }
        }
        return resp;
    }

    //--- Delete
    @Auth(role = Auth.Role.ADMIN)
    @ResponseBody
    @RequestMapping(value = "/shoes/delete", method = RequestMethod.POST)
    public ValidationResponse deleteShoes(@RequestParam("ma") String maGiay,
            HttpServletResponse response) {
        ValidationResponse resp = new ValidationResponse();

        Integer shoes_id = Integer.parseInt(maGiay);
        if (GiayDAO.delete(shoes_id)) {
            resp.setValidated(true);
        } else {
            resp.setValidated(false);
            resp.addErrorMessages("err", " Xóa thất bại : Lỗi máy chủ !");
        }
        return resp;
    }

    //--- Edit
    @Auth(role = Auth.Role.ADMIN)
    @RequestMapping(value = "/shoes/edit", method = RequestMethod.GET)
    public ModelAndView fromEditShoes(@RequestParam("ma") String maGiay) {
        ModelAndView mv = new ModelAndView();

        String path = "partialview/manager/";
        Integer magiay = Integer.parseInt(maGiay);

        Giay shoes = GiayDAO.getShoesID(magiay);
        mv.addObject("shoes", shoes);
        mv.addObject("list_manu", HangGiayDAO.getAllManufacturer());
        mv.addObject("list_type", LoaiGiayDAO.getAllType());
        mv.setViewName(path + "shoes/edit");

        return mv;
    }

    @Auth(role = Auth.Role.ADMIN)
    @ResponseBody
    @RequestMapping(value = "/shoes/edit", method = RequestMethod.POST)
    public ValidationResponse editShoes(@ModelAttribute @Valid Giay shoes, BindingResult binding,
            @RequestParam("maHangGiay") String maHangGiay,
            @RequestParam("maLoaiGiay") String maLoaiGiay) {
        ValidationResponse resp = new ValidationResponse();
        resp.setValidated(false);
        if (binding.hasErrors()) {
            Map<String, String> errors = binding.getFieldErrors().stream()
                    .collect(
                            Collectors.toMap(FieldError::getField, FieldError::getDefaultMessage)
                    );
            resp.setErrorMessages(errors);
        } else {
            HangGiay manu = HangGiayDAO.exists(Integer.parseInt(maHangGiay));
            LoaiGiay type = LoaiGiayDAO.exists(Integer.parseInt(maLoaiGiay));
            shoes.setHangGiay(manu);
            shoes.setLoaiGiay(type);
            if (GiayDAO.update(shoes)) {
                resp.setValidated(true);
            } else {
                resp.addErrorMessages("common", "Có lỗi xảy ra trong khi update !");
            }
        }
        return resp;
    }

    //--- Image
    @Auth(role = Auth.Role.ADMIN)
    @RequestMapping(value = "/shoes/image", method = RequestMethod.GET)
    public ModelAndView showImageShoes(@RequestParam("maGiay") String maGiay,
            @RequestParam("new") String i_new) {
        ModelAndView mv = new ModelAndView();
        String path = "partialview/manager/";
        if ("true".equals(i_new)) {
            mv.addObject("new_image", "true");
        } else {
            Integer magiay = Integer.parseInt(maGiay);
            List images = HinhAnhDAO.getImageShoes(magiay);
            mv.addObject("image_shoes", images);
        }
        mv.setViewName(path + "shoes/image");
        return mv;
    }

    @Auth(role = Auth.Role.ADMIN)
    @ResponseBody
    @RequestMapping(value = "/shoes/image", method = RequestMethod.POST,
            consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public ValidationResponse uploadImageShoes(@RequestParam("maGiay") String maGiay,
            MultipartHttpServletRequest request) {
        ValidationResponse resp = new ValidationResponse();
        Map<String, MultipartFile> fileMap = request.getFileMap();

        int upload_failed = 0;
        String path_save = request.getServletContext().getRealPath("resources/images/shoes");
        SimpleDateFormat formatter = new SimpleDateFormat("HHmmssyyyyMMdd");

        Date date = new Date();
        HinhAnh image = new HinhAnh();
        Giay giay = GiayDAO.exists(Integer.parseInt(maGiay));
        image.setGiay(giay);
        for (MultipartFile file : fileMap.values()) {
            String file_name = "Image_" + maGiay + formatter.format(date);

            String extension = FileHelper.getExtensionFile(file);
            if (extension != null) {
                file_name = file_name + "." + extension;
                if (!FileHelper.uploadImage(file, path_save, file_name)) {
                    upload_failed++;
                } else {
                    image.setLink(file_name);
                    if (!HinhAnhDAO.save(image)) {
                        upload_failed++;
                        FileHelper.deletFile(path_save, file_name);
                    }
                }
            }
        }
        if (upload_failed == 0) {
            resp.setValidated(true);
        } else {
            resp.setValidated(false);
            resp.addErrorMessages("err", "[UPLOAD] :" + upload_failed + " không thành công !");
        }
        return resp;
    }

    @Auth(role = Auth.Role.ADMIN)
    @ResponseBody
    @RequestMapping(value = "/shoes/image/delete", method = RequestMethod.GET)
    public ValidationResponse deleteImageShoes(@RequestParam("id_image") String id_image,
            HttpServletRequest request) {
        ValidationResponse resp = new ValidationResponse();

        String path_save = request.getServletContext().getRealPath("resources/images/shoes");

        Integer id = Integer.parseInt(id_image);
        HinhAnh a = HinhAnhDAO.exists(id);

        if (a.getLink() != null) {
            FileHelper.deletFile(path_save, a.getLink());
        }

        HinhAnhDAO.delete(Integer.parseInt(id_image));

        return resp;
    }
}
