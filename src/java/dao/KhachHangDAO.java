package dao;

import java.util.List;
import models.KhachHang;
import models.TaiKhoan;

public class KhachHangDAO extends AbstractGenericDao {

    public static int getSize() {
        beginTransaction();
        int count = 0;
        try {
            String count_str = execQueryReturnOneValue("select count(maKhachHang) from KhachHang");
            count = (count_str != null) ? Integer.parseInt(count_str) : 0;
            commitTransaction();
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
        }
        return count;
    }

    public static KhachHang getCustomerAccID(Integer id) {
        beginTransaction();
        KhachHang customer = null;
        try {
            customer = (KhachHang) Session()
                    .createQuery("from KhachHang h "
                            + "where maTaiKhoan = :id")
                    .setParameter("id", id)
                    .uniqueResult();
            commitTransaction();
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            customer = null;
        }
        return customer;
    }

    public static List<KhachHang> getAllCustomer() {
        beginTransaction();
        List<KhachHang> customers = null;
        try {
            customers = Session()
                    .createQuery("from KhachHang k "
                            + "left join fetch k.taiKhoans").list();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
        }
        return customers;
    }

    public static boolean update(KhachHang customer) {
        beginTransaction();
        try {
            Session().update(customer);
            commitTransaction();
            return true;
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }

    public static boolean delete(Integer id) {
        beginTransaction();
        boolean result;
        try {
            List<TaiKhoan> account = Session().createQuery("from TaiKhoan "
                    + "where MaKhachHang = :id")
                    .setInteger("id", id)
                    .list();
            for (TaiKhoan taiKhoan : account) {
                Session().delete(taiKhoan);
            }

            KhachHang manu = (KhachHang) Session().createQuery("from KhachHang "
                    + "where MaKhachHang = :id")
                    .setInteger("id", id)
                    .uniqueResult();
            Session().delete(manu);
            Session().delete(manu);
            commitTransaction();
            result = true;
        } catch (Exception e) {
            Transaction().rollback();
            result = false;
        }
        return result;
    }
}
