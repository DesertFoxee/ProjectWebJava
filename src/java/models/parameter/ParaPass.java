package models.parameter;

import Annotation.FieldMatch;
import org.hibernate.validator.constraints.NotEmpty;


@FieldMatch(first = "xacNhanMatKhau", second = "matKhau", message = "Mật khẩu không trùng khớp")
public class ParaPass {

    private String matKhau;
    private String matKhauCu;
    private String xacNhanMatKhau;

    @NotEmpty(message = "Mật khẩu không trống")
    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    @NotEmpty(message = "Mật khẩu cũ không trống")
    public String getMatKhauCu() {
        return matKhauCu;
    }

    public void setMatKhauCu(String matKhauCu) {
        this.matKhauCu = matKhauCu;
    }

    @NotEmpty(message = "Xác nhận mật khẩu không trống")
    public String getXacNhanMatKhau() {
        return xacNhanMatKhau;
    }

    public void setXacNhanMatKhau(String xacNhanMatKhau) {
        this.xacNhanMatKhau = xacNhanMatKhau;
    }
}
