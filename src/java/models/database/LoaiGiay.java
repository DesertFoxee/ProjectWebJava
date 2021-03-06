package models.database;
// Generated Nov 30, 2019 4:49:45 PM by Hibernate Tools 4.3.1

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
@Table(name = "LoaiGiay",
         schema = "dbo",
         catalog = "JAVA_WEB"
)
public class LoaiGiay implements java.io.Serializable {

    private int maLoaiGiay;
    private String tenLoaiGiay;
    private Set<Giay> giays = new HashSet<>(0);

    public LoaiGiay() {
    }

    public LoaiGiay(int maLoaiGiay) {
        this.maLoaiGiay = maLoaiGiay;
    }

    public LoaiGiay(int maLoaiGiay, String tenLoaiGiay, Set<Giay> giays) {
        this.maLoaiGiay = maLoaiGiay;
        this.tenLoaiGiay = tenLoaiGiay;
        this.giays = giays;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaLoaiGiay", unique = true, nullable = false)
    public int getMaLoaiGiay() {
        return this.maLoaiGiay;
    }

    public void setMaLoaiGiay(int maLoaiGiay) {
        this.maLoaiGiay = maLoaiGiay;
    }

    @Column(name = "TenLoaiGiay")
    @NotEmpty(message = "Tên loại giày không được bỏ trống")
    public String getTenLoaiGiay() {
        return this.tenLoaiGiay;
    }

    public void setTenLoaiGiay(String tenLoaiGiay) {
        this.tenLoaiGiay = tenLoaiGiay;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "loaiGiay")
    public Set<Giay> getGiays() {
        return this.giays;
    }

    public void setGiays(Set<Giay> giays) {
        this.giays = giays;
    }

}
