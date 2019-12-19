package models.parameter;

import models.database.Giay;
import models.database.HangGiay;
import models.database.LoaiGiay;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

public class ParaShoes {

    private int maGiay;
    private String tenGiay;
    private String tieuDe;
    private Integer gia = 0;
    private Integer giamGia = 0;
    private String mauSac;
    private String moTa;
    private String maHangGiay;
    private String maLoaiGiay;

    public int getMaGiay() {
        return maGiay;
    }

    public void setMaGiay(int maGiay) {
        this.maGiay = maGiay;
    }

    public String getMaHangGiay() {
        return maHangGiay;
    }

    public void setMaHangGiay(String maHangGiay) {
        this.maHangGiay = maHangGiay;
    }

    public String getMaLoaiGiay() {
        return maLoaiGiay;
    }

    public void setMaLoaiGiay(String maLoaiGiay) {
        this.maLoaiGiay = maLoaiGiay;
    }

    @NotEmpty(message = "Tên giày không được bỏ trống")
    public String getTenGiay() {
        return tenGiay;
    }

    public void setTenGiay(String tenGiay) {
        this.tenGiay = tenGiay;
    }

    @NotEmpty(message = "Tên đề không được bỏ trống")
    public String getTieuDe() {
        return tieuDe;
    }

    public void setTieuDe(String tieuDe) {
        this.tieuDe = tieuDe;
    }

    @Range(min = 0 , max = 10000000 ,message = "Giá thành quá thấp hoặc cao")
    public Integer getGia() {
        return gia;
    }

    public void setGia(Integer gia) {
        this.gia = gia;
    }

    @Range(min = 0, max = 100, message = "Giảm giá trong khoảng (0, 100)")
    public Integer getGiamGia() {
        return giamGia;
    }

    public void setGiamGia(Integer giamGia) {
        this.giamGia = giamGia;
    }
    
    @NotEmpty(message = "Màu sắc không rỗng ")
    public String getMauSac() {
        return mauSac;
    }

    public void setMauSac(String mauSac) {
        this.mauSac = mauSac;
    }

    @NotEmpty(message = "Mô tả không rỗng")
    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public Giay convertGiay(HangGiay h, LoaiGiay l) {
        Giay g = new Giay();
        g.setMaGiay(maGiay);
        g.setGia(gia);
        g.setGiamGia(giamGia);
        g.setMauSac(mauSac);
        g.setMoTa(moTa);
        g.setTieuDe(tieuDe);
        g.setTenGiay(tenGiay);
        g.setHangGiay(h);
        g.setLoaiGiay(l);
        return g;
    }

}
