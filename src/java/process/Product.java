package process;

import models.database.Giay;
import models.database.KichCo;

public class Product {

    public static int getCountShoes(Giay shoes) {
        int count = 0;
        if (shoes != null) {
            for (KichCo kichCo : shoes.getKichCos()) {
                count += kichCo.getSoLuong();
            }
        }
        return count;
    }
}
