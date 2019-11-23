package config.interceptor;

import java.lang.reflect.Method;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class AuthInterceptor implements HandlerInterceptor {

    private static final String ad_controller_name = "manager";
    private static final String cs_controller_name = "custom";

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
            Object handler) throws Exception {
        
        HandlerMethod handler_menthod ;
        if (handler instanceof HandlerMethod) {
            handler_menthod = (HandlerMethod) handler;
        }
        else {
             response.sendError(404);
             return false;
        }

        String name_controller = handler_menthod.getBeanType().getSimpleName().toLowerCase();

        boolean access_admin = name_controller.contains(ad_controller_name);
        boolean access_custom = name_controller.contains(cs_controller_name);

        Method method = handler_menthod.getMethod();

        Auth role_anntation = method.getAnnotation(Auth.class);

        // system allow
        Auth.Role sys_role = role_anntation != null ? role_anntation.role() : Auth.Role.ANY;

        HttpSession session = request.getSession();

        boolean isLogin = session.getAttribute("user_login") != null;
        // user 
        Auth.Role user_role = isLogin ? (Auth.Role) session.getAttribute("user_login") : Auth.Role.ANY;

        if ( sys_role  != Auth.Role.ANY) { 
            if (!isLogin) {
                if (access_admin) {
                    response.sendRedirect(request.getContextPath()+"/manager");
                } else if (access_custom) {
                    response.sendRedirect("customer");
                }
                return false;
            } else {
                if (sys_role != user_role) {
                    response.sendError(403);
                    return false;
                }
            }
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response,
            Object hanlder, ModelAndView mv) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response,
            Object hanlder, Exception ex) throws Exception {

    }
}
