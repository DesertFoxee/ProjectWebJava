package dao;

import java.util.List;
import models.Giay;
import org.hibernate.Session;
import util.HibernateUtil;


public class GiayDAO {
    
    private static final Session session = HibernateUtil.getSessionFactory().getCurrentSession();

    public static List<Giay> getAllShoes(){
        session.beginTransaction();
        List<Giay> a_shoes = session.createQuery("from Giay").list();
        return a_shoes;
    }
}
