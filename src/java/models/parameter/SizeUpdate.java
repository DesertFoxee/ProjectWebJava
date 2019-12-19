package models.parameter;

import models.database.Giay;
import models.database.KichCo;

public class SizeUpdate {

    private int maKichCo;
    private Integer kichCo;
    private Integer soLuong;

    public int getMaKichCo() {
        return maKichCo;
    }

    public void setMaKichCo(int maKichCo) {
        this.maKichCo = maKichCo;
    }

    public Integer getKichCo() {
        return kichCo;
    }

    public void setKichCo(Integer kichCo) {
        this.kichCo = kichCo;
    }

    public Integer getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }

    public KichCo convertKichCo(Giay g) {
        return new KichCo(this.maKichCo, g, this.kichCo, this.soLuong);
    }

}
