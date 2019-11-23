package controllers.manager;

import config.interceptor.Auth;
import dao.QuanTriDAO;
import java.io.IOException;
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
public class ManagerController {
    
    @Auth(role= Auth.Role.ADMIN)
    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("manager/dashboard");
        return mv;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String showlogin(Model model) {
        model.addAttribute("admin", new QuanTri());
        return "manager/login";
    }
    
    
    @RequestMapping(method = RequestMethod.POST)
    public String login(@Valid @ModelAttribute("admin") QuanTri admin,HttpSession session, 
            BindingResult binding, Model model ) {
        if(binding.hasErrors()){
            return "manager/login";
        }
        else {
            if (QuanTriDAO.validate(admin)) {
                session.setAttribute("user_login", Auth.Role.ADMIN);
                return "redirect:" + "manager/dashboard";
            } else {
                model.addAttribute("incorrect", "Tài khoản mật khẩu không đúng");
                return "manager/login";
            }
        }
    }
    
    @Auth(role= Auth.Role.ADMIN)
    @RequestMapping(value ="/logout" , method =RequestMethod.GET)
    public void logout(HttpServletResponse response , HttpServletRequest request , HttpSession session) throws IOException{
        session.removeAttribute("user_login");
        
        response.sendRedirect(request.getContextPath());
    }
}
