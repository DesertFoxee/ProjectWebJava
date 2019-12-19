package models.database;

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
@Table(name = "GioHang",
         schema = "dbo",
         catalog = "JAVA_WEB"
)
public class GioHang implements java.io.Serializable {

    private int maGioHang;
    private TaiKhoan taiKhoan;
    private Date thoiGian;
    private Set<ChiTietGioHang> chiTietGioHangs = new HashSet<>(0);

    public GioHang() {
    }

    public GioHang(int maGioHang, TaiKhoan taiKhoan, Date thoiGian) {
        this.maGioHang = maGioHang;
        this.taiKhoan = taiKhoan;
        this.thoiGian = thoiGian;
    }

    public GioHang(int maGioHang, TaiKhoan taiKhoan, Date thoiGian, Set<ChiTietGioHang> chiTietGioHangs) {
        this.maGioHang = maGioHang;
        this.taiKhoan = taiKhoan;
        this.thoiGian = thoiGian;
        this.chiTietGioHangs = chiTietGioHangs;
    }

    @Id
    @Column(name = "MaGioHang", unique = true, nullable = false)
    public int getMaGioHang() {
        return this.maGioHang;
    }

    public void setMaGioHang(int maGioHang) {
        this.maGioHang = maGioHang;
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

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "gioHang")
    public Set<ChiTietGioHang> getChiTietGioHangs() {
        return this.chiTietGioHangs;
    }

    public void setChiTietGioHangs(Set<ChiTietGioHang> chiTietGioHangs) {
        this.chiTietGioHangs = chiTietGioHangs;
    }

}
