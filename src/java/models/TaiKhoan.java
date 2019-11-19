package models;
// Generated Nov 19, 2019 8:38:44 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * TaiKhoan generated by hbm2java
 */
@Entity
@Table(name="TaiKhoan"
    ,schema="dbo"
    ,catalog="JAVA_WEB"
)
public class TaiKhoan  implements java.io.Serializable {


     private int maTaiKhoan;
     private KhachHang khachHang;
     private String tenTaiKhoan;
     private String matKhau;
     private Set<GioHang> gioHangs = new HashSet<GioHang>(0);

    public TaiKhoan() {
    }

	
    public TaiKhoan(int maTaiKhoan, KhachHang khachHang, String tenTaiKhoan, String matKhau) {
        this.maTaiKhoan = maTaiKhoan;
        this.khachHang = khachHang;
        this.tenTaiKhoan = tenTaiKhoan;
        this.matKhau = matKhau;
    }
    public TaiKhoan(int maTaiKhoan, KhachHang khachHang, String tenTaiKhoan, String matKhau, Set<GioHang> gioHangs) {
       this.maTaiKhoan = maTaiKhoan;
       this.khachHang = khachHang;
       this.tenTaiKhoan = tenTaiKhoan;
       this.matKhau = matKhau;
       this.gioHangs = gioHangs;
    }
   
     @Id 

    
    @Column(name="MaTaiKhoan", unique=true, nullable=false)
    public int getMaTaiKhoan() {
        return this.maTaiKhoan;
    }
    
    public void setMaTaiKhoan(int maTaiKhoan) {
        this.maTaiKhoan = maTaiKhoan;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="MaKhachHang", nullable=false)
    public KhachHang getKhachHang() {
        return this.khachHang;
    }
    
    public void setKhachHang(KhachHang khachHang) {
        this.khachHang = khachHang;
    }

    
    @Column(name="TenTaiKhoan", nullable=false, length=30)
    public String getTenTaiKhoan() {
        return this.tenTaiKhoan;
    }
    
    public void setTenTaiKhoan(String tenTaiKhoan) {
        this.tenTaiKhoan = tenTaiKhoan;
    }

    
    @Column(name="MatKhau", nullable=false, length=20)
    public String getMatKhau() {
        return this.matKhau;
    }
    
    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="taiKhoan")
    public Set<GioHang> getGioHangs() {
        return this.gioHangs;
    }
    
    public void setGioHangs(Set<GioHang> gioHangs) {
        this.gioHangs = gioHangs;
    }




}


