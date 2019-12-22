package models.parameter;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

public class ParaAddToCart {

    private int maGiay;
    private Integer maKichCo;
    private Integer soLuong;

    public int getMaGiay() {
        return maGiay;
    }

    public void setMaGiay(int maGiay) {
        this.maGiay = maGiay;
    }

    @NotNull(message = "Hãy chọn kích cỡ")
    @Min(value = 0, message = "Kích cỡ không phù hợp")
    public Integer getMaKichCo() {
        return maKichCo;
    }

    public void setMaKichCo(Integer maKichCo) {
        this.maKichCo = maKichCo;
    }

    @NotNull(message = "Hãy chọn số lượng")
    @Min(value = 0, message = "Số lượng phải lớn hơn 0")
    public Integer getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }

}
