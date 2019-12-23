package models.parameter;

import Annotation.FieldMatch;
import models.database.KhachHang;
import models.database.TaiKhoan;
import org.hibernate.validator.constraints.NotEmpty;

@FieldMatch(first = "xacNhanMatKhau", second = "matKhau", message = "Mật khẩu không trùng khớp")
public class ParaNewCustomer {

    private String tenKhachHang;
    private String sdt;
    private String diaChi;
    private String matKhau;
    private String tenTaiKhoan;
    private String xacNhanMatKhau;

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

    @NotEmpty(message = "Mật khẩu không trống")
    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    @NotEmpty(message = "Tên tài khoản không trống")
    public String getTenTaiKhoan() {
        return tenTaiKhoan;
    }

    public void setTenTaiKhoan(String tenTaiKhoan) {
        this.tenTaiKhoan = tenTaiKhoan;
    }

    @NotEmpty(message = "Xác nhận mật khẩu không trống")
    public String getXacNhanMatKhau() {
        return xacNhanMatKhau;
    }

    public void setXacNhanMatKhau(String xacNhanMatKhau) {
        this.xacNhanMatKhau = xacNhanMatKhau;
    }
    
    public KhachHang convertToNewKhachHang(){
        KhachHang kh = new KhachHang();
        kh.setDiaChi(diaChi);
        kh.setSdt(sdt);
        kh.setTenKhachHang(tenKhachHang);
        return kh;
    }
    public TaiKhoan convertToNewTaiKhoan(){
        TaiKhoan tk = new TaiKhoan();
        tk.setTenTaiKhoan(tenTaiKhoan);
        tk.setMatKhau(matKhau);
        return tk;
    }

}
