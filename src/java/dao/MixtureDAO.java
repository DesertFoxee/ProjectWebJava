
package dao;

import static dao.AbstractGenericDao.beginTransaction;
import models.database.KhachHang;
import models.database.TaiKhoan;


public class MixtureDAO extends AbstractGenericDao  {
    public static boolean  register(TaiKhoan tk , KhachHang kh) {
        beginTransaction();
        try {
            Session().save(kh);
            tk.setKhachHang(kh);
            Session().save(tk);           
            commitTransaction();
            return true;
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }
}
