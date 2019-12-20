package util;

import dao.*;
import java.util.Iterator;
import java.util.List;
import javafx.util.Pair;
import models.database.Giay;
import models.parameter.KeyFilter;
import process.Page;

/**
 *
 * @author DesertFoxee
 */
public class Test {

    public static void main(String[] args) {
       
//       Pair a = Page.getIndexPage(1, 5, 8);
//        System.err.println(a.getKey()+"-"+ a.getValue());
//        
//        KeyFilter key = new KeyFilter();
//        key.putManu("adidas");
//        key.putManu("Đi bộ");
        
//        GiayDAO.filter(key, sort, 0, 0)

//        System.out.println(GiayDAO.check("Thể thao"));
        Pair a =Page.getIndexPage(-1, 2, 4 , 8);
        System.err.println(a.getKey()+"-"+ a.getValue());
        
    }
}
