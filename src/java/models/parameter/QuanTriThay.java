package models.parameter;

import Annotation.FieldMatch;
import org.hibernate.validator.constraints.NotEmpty;

@FieldMatch(first = "xacNhanMatKhau", second = "matKhauMoi", message = "Mật khẩu không trùng khớp")
public class QuanTriThay {

    private int maQuantri;
    private String tenTaiKhoan;
    private String xacNhanMatKhau;
    private String maKhauCu;
    private String matKhauMoi;

    public int getMaQuantri() {
        return maQuantri;
    }

    public void setMaQuantri(int maQuantri) {
        this.maQuantri = maQuantri;
    }

    @NotEmpty(message = "Tên tài khoản được bỏ trống")
    public String getTenTaiKhoan() {
        return tenTaiKhoan;
    }

    public void setTenTaiKhoan(String tenTaiKhoan) {
        this.tenTaiKhoan = tenTaiKhoan;
    }

    @NotEmpty(message = "Tên tài khoản được bỏ trống")
    public String getXacNhanMatKhau() {
        return xacNhanMatKhau;
    }

    public void setXacNhanMatKhau(String xacNhanMatKhau) {
        this.xacNhanMatKhau = xacNhanMatKhau;
    }

    @NotEmpty(message = "Không được bỏ trống")
    public String getMaKhauCu() {
        return maKhauCu;
    }

    public void setMaKhauCu(String maKhauCu) {
        this.maKhauCu = maKhauCu;
    }

    @NotEmpty(message = "Không được bỏ trống")
    public String getMatKhauMoi() {
        return matKhauMoi;
    }

    public void setMatKhauMoi(String matKhauMoi) {
        this.matKhauMoi = matKhauMoi;
    }
}
