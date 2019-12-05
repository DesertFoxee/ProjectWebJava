package dao;

import java.util.List;
import models.HangGiay;

public class HangGiayDAO extends AbstractGenericDao {

    public static HangGiay exists(Integer id) {
        beginTransaction();
        try {
            HangGiay refer_manu = (HangGiay) Session().createQuery("from HangGiay "
                    + "where MaHang = :id ")
                    .setInteger("id", id).uniqueResult();
            commitTransaction();
            return refer_manu;

        } catch (Exception e) {
            Transaction().rollback();
            return null;
        }

    }

    public static boolean save(HangGiay manu) {
        beginTransaction();
        try {
            Session().save(manu);
            commitTransaction();
            return true;
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }

    public static boolean update(HangGiay manu) {
        beginTransaction();
        try {
            Session().update(manu);
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
            Session().createQuery("update Giay "
                    + "set MaHang = :value "
                    + "where MaHang = :id")
                    .setParameter("value", null)
                    .setInteger("id", id)
                    .executeUpdate();

            HangGiay manu = (HangGiay) Session().createQuery("from HangGiay "
                    + "where MaHang = :id")
                    .setInteger("id", id)
                    .uniqueResult();

            Session().delete(manu);
            commitTransaction();
            result = true;
        } catch (Exception e) {
            Transaction().rollback();
            result = false;
        }
        return result;
    }

    public static List<HangGiay> getAllManufacturer() {
        beginTransaction();
        List<HangGiay> manus = null;
        try {
            manus = Session()
                    .createQuery("from HangGiay").list();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
        }
        return manus;
    }

}
