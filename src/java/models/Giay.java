package models;
// Generated Nov 30, 2019 4:49:45 PM by Hibernate Tools 4.3.1

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;


@Entity
@Table(name = "Giay",
        schema = "dbo",
        catalog = "JAVA_WEB"
)
public class Giay implements java.io.Serializable {

    private int maGiay;
    private HangGiay hangGiay;
    private LoaiGiay loaiGiay;
    private String tenGiay;
    private String tieuDe;
    private Integer gia;
    private Integer giamGia;
    private Integer soLuong;
    private String mauSac;
    private Integer kichCo;
    private String moTa;
    private Set<ChiTietGioHang> chiTietGioHangs = new HashSet<>(0);
    private Set<ChiTietHoaDon> chiTietHoaDons = new HashSet<>(0);
    private Set<HinhAnh> hinhAnhs = new HashSet<>(0);
    private Set<DanhGia> danhGias = new HashSet<>(0);

    public Giay() {
    }

    public Giay(int maGiay) {
        this.maGiay = maGiay;
    }

    public Giay(int maGiay, HangGiay hangGiay, LoaiGiay loaiGiay, String tenGiay, String tieuDe, Integer gia, Integer giamGia, Integer soLuong, String mauSac, Integer kichCo, String moTa, Set<ChiTietGioHang> chiTietGioHangs, Set<ChiTietHoaDon> chiTietHoaDons, Set<HinhAnh> hinhAnhs, Set<DanhGia> danhGias) {
        this.maGiay = maGiay;
        this.hangGiay = hangGiay;
        this.loaiGiay = loaiGiay;
        this.tenGiay = tenGiay;
        this.tieuDe = tieuDe;
        this.gia = gia;
        this.giamGia = giamGia;
        this.soLuong = soLuong;
        this.mauSac = mauSac;
        this.kichCo = kichCo;
        this.moTa = moTa;
        this.chiTietGioHangs = chiTietGioHangs;
        this.chiTietHoaDons = chiTietHoaDons;
        this.hinhAnhs = hinhAnhs;
        this.danhGias = danhGias;
    }

    @Id
    @Column(name = "MaGiay", unique = true, nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getMaGiay() {
        return this.maGiay;
    }

    public void setMaGiay(int maGiay) {
        this.maGiay = maGiay;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "MaHang")
    public HangGiay getHangGiay() {
        return this.hangGiay;
    }

    public void setHangGiay(HangGiay hangGiay) {
        this.hangGiay = hangGiay;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "MaLoaiGiay")
    public LoaiGiay getLoaiGiay() {
        return this.loaiGiay;
    }

    public void setLoaiGiay(LoaiGiay loaiGiay) {
        this.loaiGiay = loaiGiay;
    }

    @Column(name = "TenGiay")
    @NotEmpty(message = "Tên giày không được bỏ trống")
    public String getTenGiay() {
        return this.tenGiay;
    }

    public void setTenGiay(String tenGiay) {
        this.tenGiay = tenGiay;
    }

    @Column(name = "TieuDe")
    @NotEmpty(message = "Tên đề không được bỏ trống")
    public String getTieuDe() {
        return this.tieuDe;
    }

    public void setTieuDe(String tieuDe) {
        this.tieuDe = tieuDe;
    }

    @Column(name = "Gia")
    @ColumnDefault("0")
    public Integer getGia() {
        return this.gia;
    }

    public void setGia(Integer gia) {
        this.gia = gia;
    }

    @Column(name = "GiamGia")
    @Range(min = 0, max = 100, message = "Giảm giá trong khoảng (0, 100)")
    @ColumnDefault("0")
    public Integer getGiamGia() {
        return this.giamGia;
    }

    public void setGiamGia(Integer giamGia) {
        this.giamGia = giamGia;
    }

    @Column(name = "SoLuong")
    @ColumnDefault("0")
    public Integer getSoLuong() {
        return this.soLuong;
    }

    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }

    @Column(name = "MauSac")
    public String getMauSac() {
        return this.mauSac;
    }

    public void setMauSac(String mauSac) {
        this.mauSac = mauSac;
    }

    @Column(name = "KichCo")
    @Range(min = 1, message = "Kích cỡ lớn hơn 0")
    @ColumnDefault("1")
    public Integer getKichCo() {
        return this.kichCo;
    }

    public void setKichCo(Integer kichCo) {
        this.kichCo = kichCo;
    }

    @Column(name = "MoTa")
    @NotEmpty(message = "Mô tả không rỗng")
    public String getMoTa() {
        return this.moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "giay")
    public Set<ChiTietGioHang> getChiTietGioHangs() {
        return this.chiTietGioHangs;
    }

    public void setChiTietGioHangs(Set<ChiTietGioHang> chiTietGioHangs) {
        this.chiTietGioHangs = chiTietGioHangs;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "giay")
    public Set<ChiTietHoaDon> getChiTietHoaDons() {
        return this.chiTietHoaDons;
    }

    public void setChiTietHoaDons(Set<ChiTietHoaDon> chiTietHoaDons) {
        this.chiTietHoaDons = chiTietHoaDons;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "giay")
    public Set<DanhGia> getDanhGias() {
        return this.danhGias;
    }

    public void setDanhGias(Set<DanhGia> danhGias) {
        this.danhGias = danhGias;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "giay")
    public Set<HinhAnh> getHinhAnhs() {
        return this.hinhAnhs;
    }

    public void setHinhAnhs(Set<HinhAnh> hinhAnhs) {
        this.hinhAnhs = hinhAnhs;
    }

}
