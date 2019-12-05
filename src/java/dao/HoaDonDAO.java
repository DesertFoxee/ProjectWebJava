package dao;

import java.util.List;
import models.HoaDon;

public class HoaDonDAO extends AbstractGenericDao {

    public static int getSize() {
        beginTransaction();

        int count = 0;
        try {
            String count_str = execQueryReturnOneValue("select count(maHoaDon) from HoaDon ");
            count = (count_str != null) ? Integer.parseInt(count_str) : 0;
            commitTransaction();
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return count;
    }

    public static List<HoaDon> getAllInvoice() {
        beginTransaction();
        List<HoaDon> invoices = null;
        try {
            invoices = Session()
                    .createQuery("from HoaDon  g \n"
                            + "left join fetch  g.khachHang k")
                    .list();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
        }
        return invoices;
    }

    public static List<HoaDon> getInvoiceID(Integer id) {
        beginTransaction();
        List<HoaDon> detail_invoice = null;
        try {
            detail_invoice = Session()
                    .createQuery("from HoaDon  g \n"
                            + "left join fetch  g.khachHang \n"
                            + "left join fetch  g.chiTietHoaDons")
                    .list();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
        }
        return detail_invoice;
    }

}
