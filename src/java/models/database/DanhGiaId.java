package models.database;
// Generated Dec 17, 2019 6:33:04 PM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Embeddable;


@Embeddable
public class DanhGiaId implements java.io.Serializable {

    private int maKhachHang;
    private int maGiay;

    public DanhGiaId() {
    }

    public DanhGiaId(int maKhachHang, int maGiay) {
        this.maKhachHang = maKhachHang;
        this.maGiay = maGiay;
    }

    @Column(name = "MaKhachHang", nullable = false)
    public int getMaKhachHang() {
        return this.maKhachHang;
    }

    public void setMaKhachHang(int maKhachHang) {
        this.maKhachHang = maKhachHang;
    }

    @Column(name = "MaGiay", nullable = false)
    public int getMaGiay() {
        return this.maGiay;
    }

    public void setMaGiay(int maGiay) {
        this.maGiay = maGiay;
    }

    public boolean equals(Object other) {
        if ((this == other)) {
            return true;
        }
        if ((other == null)) {
            return false;
        }
        if (!(other instanceof DanhGiaId)) {
            return false;
        }
        DanhGiaId castOther = (DanhGiaId) other;

        return (this.getMaKhachHang() == castOther.getMaKhachHang())
                && (this.getMaGiay() == castOther.getMaGiay());
    }

    public int hashCode() {
        int result = 17;

        result = 37 * result + this.getMaKhachHang();
        result = 37 * result + this.getMaGiay();
        return result;
    }

}
