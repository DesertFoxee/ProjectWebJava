package models.database;
// Generated Nov 30, 2019 4:49:45 PM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name = "QuanTri",
        schema = "dbo",
        catalog = "JAVA_WEB"
)
public class QuanTri implements java.io.Serializable {

    private int maQuantri;
    private String tenTaiKhoan;
    private String matKhau;

    public QuanTri() {
    }

    public QuanTri(int maQuantri, String tenTaiKhoan, String matKhau) {
        this.maQuantri = maQuantri;
        this.tenTaiKhoan = tenTaiKhoan;
        this.matKhau = matKhau;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaQuantri", unique = true, nullable = false)
    public int getMaQuantri() {
        return this.maQuantri;
    }

    public void setMaQuantri(int maQuantri) {
        this.maQuantri = maQuantri;
    }

    @Column(name = "TenTaiKhoan", nullable = false, length = 30)
    @NotEmpty(message = "Tên tài khoản bỏ trống")
    public String getTenTaiKhoan() {
        return this.tenTaiKhoan;
    }

    public void setTenTaiKhoan(String tenTaiKhoan) {
        this.tenTaiKhoan = tenTaiKhoan;
    }

    @Column(name = "MatKhau", nullable = false, length = 20)
    @NotEmpty(message = "Mật khẩu bỏ trống")
    public String getMatKhau() {
        return this.matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

}
