package models.database;
// Generated Dec 17, 2019 6:33:04 PM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.annotations.ColumnDefault;


@Entity
@Table(name = "KichCo",
        schema = "dbo",
        catalog = "JAVA_WEB"
)
public class KichCo implements java.io.Serializable {

    private int maKichCo;
    private Giay giay;
    private Integer kichCo = 0;
    private Integer soLuong =0;

    public KichCo() {
    }

    public KichCo(int maKichCo) {
        this.maKichCo = maKichCo;
    }

    public KichCo(int maKichCo, Giay giay, Integer kichCo, Integer soLuong) {
        this.maKichCo = maKichCo;
        this.giay = giay;
        this.kichCo = kichCo;
        this.soLuong = soLuong;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaKichCo", unique = true, nullable = false)
    public int getMaKichCo() {
        return this.maKichCo;
    }

    public void setMaKichCo(int maKichCo) {
        this.maKichCo = maKichCo;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "MaGiay")
    public Giay getGiay() {
        return this.giay;
    }

    public void setGiay(Giay giay) {
        this.giay = giay;
    }

    @Column(name = "KichCo")
    @ColumnDefault("0")
    public Integer getKichCo() {
        return this.kichCo;
    }

    public void setKichCo(Integer kichCo) {
        this.kichCo = kichCo;
    }

    @Column(name = "SoLuong")
    @ColumnDefault("0")
    public Integer getSoLuong() {
        return this.soLuong;
    }

    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }

}
