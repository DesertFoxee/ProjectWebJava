package dao;

import static dao.AbstractGenericDao.beginTransaction;
import java.util.List;
import models.database.LoaiGiay;

public class LoaiGiayDAO extends AbstractGenericDao {

    public static LoaiGiay exists(Integer id) {
        beginTransaction();
        try {
            LoaiGiay refer_type = (LoaiGiay) Session().createQuery("from LoaiGiay "
                    + "where MaLoaiGiay = :id ")
                    .setInteger("id", id).uniqueResult();
            commitTransaction();
            return refer_type;

        } catch (Exception e) {
            Transaction().rollback();
            return null;
        }

    }
     public static boolean update(LoaiGiay type) {
         beginTransaction();
        try {
            Session().update(type);
            commitTransaction();
            return true;
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }
      public static boolean save(LoaiGiay type) {
        beginTransaction();
        try {
            Session().save(type);
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
                    + "set MaLoaiGiay = :value "
                    + "where MaLoaiGiay = :id")
                    .setParameter("value", null)
                    .setInteger("id", id)
                    .executeUpdate();
            
            LoaiGiay manu = (LoaiGiay) Session().createQuery("from LoaiGiay "
                    + "where MaLoaiGiay = :id")
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

    public static List<LoaiGiay> getAllType() {
        beginTransaction();
        List<LoaiGiay> type_shoes = null;
        try {
            type_shoes = Session()
                    .createQuery("from LoaiGiay").list();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
        }
        return type_shoes;
    }

}
