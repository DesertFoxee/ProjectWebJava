package models.database;
// Generated Dec 17, 2019 6:33:04 PM by Hibernate Tools 4.3.1


import java.util.Date;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * DanhGia generated by hbm2java
 */
@Entity
@Table(name="DanhGia"
    ,schema="dbo"
    ,catalog="JAVA_WEB"
)
public class DanhGia  implements java.io.Serializable {


     private DanhGiaId id;
     private Giay giay;
     private KhachHang khachHang;
     private String noiDung;
     private Date thoiGian;

    public DanhGia() {
    }

	
    public DanhGia(DanhGiaId id, Giay giay, KhachHang khachHang, Date thoiGian) {
        this.id = id;
        this.giay = giay;
        this.khachHang = khachHang;
        this.thoiGian = thoiGian;
    }
    public DanhGia(DanhGiaId id, Giay giay, KhachHang khachHang, String noiDung, Date thoiGian) {
       this.id = id;
       this.giay = giay;
       this.khachHang = khachHang;
       this.noiDung = noiDung;
       this.thoiGian = thoiGian;
    }
   
     @EmbeddedId

    
    @AttributeOverrides( {
        @AttributeOverride(name="maKhachHang", column=@Column(name="MaKhachHang", nullable=false) ), 
        @AttributeOverride(name="maGiay", column=@Column(name="MaGiay", nullable=false) ) } )
    public DanhGiaId getId() {
        return this.id;
    }
    
    public void setId(DanhGiaId id) {
        this.id = id;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="MaGiay", nullable=false, insertable=false, updatable=false)
    public Giay getGiay() {
        return this.giay;
    }
    
    public void setGiay(Giay giay) {
        this.giay = giay;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="MaKhachHang", nullable=false, insertable=false, updatable=false)
    public KhachHang getKhachHang() {
        return this.khachHang;
    }
    
    public void setKhachHang(KhachHang khachHang) {
        this.khachHang = khachHang;
    }

    
    @Column(name="NoiDung")
    public String getNoiDung() {
        return this.noiDung;
    }
    
    public void setNoiDung(String noiDung) {
        this.noiDung = noiDung;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="ThoiGian", nullable=false, length=10)
    public Date getThoiGian() {
        return this.thoiGian;
    }
    
    public void setThoiGian(Date thoiGian) {
        this.thoiGian = thoiGian;
    }




}

