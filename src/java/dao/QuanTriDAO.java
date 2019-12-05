package dao;

import java.util.List;
import models.QuanTri;

public class QuanTriDAO extends AbstractGenericDao {

    public static boolean validate(QuanTri admin) {

        beginTransaction();
        boolean auth = false;
        try {
            List admins = Session().createQuery("from QuanTri where TenTaiKhoan =:username and MatKhau =:password")
                    .setParameter("username", admin.getTenTaiKhoan())
                    .setParameter("password", admin.getMatKhau())
                    .list();
            auth = admins.size() > 0;
            commitTransaction();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return auth;
    }

    public static QuanTri exists(QuanTri admin) {

        beginTransaction();
        QuanTri ad = null;
        try {
            ad = (QuanTri) Session().createQuery("from QuanTri where TenTaiKhoan =:username and MatKhau =:password")
                    .setParameter("username", admin.getTenTaiKhoan())
                    .setParameter("password", admin.getMatKhau())
                    .uniqueResult();
            commitTransaction();
        } catch (Exception e) {
            e.printStackTrace();
            ad = null;
        }
        return ad;
    }

    public static boolean checkPass(Integer id, String pass) {

        beginTransaction();
        boolean result = false;
        try {
            QuanTri temp = (QuanTri) Session().createQuery("from QuanTri where MatKhau =:password and MaQuanTri =:id")
                    .setInteger("id", id)
                    .setParameter("password", pass)
                    .uniqueResult();
            commitTransaction();
            if (temp != null) {
                result = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            result = false;
        }
        return result;
    }

    public static boolean update(QuanTri admin) {
        beginTransaction();
        try {
            Session().update(admin);
            commitTransaction();
            return true;
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }
}
