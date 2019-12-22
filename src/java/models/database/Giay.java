package models.database;
// Generated Dec 23, 2019 1:28:23 AM by Hibernate Tools 4.3.1

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
    private String mauSac;
    private String moTa;
    private Set<ChiTietHoaDon> chiTietHoaDons = new HashSet<>(0);
    private Set<GioHang> gioHangs = new HashSet<>(0);
    private Set<HinhAnh> hinhAnhs = new HashSet<>(0);
    private Set<DanhGia> danhGias = new HashSet<>(0);
    private Set<KichCo> kichCos = new HashSet<>(0);

    public Giay() {
    }

    public Giay(int maGiay) {
        this.maGiay = maGiay;
    }

    public Giay(int maGiay, HangGiay hangGiay, LoaiGiay loaiGiay, String tenGiay, String tieuDe, Integer gia, Integer giamGia, String mauSac, String moTa, Set<ChiTietHoaDon> chiTietHoaDons, Set<GioHang> gioHangs, Set<HinhAnh> hinhAnhs, Set<DanhGia> danhGias, Set<KichCo> kichCos) {
        this.maGiay = maGiay;
        this.hangGiay = hangGiay;
        this.loaiGiay = loaiGiay;
        this.tenGiay = tenGiay;
        this.tieuDe = tieuDe;
        this.gia = gia;
        this.giamGia = giamGia;
        this.mauSac = mauSac;
        this.moTa = moTa;
        this.chiTietHoaDons = chiTietHoaDons;
        this.gioHangs = gioHangs;
        this.hinhAnhs = hinhAnhs;
        this.danhGias = danhGias;
        this.kichCos = kichCos;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaGiay", unique = true, nullable = false)
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

    @Column(name = "MauSac")
    public String getMauSac() {
        return this.mauSac;
    }

    public void setMauSac(String mauSac) {
        this.mauSac = mauSac;
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
    public Set<ChiTietHoaDon> getChiTietHoaDons() {
        return this.chiTietHoaDons;
    }

    public void setChiTietHoaDons(Set<ChiTietHoaDon> chiTietHoaDons) {
        this.chiTietHoaDons = chiTietHoaDons;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "giay")
    public Set<GioHang> getGioHangs() {
        return this.gioHangs;
    }

    public void setGioHangs(Set<GioHang> gioHangs) {
        this.gioHangs = gioHangs;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "giay")
    public Set<HinhAnh> getHinhAnhs() {
        return this.hinhAnhs;
    }

    public void setHinhAnhs(Set<HinhAnh> hinhAnhs) {
        this.hinhAnhs = hinhAnhs;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "giay")
    public Set<DanhGia> getDanhGias() {
        return this.danhGias;
    }

    public void setDanhGias(Set<DanhGia> danhGias) {
        this.danhGias = danhGias;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "giay")
    public Set<KichCo> getKichCos() {
        return this.kichCos;
    }

    public void setKichCos(Set<KichCo> kichCos) {
        this.kichCos = kichCos;
    }

}
