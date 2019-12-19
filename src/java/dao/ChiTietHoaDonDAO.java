
package dao;

import static dao.AbstractGenericDao.beginTransaction;
import java.util.List;
import models.database.ChiTietHoaDon;


public class ChiTietHoaDonDAO extends AbstractGenericDao {

    public static List<ChiTietHoaDon> getDetailInvoiceID(Integer id) {
        beginTransaction();
        List<ChiTietHoaDon> detail_invoice = null;
        try {
            detail_invoice = Session()
                    .createQuery("from ChiTietHoaDon c \n"
                            + "left join fetch c.giay \n"
                            + "where c.id.maHoaDon =:id")
                    .setParameter("id", id)
                    .list();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
        }
        return detail_invoice;
    }

}
