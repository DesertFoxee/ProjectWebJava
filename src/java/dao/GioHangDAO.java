package dao;

import java.util.List;
import models.database.Giay;
import models.database.GioHang;

public class GioHangDAO extends AbstractGenericDao {

    public static GioHang save(GioHang h) {
        beginTransaction();
        try {
            Session().save(h);
            commitTransaction();
            return h;
        } catch (Exception e) {
            Transaction().rollback();
            return null;
        }
    }

    public static List<GioHang> getCartAccountID(Integer id_account) {
        beginTransaction();
        List<GioHang> cart = null;
        try {
            cart = Session().createQuery("from GioHang gh \n"
                    + "join fetch gh.giay\n"
                    + "where gh.taiKhoan.maTaiKhoan = :id \n")
                    .setParameter("id", id_account)
                    .list();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
            cart = null;
        }
        return cart;
    }

    public static GioHang checkShoesSizeCart(Integer magiay, Integer mataikhoan, Integer kichco) {
        beginTransaction();
        GioHang gh = null;
        try {
            gh = (GioHang) Session().createQuery("from  GioHang g\n"
                    + "where g.giay.maGiay = :magiay\n"
                    + "and g.kichCo = :kichco\n"
                    + "and g.taiKhoan.maTaiKhoan = :mataikhoan")
                    .setInteger("mataikhoan", mataikhoan)
                    .setInteger("kichco", kichco)
                    .setInteger("magiay", magiay)
                    .uniqueResult();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
            gh = null;
        }
        return gh;
    }

    public static boolean update(GioHang gh) {
        beginTransaction();
        try {
            Session().update(gh);
            commitTransaction();
            return true;
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }
}
