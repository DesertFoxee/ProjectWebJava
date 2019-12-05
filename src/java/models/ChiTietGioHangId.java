package models;
// Generated Nov 30, 2019 4:49:45 PM by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Embeddable;


@Embeddable
public class ChiTietGioHangId  implements java.io.Serializable {


     private int maGioHang;
     private int maGiay;

    public ChiTietGioHangId() {
    }

    public ChiTietGioHangId(int maGioHang, int maGiay) {
       this.maGioHang = maGioHang;
       this.maGiay = maGiay;
    }
   


    @Column(name="MaGioHang", nullable=false)
    public int getMaGioHang() {
        return this.maGioHang;
    }
    
    public void setMaGioHang(int maGioHang) {
        this.maGioHang = maGioHang;
    }


    @Column(name="MaGiay", nullable=false)
    public int getMaGiay() {
        return this.maGiay;
    }
    
    public void setMaGiay(int maGiay) {
        this.maGiay = maGiay;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof ChiTietGioHangId) ) return false;
		 ChiTietGioHangId castOther = ( ChiTietGioHangId ) other; 
         
		 return (this.getMaGioHang()==castOther.getMaGioHang())
 && (this.getMaGiay()==castOther.getMaGiay());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getMaGioHang();
         result = 37 * result + this.getMaGiay();
         return result;
   }   


}


