package dao;

import models.database.GioHang;

public class GioHangDAO extends AbstractGenericDao {

    public static GioHang save(GioHang h) {
        beginTransaction();
        try {
            Session().save(h);
            commitTransaction();
            return h;
        } catch (Exception e) {
            Transaction().rollback();
            return null;
        }
    }
}
