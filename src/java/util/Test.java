package util;

import models.Giay;
import java.util.Iterator;
import java.util.List;
import dao.*;

/**
 *
 * @author DesertFoxee
 */
public class Test {
    public static void main(String[] args) {
      
        List a = GiayDAO.getAllShoes();
        for (Iterator<Giay> iterator = a.iterator(); iterator.hasNext();) {
            Giay next = iterator.next();
            System.out.println(next.getTenGiay() +" + " +next.getHangGiay().getTenHangGiay());
        }
    }
}
