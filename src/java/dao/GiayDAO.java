package dao;

import java.util.List;
import models.Giay;
import org.hibernate.Session;
import util.HibernateUtil;


public class GiayDAO {
    
    public static List<Giay> getAllShoes(){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List<Giay> a_shoes = session.createQuery("from Giay").list();
        return a_shoes;
    }
}
