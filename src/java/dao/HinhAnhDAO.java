package dao;

import static dao.AbstractGenericDao.beginTransaction;
import java.util.List;
import models.database.HinhAnh;

public class HinhAnhDAO extends AbstractGenericDao {

    public static HinhAnh exists(Integer id_image) {
        beginTransaction();
        try {
            HinhAnh image= (HinhAnh) Session().createQuery("from HinhAnh "
                    + "where MaHinhAnh = :id_image ")
                    .setInteger("id_image", id_image).uniqueResult();
            commitTransaction();
            return image;
        } catch (Exception e) {
            Transaction().rollback();
            return null;
        }
    }

    public static boolean  existsShoes(Integer id_image , Integer id_shoes) {
        beginTransaction();
        boolean result;
        try {
            result= Session().createQuery("from HinhAnh "
                    + "where maHinhAnh = :id_image and maGiay =:id_shoes")
                    .setInteger("id_image", id_image)
                    .setInteger("id_shoes" ,id_shoes)
                    .list().size() > 0 ;
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
        return result;
    }

    public static boolean delete(Integer id) {
        beginTransaction();
        try {
            Session().createQuery("delete from HinhAnh where maHinhAnh = :id")
                    .setInteger("id", id)
                    .executeUpdate();
            commitTransaction();
            return true;
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }
    
    public static boolean deleteImageShoes(Integer id) {
        beginTransaction();
        try {
            Session().createQuery("delete from HinhAnh where maGiay = :id")
                    .setInteger("id", id)
                    .executeUpdate();
            commitTransaction();
            return true;
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }

    public static boolean update(HinhAnh image) {
        beginTransaction();
        try {
            Session().update(image);
            commitTransaction();
            return true;
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }

    public static boolean save(HinhAnh HinhAnh) {
        beginTransaction();
        try {
            Session().save(HinhAnh);
            commitTransaction();
            return true;
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }

    public static List<HinhAnh> getImageShoes(Integer id_shoes) {
        beginTransaction();
        List shoes = null;
        try {
            shoes = Session()
                    .createQuery("from HinhAnh where maGiay = :id")
                    .setParameter("id", id_shoes)
                    .list();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
        }
        return shoes;
    }

}
