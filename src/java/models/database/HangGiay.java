package models.database;

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
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "HangGiay",
        schema = "dbo",
        catalog = "JAVA_WEB"
)
public class HangGiay implements java.io.Serializable {

    private int maHang;
    private String tenHangGiay;
    private String ghiChu;
    private Set<Giay> giays = new HashSet<>(0);

    public HangGiay() {
    }

    public HangGiay(int maHang) {
        this.maHang = maHang;
    }

    public HangGiay(int maHang, String tenHangGiay, String ghiChu, Set<Giay> giays) {
        this.maHang = maHang;
        this.tenHangGiay = tenHangGiay;
        this.ghiChu = ghiChu;
        this.giays = giays;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaHang", unique = true, nullable = false)
    public int getMaHang() {
        return this.maHang;
    }

    public void setMaHang(int maHang) {
        this.maHang = maHang;
    }

    @Column(name = "TenHangGiay")
    @NotEmpty(message = "Tên hãng giày không được bỏ trống")
    public String getTenHangGiay() {
        return this.tenHangGiay;
    }

    public void setTenHangGiay(String tenHangGiay) {
        this.tenHangGiay = tenHangGiay;
    }

    @Column(name = "GhiChu")
    public String getGhiChu() {
        return this.ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "hangGiay")
    public Set<Giay> getGiays() {
        return this.giays;
    }

    public void setGiays(Set<Giay> giays) {
        this.giays = giays;
    }

}
