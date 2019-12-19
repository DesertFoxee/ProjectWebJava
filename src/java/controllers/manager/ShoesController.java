package controllers.manager;

import config.interceptor.Auth;
import dao.GiayDAO;
import dao.HangGiayDAO;
import dao.HinhAnhDAO;
import dao.KichCoDAO;
import dao.LoaiGiayDAO;
import helper.FileHelper;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import models.parameter.ParaSize;
import models.database.Giay;
import models.database.HangGiay;
import models.database.HinhAnh;
import models.database.KichCo;
import models.database.LoaiGiay;
import models.parameter.ParaNewShoes;
import models.parameter.ParaShoes;
import models.parameter.SizeNew;
import models.parameter.SizeUpdate;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
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
    @RequestMapping(value = "/shoes/add", method = RequestMethod.POST,
            consumes = "application/json")
    public ValidationResponse addShoes(@RequestBody @Valid ParaNewShoes para_shoes, BindingResult binding) {
        ValidationResponse resp = new ValidationResponse();
        resp.setValidated(false);
        if (binding.hasErrors()) {
            resp.processError(binding.getFieldErrors());
        } else {
            Integer manu_id = Integer.parseInt(para_shoes.getShoes().getMaHangGiay());
            Integer type_id = Integer.parseInt(para_shoes.getShoes().getMaLoaiGiay());
            HangGiay manu = HangGiayDAO.exists(manu_id);
            LoaiGiay type = LoaiGiayDAO.exists(type_id);
            Giay shoes = para_shoes.getShoes().convertGiay(manu, type);
            shoes = GiayDAO.save(shoes);
            if (shoes != null) {
                for (SizeNew sizeNew : para_shoes.getNewSize()) {
                    KichCo kc = sizeNew.convertKichCo(shoes);
                    KichCoDAO.save(kc);
                }
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
            HttpServletRequest request) {
        ValidationResponse resp = new ValidationResponse();

        Integer shoes_id = Integer.parseInt(maGiay);
        
        String path_save = request.getServletContext().getRealPath("resources/images/shoes");
        
        List<HinhAnh> lkc = HinhAnhDAO.getImageShoes(shoes_id);
        for (HinhAnh kc : lkc) {
            FileHelper.deletFile(path_save, kc.getLink());
        }
        KichCoDAO.deleteSizeShoes(shoes_id);
        HinhAnhDAO.deleteImageShoes(shoes_id);
        
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
        mv.addObject("list_size", KichCoDAO.getSizeShoes(magiay));
        mv.setViewName(path + "shoes/edit");

        return mv;
    }

    @Auth(role = Auth.Role.ADMIN)
    @ResponseBody
    @RequestMapping(value = "/shoes/edit", method = RequestMethod.POST,
            consumes = "application/json")
    public ValidationResponse editShoes(@RequestBody @Valid ParaShoes para_shoes, BindingResult binding) {
        ValidationResponse resp = new ValidationResponse();
        resp.setValidated(false);
        if (binding.hasErrors()) {
            resp.processError(binding.getFieldErrors());
        } else {
            Integer manu_id = Integer.parseInt(para_shoes.getMaHangGiay());
            Integer type_id = Integer.parseInt(para_shoes.getMaLoaiGiay());
            
            HangGiay manu = HangGiayDAO.exists(manu_id);
            LoaiGiay type = LoaiGiayDAO.exists(type_id);

            Giay shoes = para_shoes.convertGiay(manu, type);

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

    @Auth(role = Auth.Role.ADMIN)
    @ResponseBody
    @RequestMapping(value = "/shoes/edit/size/update",
            consumes = "application/json",
            produces = "application/json",
            method = RequestMethod.POST)
    public ModelAndView updateSizeShoes(
            @RequestBody ParaSize sizes) {
        ModelAndView mv = new ModelAndView();
        String path = "partialview/manager/";
        Integer shoes_id = Integer.parseInt(sizes.getShoesID());
        Giay shoes = GiayDAO.exists(shoes_id);
        if (shoes != null) {
            if (sizes.getOldSize().size() > 0) {
                for (SizeUpdate m_size : sizes.getOldSize()) {
                    KichCo _size = m_size.convertKichCo(shoes);
                    KichCoDAO.update(_size);
                }
            }
            for (SizeNew m_size : sizes.getNewSize()) {
                KichCo _size = m_size.convertKichCo(shoes);
                KichCoDAO.save(_size);
            }
            for (String size_id : sizes.getDeleteSize()) {
                KichCoDAO.delete(Integer.parseInt(size_id));
            }
        }
        mv.setViewName(path + "shoes/size");
        mv.addObject("obj", KichCoDAO.getSizeShoes(shoes_id));
        return mv;
    }
}
