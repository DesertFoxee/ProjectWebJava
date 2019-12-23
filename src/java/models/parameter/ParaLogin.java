package models.parameter;

import org.hibernate.validator.constraints.NotEmpty;

public class ParaLogin {

    private String tenTaiKhoan;
    private String matKhau;

    @NotEmpty(message = "Tên tài khoản bỏ trống")
    public String getTenTaiKhoan() {
        return tenTaiKhoan;
    }

    public void setTenTaiKhoan(String tenTaiKhoan) {
        this.tenTaiKhoan = tenTaiKhoan;
    }

    @NotEmpty(message = "Mật khẩu bỏ trống")
    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }
}
