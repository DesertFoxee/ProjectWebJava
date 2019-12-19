package models.database;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "HinhAnh",
        schema = "dbo",
        catalog = "JAVA_WEB"
)
public class HinhAnh implements java.io.Serializable {

    private int maHinhAnh;
    private Giay giay;
    private String link;

    private static String path_img_default = "default_shoes.png";

    public HinhAnh() {
    }

    public static String getPathImgDefault() {
        return path_img_default;
    }

    public HinhAnh(int maHinhAnh) {
        this.maHinhAnh = maHinhAnh;
    }

    public HinhAnh(int maHinhAnh, Giay giay, String link) {
        this.maHinhAnh = maHinhAnh;
        this.giay = giay;
        this.link = link;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaHinhAnh", unique = true, nullable = false)
    public int getMaHinhAnh() {
        return this.maHinhAnh;
    }

    public void setMaHinhAnh(int maHinhAnh) {
        this.maHinhAnh = maHinhAnh;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "MaGiay")
    public Giay getGiay() {
        return this.giay;
    }

    public void setGiay(Giay giay) {
        this.giay = giay;
    }

    @Column(name = "Link")
    public String getLink() {
        return this.link;
    }

    public void setLink(String link) {
        this.link = link;
    }

}
