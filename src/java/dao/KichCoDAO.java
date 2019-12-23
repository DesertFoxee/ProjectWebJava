package dao;

import java.util.List;
import models.database.KichCo;

public class KichCoDAO extends AbstractGenericDao {

    public static KichCo exist(Integer id) {
        beginTransaction();
        try {
            KichCo kc = (KichCo) Session().createQuery("from KichCo "
                    + "where maKichCo = :id ")
                    .setInteger("id", id).uniqueResult();
            commitTransaction();
            return kc;
        } catch (Exception e) {
            Transaction().rollback();
            return null;
        }
    }

    public static boolean checkOverCount(Integer makichco, Integer soluong) {
        beginTransaction();
        boolean result = false;
        try {
            KichCo kc = (KichCo) Session().createQuery("from KichCo "
                    + "where maKichCo = :id \n"
                    + "and soLuong >= :soluong \n")
                    .setInteger("id", makichco)
                    .setInteger("soluong", soluong)
                    .uniqueResult();
            if (kc != null) {
                result = true;
            }
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
            result = false;
        }
        return result;
    }

    public static boolean update(KichCo size) {
        beginTransaction();
        try {
            Session().update(size);
            commitTransaction();
            return true;
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }

    public static List<KichCo> getSizeShoes(Integer id_shoes) {
        beginTransaction();
        List<KichCo> m_size_shoes;
        try {
            m_size_shoes = Session().createQuery("from KichCo \n"
                    + "where maGiay  =:id")
                    .setParameter("id", id_shoes)
                    .list();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
            m_size_shoes = null;
        }
        return m_size_shoes;
    }

    public static boolean delete(Integer id_size_shoes) {
        beginTransaction();
        try {
            Session().createQuery("delete from KichCo where maKichCo = :id")
                    .setInteger("id", id_size_shoes)
                    .executeUpdate();
            commitTransaction();
            return true;
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }

    public static boolean deleteSizeShoes(Integer id_shoes) {
        beginTransaction();
        try {
            Session().createQuery("delete from KichCo where giay.maGiay = :id ")
                    .setInteger("id", id_shoes)
                    .executeUpdate();
            commitTransaction();
            return true;
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }

    public static boolean save(KichCo kc) {
        beginTransaction();
        try {
            Session().save(kc);
            commitTransaction();
            return true;
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }
}
