package models.database;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ChiTietHoaDon",
         schema = "dbo",
         catalog = "JAVA_WEB"
)
public class ChiTietHoaDon implements java.io.Serializable {

    private ChiTietHoaDonId id;
    private Giay giay;
    private HoaDon hoaDon;
    private Integer soLuong;
    private Integer gia;
    private Integer thanhTien;

    public ChiTietHoaDon() {
    }

    public ChiTietHoaDon(ChiTietHoaDonId id, Giay giay, HoaDon hoaDon) {
        this.id = id;
        this.giay = giay;
        this.hoaDon = hoaDon;
    }

    public ChiTietHoaDon(ChiTietHoaDonId id, Giay giay, HoaDon hoaDon, Integer soLuong, Integer gia, Integer thanhTien) {
        this.id = id;
        this.giay = giay;
        this.hoaDon = hoaDon;
        this.soLuong = soLuong;
        this.gia = gia;
        this.thanhTien = thanhTien;
    }

    @EmbeddedId

    @AttributeOverrides({
        @AttributeOverride(name = "maHoaDon", column = @Column(name = "MaHoaDon", nullable = false))
        , 
        @AttributeOverride(name = "maGiay", column = @Column(name = "MaGiay", nullable = false))})
    public ChiTietHoaDonId getId() {
        return this.id;
    }

    public void setId(ChiTietHoaDonId id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "MaGiay", nullable = false, insertable = false, updatable = false)
    public Giay getGiay() {
        return this.giay;
    }

    public void setGiay(Giay giay) {
        this.giay = giay;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "MaHoaDon", nullable = false, insertable = false, updatable = false)
    public HoaDon getHoaDon() {
        return this.hoaDon;
    }

    public void setHoaDon(HoaDon hoaDon) {
        this.hoaDon = hoaDon;
    }

    @Column(name = "SoLuong")
    public Integer getSoLuong() {
        return this.soLuong;
    }

    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }

    @Column(name = "Gia")
    public Integer getGia() {
        return this.gia;
    }

    public void setGia(Integer gia) {
        this.gia = gia;
    }

    @Column(name = "ThanhTien")
    public Integer getThanhTien() {
        return this.thanhTien;
    }

    public void setThanhTien(Integer thanhTien) {
        this.thanhTien = thanhTien;
    }

}
