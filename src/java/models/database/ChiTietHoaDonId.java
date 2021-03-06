package models.database;
// Generated Dec 17, 2019 6:33:04 PM by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * ChiTietHoaDonId generated by hbm2java
 */
@Embeddable
public class ChiTietHoaDonId  implements java.io.Serializable {


     private int maHoaDon;
     private int maGiay;

    public ChiTietHoaDonId() {
    }

    public ChiTietHoaDonId(int maHoaDon, int maGiay) {
       this.maHoaDon = maHoaDon;
       this.maGiay = maGiay;
    }
   


    @Column(name="MaHoaDon", nullable=false)
    public int getMaHoaDon() {
        return this.maHoaDon;
    }
    
    public void setMaHoaDon(int maHoaDon) {
        this.maHoaDon = maHoaDon;
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
		 if ( !(other instanceof ChiTietHoaDonId) ) return false;
		 ChiTietHoaDonId castOther = ( ChiTietHoaDonId ) other; 
         
		 return (this.getMaHoaDon()==castOther.getMaHoaDon())
 && (this.getMaGiay()==castOther.getMaGiay());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getMaHoaDon();
         result = 37 * result + this.getMaGiay();
         return result;
   }   


}


