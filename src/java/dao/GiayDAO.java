package dao;

import java.util.List;
import models.database.Giay;
import models.database.KichCo;

public class GiayDAO extends AbstractGenericDao {

    public static Giay exists(Integer id) {
        beginTransaction();
        try {
            Giay shoes = (Giay) Session().createQuery("from Giay "
                    + "where MaGiay = :id_shoes ")
                    .setInteger("id_shoes", id).uniqueResult();
            commitTransaction();
            return shoes;

        } catch (Exception e) {
            Transaction().rollback();
            return null;
        }
    }

    public static List<Giay> getShoesManu(String manu, String colum_orderby,
            int limit, boolean asc) {
        beginTransaction();
        List<Giay> m_shoes = null;
        limit = (limit <= 0) ? 1 : limit;
        String sort = (asc) ? "desc" : "asc";
        try {
            m_shoes = Session().createQuery("select g , ha from Giay g , HangGiay h\n"
                    + "left join fetch  g.hinhAnhs ha\n"
                    + "where g.hangGiay.maHang = h.maHang\n"
                    + "and h.tenHangGiay = :manu\n"
                    + "order by g." + colum_orderby + " " + sort)
                    .setParameter("manu", manu)
                    .setMaxResults(limit)
                    .list();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
            m_shoes = null;
        }
        return m_shoes;
    }

    public static boolean delete(Integer id) {
        beginTransaction();
        try {
            Session().createQuery("delete from Giay where maGiay = :id")
                    .setInteger("id", id)
                    .executeUpdate();
            commitTransaction();
            return true;

        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }

    public static boolean update(Giay shoes) {
        beginTransaction();
        try {
            Session().update(shoes);
            commitTransaction();
            return true;
        } catch (Exception e) {
            Transaction().rollback();
            return false;
        }
    }

    public static Giay save(Giay giay) {
        beginTransaction();
        try {
            Session().save(giay);
            commitTransaction();
            return giay;
        } catch (Exception e) {
            Transaction().rollback();
            return null;
        }
    }

    public static Giay getShoesID(Integer id) {
        beginTransaction();
        Giay shoes = null;
        try {
            shoes = (Giay) Session()
                    .createQuery("from Giay g "
                            + "left join fetch g.hangGiay "
                            + "left join fetch g.loaiGiay "
                            + "where maGiay = :id")
                    .setParameter("id", id)
                    .setMaxResults(1)
                    .uniqueResult();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
        }
        return shoes;
    }

    public static List<Giay> getAllShoes() {
        beginTransaction();
        List<Giay> a_shoes = null;
        try {
            a_shoes = Session()
                    .createQuery("from Giay  g\n"
                            + "left join fetch  g.hangGiay\n"
                            + "left join fetch  g.loaiGiay").list();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
        }
        return a_shoes;
    }

    public static int getSize() {
        beginTransaction();
        int count = 0;
        try {
            String str_count = execQueryReturnOneValue("select count(maGiay) from Giay");
            count = (str_count == null) ? 0 : Integer.parseInt(str_count);
            commitTransaction();
        } catch (NumberFormatException e) {
            Transaction().rollback();
        }
        return count;
    }

    public static List<KichCo> getSizeShoes(Integer id_shoes) {
        beginTransaction();
        List<KichCo> _size;
        try {
            _size = Session()
                    .createQuery("from KichCo \n"
                            + "where maGiay  =:id")
                    .setParameter("id", id_shoes)
                    .list();
            commitTransaction();
        } catch (NumberFormatException e) {
            Transaction().rollback();
            _size = null;
        }
        return _size;
    }

}
