package models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "QuanTri",
        schema = "dbo",
        catalog = "JAVA_WEB"
)
public class QuanTri implements java.io.Serializable {

    private int maQuanTri;
    private String tenTaiKhoan;
    private String matKhau;

    public QuanTri() {
    }

    public QuanTri(String tenTaiKhoan, String matKhau) {
        this.tenTaiKhoan = tenTaiKhoan;
        this.matKhau = matKhau;
    }
    @Id
    @Column(name="MaQuanTri", unique=true, nullable=false)
    public int getMaQuanTri() {
        return maQuanTri;
    }

    public void setMaQuanTri(int maQuanTri) {
        this.maQuanTri = maQuanTri;
    }

    @Column(name="TenTaiKhoan", nullable=false, length=30)
    @NotEmpty(message= "Tài khoản trống")
    public String getTenTaiKhoan() {
        return tenTaiKhoan;
    }

    
    public void setTenTaiKhoan(String tenTaiKhoan) {
        this.tenTaiKhoan = tenTaiKhoan;
    }
    
    @Column(name="MatKhau", nullable=false, length=20)
    @NotEmpty(message ="Mật khẩu trống")
    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }
}
