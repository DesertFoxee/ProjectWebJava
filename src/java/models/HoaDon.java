package models;
// Generated Nov 30, 2019 4:49:45 PM by Hibernate Tools 4.3.1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "HoaDon",
        schema = "dbo",
        catalog = "JAVA_WEB"
)
public class HoaDon implements java.io.Serializable {

    private int maHoaDon;
    private KhachHang khachHang;
    private Date thoiGian;
    private Integer tongTien;

    private Set<ChiTietHoaDon> chiTietHoaDons = new HashSet<>(0);

    public HoaDon() {
    }

    public HoaDon(int maHoaDon, KhachHang khachHang, Date thoiGian) {
        this.maHoaDon = maHoaDon;
        this.khachHang = khachHang;
        this.thoiGian = thoiGian;
    }

    public HoaDon(int maHoaDon, KhachHang khachHang, Date thoiGian, Set<ChiTietHoaDon> chiTietHoaDons) {
        this.maHoaDon = maHoaDon;
        this.khachHang = khachHang;
        this.thoiGian = thoiGian;
        this.chiTietHoaDons = chiTietHoaDons;
    }

    @Id

    @Column(name = "MaHoaDon", unique = true, nullable = false)
    public int getMaHoaDon() {
        return this.maHoaDon;
    }

    public void setMaHoaDon(int maHoaDon) {
        this.maHoaDon = maHoaDon;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "MaKhachHang", nullable = false)
    public KhachHang getKhachHang() {
        return this.khachHang;
    }

    public void setKhachHang(KhachHang khachHang) {
        this.khachHang = khachHang;
    }

    @Column(name = "TongTien")
    public Integer getTongTien() {
        return tongTien;
    }

    public void setTongTien(Integer tongTien) {
        this.tongTien = tongTien;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "ThoiGian", nullable = false, length = 10)
    public Date getThoiGian() {
        return this.thoiGian;
    }

    public void setThoiGian(Date thoiGian) {
        this.thoiGian = thoiGian;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "hoaDon")
    public Set<ChiTietHoaDon> getChiTietHoaDons() {
        return this.chiTietHoaDons;
    }

    public void setChiTietHoaDons(Set<ChiTietHoaDon> chiTietHoaDons) {
        this.chiTietHoaDons = chiTietHoaDons;
    }

}
