package models.parameter;

import models.database.Giay;
import models.database.KichCo;

public class SizeNew {

    private Integer kichCo;
    private Integer soLuong;

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
        KichCo kc = new KichCo();
        kc.setKichCo(kichCo);
        kc.setGiay(g);
        kc.setSoLuong(soLuong);
        return kc;
    }
}
