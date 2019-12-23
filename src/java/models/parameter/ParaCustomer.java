package models.parameter;

import org.hibernate.validator.constraints.NotEmpty;


public class ParaCustomer {

    private String tenKhachHang;
    private String sdt;
    private String diaChi;


    @NotEmpty(message = "Tên khách hàng không trống")
    public String getTenKhachHang() {
        return tenKhachHang;
    }

    public void setTenKhachHang(String tenKhachHang) {
        this.tenKhachHang = tenKhachHang;
    }

    @NotEmpty(message = "Số điện thoại không trống")
    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    @NotEmpty(message = "Địa chỉ không trống")
    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }


}
