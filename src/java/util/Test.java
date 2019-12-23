package util;

import dao.*;
import java.util.Iterator;
import java.util.List;
import javafx.util.Pair;
import models.database.Giay;
import models.database.KhachHang;
import models.parameter.KeyFilter;
import models.parameter.KeySort;
import process.Filter;
import process.Page;

/**
 *
 * @author DesertFoxee
 */
public class Test {

    public static void main(String[] args) {
       
        KeyFilter key_filter = Filter.processKeyFilter("Adidas", "Thể thao");
        KeySort key_sort = Filter.processKeySort("DF");
        System.out.println(GiayDAO.filter(key_filter, key_sort, "%a%").size());
    }
}
