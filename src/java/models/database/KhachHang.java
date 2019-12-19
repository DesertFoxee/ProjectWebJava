package models.database;
// Generated Nov 30, 2019 4:49:45 PM by Hibernate Tools 4.3.1

import helper.RegexpCont;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "KhachHang",
         schema = "dbo",
         catalog = "JAVA_WEB"
)
public class KhachHang implements java.io.Serializable {

    private int maKhachHang;
    private String tenKhachHang;
    private String sdt;
    private String diaChi;
    private Set<DanhGia> danhGias = new HashSet<>(0);
    private Set<TaiKhoan> taiKhoans = new HashSet<>(0);
    private Set<HoaDon> hoaDons = new HashSet<>(0);

    public KhachHang() {
    }

    public KhachHang(int maKhachHang) {
        this.maKhachHang = maKhachHang;
    }

    public KhachHang(int maKhachHang, String tenKhachHang, String sdt, String diaChi, Set<DanhGia> danhGias, Set<TaiKhoan> taiKhoans, Set<HoaDon> hoaDons) {
        this.maKhachHang = maKhachHang;
        this.tenKhachHang = tenKhachHang;
        this.sdt = sdt;
        this.diaChi = diaChi;
        this.danhGias = danhGias;
        this.taiKhoans = taiKhoans;
        this.hoaDons = hoaDons;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaKhachHang", unique = true, nullable = false)
    public int getMaKhachHang() {
        return this.maKhachHang;
    }

    public void setMaKhachHang(int maKhachHang) {
        this.maKhachHang = maKhachHang;
    }

    @Column(name = "TenKhachHang")
    @NotEmpty(message = "Tên không được bỏ trống")
    public String getTenKhachHang() {
        return this.tenKhachHang;
    }

    public void setTenKhachHang(String tenKhachHang) {
        this.tenKhachHang = tenKhachHang;
    }

    @Column(name = "SDT", length = 12)
    @Pattern(regexp = RegexpCont.PhoneRegx ,message = "Số điện thoại không hợp lệ")
    public String getSdt() {
        return this.sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    @Column(name = "DiaChi")
    @NotEmpty(message = "Địa chỉ không được bỏ trống")
    public String getDiaChi() {
        return this.diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "khachHang")
    public Set<DanhGia> getDanhGias() {
        return this.danhGias;
    }

    public void setDanhGias(Set<DanhGia> danhGias) {
        this.danhGias = danhGias;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "khachHang")
    public Set<TaiKhoan> getTaiKhoans() {
        return this.taiKhoans;
    }

    public void setTaiKhoans(Set<TaiKhoan> taiKhoans) {
        this.taiKhoans = taiKhoans;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "khachHang")
    public Set<HoaDon> getHoaDons() {
        return this.hoaDons;
    }

    public void setHoaDons(Set<HoaDon> hoaDons) {
        this.hoaDons = hoaDons;
    }

}
