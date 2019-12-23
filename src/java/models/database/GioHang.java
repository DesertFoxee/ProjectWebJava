package models.database;
// Generated Dec 23, 2019 1:28:23 AM by Hibernate Tools 4.3.1

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "GioHang",
        schema = "dbo",
        catalog = "JAVA_WEB"
)
public class GioHang implements java.io.Serializable {

    private int maGioHang;
    private Giay giay;
    private TaiKhoan taiKhoan;
    private Date thoiGian;
    private Integer soLuong;
    private Integer giaThanh;
    private Integer giamGia;
    private Integer kichCo;

    public GioHang() {
    }

    public GioHang(int maGioHang, Giay giay, TaiKhoan taiKhoan, Date thoiGian, Integer soLuong, Integer giaThanh, Integer giamGia, Integer kichCo) {
        this.maGioHang = maGioHang;
        this.giay = giay;
        this.taiKhoan = taiKhoan;
        this.thoiGian = thoiGian;
        this.soLuong = soLuong;
        this.giaThanh = giaThanh;
        this.giamGia = giamGia;
        this.kichCo = kichCo;
    }

    public GioHang(Giay giay, TaiKhoan taiKhoan, Date thoiGian, Integer soLuong, Integer giaThanh, Integer giamGia, Integer kichCo) {
        this.giay = giay;
        this.taiKhoan = taiKhoan;
        this.thoiGian = thoiGian;
        this.soLuong = soLuong;
        this.giaThanh = giaThanh;
        this.giamGia = giamGia;
        this.kichCo = kichCo;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaGioHang", unique = true, nullable = false)
    public int getMaGioHang() {
        return this.maGioHang;
    }

    public void setMaGioHang(int maGioHang) {
        this.maGioHang = maGioHang;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "MaGiay")
    public Giay getGiay() {
        return this.giay;
    }

    public void setGiay(Giay giay) {
        this.giay = giay;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "MaTaiKhoan", nullable = false)
    public TaiKhoan getTaiKhoan() {
        return this.taiKhoan;
    }

    public void setTaiKhoan(TaiKhoan taiKhoan) {
        this.taiKhoan = taiKhoan;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "ThoiGian", nullable = false, length = 10)
    public Date getThoiGian() {
        return this.thoiGian;
    }

    public void setThoiGian(Date thoiGian) {
        this.thoiGian = thoiGian;
    }

    @Column(name = "SoLuong")
    public Integer getSoLuong() {
        return this.soLuong;
    }

    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }

    @Column(name = "GiaThanh")
    public Integer getGiaThanh() {
        return this.giaThanh;
    }

    public void setGiaThanh(Integer giaThanh) {
        this.giaThanh = giaThanh;
    }

    @Column(name = "GiamGia")
    public Integer getGiamGia() {
        return this.giamGia;
    }

    public void setGiamGia(Integer giamGia) {
        this.giamGia = giamGia;
    }

    @Column(name = "KichCo")
    public Integer getKichCo() {
        return this.kichCo;
    }

    public void setKichCo(Integer kichCo) {
        this.kichCo = kichCo;
    }

}
