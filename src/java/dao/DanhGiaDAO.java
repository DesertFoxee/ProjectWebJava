
package dao;

import java.util.List;
import models.database.DanhGia;


public class DanhGiaDAO extends AbstractGenericDao {

    public static List<DanhGia> getLatest(int limit) {
        beginTransaction();
        List<DanhGia> reviews = null;
        try {
            reviews = Session()
                    .createQuery("from DanhGia d \n"
                            + "join fetch d.khachHang\n"
                            + "order by ThoiGian desc")
                    .setMaxResults(limit)
                    .list();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
        }
        return reviews;
    }
    
    public static DanhGia save(DanhGia dg) {
        beginTransaction();
        try {
            Session().save(dg);
            commitTransaction();
            return dg;
        } catch (Exception e) {
            Transaction().rollback();
            return null;
        }
    }

}
