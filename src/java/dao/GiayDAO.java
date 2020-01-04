package dao;

import java.util.List;
import models.database.Giay;
import models.parameter.KeyFilter;
import models.parameter.KeySort;
import org.hibernate.Query;

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

    public static boolean checkOverSizeCount(Integer maGiay, Integer kichCo, Integer soLuong) {
        beginTransaction();
        try {
            List<Giay> a_shoes = Session().createQuery("from Giay g , KichCo kc\n"
                    + "where g.maGiay = :mg \n"
                    + "and g.maGiay = kc.giay.maGiay \n"
                    + "and kc.kichCo = :kcs "
                    + "and kc.soLuong > :soluong \n")
                    .setInteger("mg", maGiay)
                    .setInteger("kcs", kichCo)
                    .setInteger("soluong", soLuong)
                    .list();
            commitTransaction();
            if (a_shoes != null && a_shoes.size() > 0) {
                return false;
            }
        } catch (Exception e) {
            Transaction().rollback();
        }
        return true;
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
            shoes = (Giay) Session().createQuery("from Giay g \n"
                    + "left join fetch  g.hangGiay hg\n"
                    + "left join fetch  g.loaiGiay lg\n"
                    + "left join fetch  g.hinhAnhs ha\n"
                    + "left join fetch  g.kichCos kc\n"
                    + "where g.maGiay=:id\n")
                    .setParameter("id", id)
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

    public static List<Giay> getBestSale(int limit) {
        beginTransaction();
        List<Giay> a_shoes = null;
        try {
            a_shoes = Session()
                    .createQuery("from Giay g "
                            + "left join fetch  g.hinhAnhs "
                            + "order by giamGia desc")
                    .setMaxResults(limit)
                    .list();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
        }
        return a_shoes;
    }

    public static List<Giay> filter(KeyFilter keyf, KeySort sort, String key) {
        beginTransaction();
        List<Giay> a_shoes = null;
        String manu = keyf.getManu();
        String type = keyf.getType();

        String query_str = "select g , ha  from Giay g ,LoaiGiay l , HangGiay h\n"
                + "left join fetch  g.hinhAnhs ha\n"
                + "where \n"
                + "g.loaiGiay.maLoaiGiay = l.maLoaiGiay\n"
                + "and g.hangGiay.maHang = h.maHang\n";

        if (manu != null) {
            query_str += "and h.tenHangGiay = :manu\n";
        }
        if (type != null) {
            query_str += "and l.tenLoaiGiay = :type\n";
        }
        if (key != null && !key.isEmpty()) {
            query_str += "and g.tenGiay like :key\n";
        }
        if (sort != null) {
            query_str += "order by " + sort.getKeySort() + " " + sort.getValueSort() + "\n";
        }
        Query query = Session().createQuery(query_str);

        if (manu != null) {
            query.setParameter("manu", manu);
        }
        if (type != null) {
            query.setParameter("type", type);
        }
        if (key != null && !key.isEmpty()) {
            query.setParameter("key", "%"+key+"%");
        }
        try {
            a_shoes = query.list();
            commitTransaction();
        } catch (Exception e) {
            Transaction().rollback();
        }
        return a_shoes;
    }
}
