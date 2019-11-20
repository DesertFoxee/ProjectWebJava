package dao;

import java.util.List;
import models.QuanTri;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.type.StandardBasicTypes;
import util.HibernateUtil;


public class QuanTriDAO {
 
    private static final SessionFactory f_session = HibernateUtil.getSessionFactory();
    
    public static boolean  validate(QuanTri admin){
        //begin transection 
        Session session = f_session.getCurrentSession();
        session.beginTransaction();
        
        // query 
        String hql = "from QuanTri where TenTaiKhoan =:username and MatKhau =:password";
        
        Query query = session.createQuery(hql);
        // set paramater 
        query.setParameter("username", admin.getTenTaiKhoan() , StandardBasicTypes.STRING);
        query.setParameter("password", admin.getMatKhau() , StandardBasicTypes.STRING);
        
        // execute query => list()
        List admins =query.list();
        if(admins.size() > 0){
            return true;
        }
        return false;
    }
}
