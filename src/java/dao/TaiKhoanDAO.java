package dao;

import static dao.AbstractGenericDao.beginTransaction;
import java.util.List;
import models.database.TaiKhoan;

public class TaiKhoanDAO extends AbstractGenericDao {

    public static int getSize() {
        beginTransaction();
        int count = 0;
        try {
            String count_str = execQueryReturnOneValue("select count(maTaiKhoan) from TaiKhoan");
            count = (count_str != null) ? Integer.parseInt(count_str) : 0;
            commitTransaction();
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
        }

        return count;
    }

    public static TaiKhoan exists(Integer id) {
        beginTransaction();
        try {
            TaiKhoan account = (TaiKhoan) Session().createQuery("from TaiKhoan "
                    + "where MaTaiKhoan = :id ")
                    .setInteger("id", id).uniqueResult();
            commitTransaction();
            return account;

        } catch (Exception e) {
            Transaction().rollback();
            return null;
        }
    }

    public static List<TaiKhoan> getAllAccount() {
        beginTransaction();
        List<TaiKhoan> accounts = null;
        try {
            accounts = Session()
                    .createQuery("from TaiKhoan t "
                            + "left join fetch t.khachHang").list();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
        }
        return accounts;
    }

    public static TaiKhoan auth(String username, String password) {
        beginTransaction();
        TaiKhoan taikhoan = null;
        try {
            taikhoan = (TaiKhoan) Session().createQuery("from TaiKhoan tk\n"
                    + "where tk.tenTaiKhoan = :username\n"
                    + "and  tk.matKhau = :password")
                    .setParameter("username", username)
                    .setParameter("password", password)
                    .uniqueResult();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
            taikhoan = null;
        }
        return taikhoan;
    }

    public static boolean checkExistUsername(String username) {
        beginTransaction();
        try {
            List<TaiKhoan> taikhoan = Session().createQuery("from TaiKhoan tk\n"
                    + "where tk.tenTaiKhoan = :username\n")
                    .setParameter("username", username)
                    .list();
            commitTransaction();
            if(taikhoan != null&& taikhoan.size() > 0){
                return true;
            }
        } catch (Exception e) {
            Transaction().rollback();
        }
        return false;
    }

    public static boolean delete(Integer id) {
        beginTransaction();
        try {
            Session().createQuery("delete from TaiKhoan where maTaiKhoan = :id")
                    .setInteger("id", id)
                    .executeUpdate();

            commitTransaction();
            return true;

        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }

    public static boolean update(TaiKhoan account) {
        beginTransaction();
        try {
            Session().update(account);
            commitTransaction();
            return true;
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }

    public static boolean updatePass(TaiKhoan account, String pass) {
        beginTransaction();
        try {
            Session().createQuery("update TaiKhoan tk\n"
                    + "set tk.matKhau = :pass\n"
                    + "where tk.maTaiKhoan = :id")
                    .setParameter("pass", pass)
                    .setParameter("id", account.getMaTaiKhoan())
                    .executeUpdate();
            commitTransaction();
            return true;
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }

    public static boolean save(TaiKhoan account) {
        beginTransaction();
        try {
            Session().save(account);
            commitTransaction();
            return true;
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }

    public static TaiKhoan getAccountID(Integer id) {
        beginTransaction();
        TaiKhoan account = null;
        try {
            account = (TaiKhoan) Session()
                    .createQuery("from TaiKhoan g "
                            + "left join fetch g.khachHang "
                            + "where maTaiKhoan = :id")
                    .setParameter("id", id)
                    .setMaxResults(1)
                    .uniqueResult();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
        }
        return account;
    }

}
