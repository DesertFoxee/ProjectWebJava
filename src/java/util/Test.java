package util;

import dao.*;
import java.util.Iterator;
import java.util.List;
import models.database.Giay;

/**
 *
 * @author DesertFoxee
 */
public class Test {

    public static void main(String[] args) {
        
        List<Giay> shoes = GiayDAO.getShoesManu("adidas", "gia", 10, true);
        for (Giay shoe : shoes) {
            System.out.println("Tengiay  : "+ shoe.getTenGiay() + " Gia : " + shoe.getGia());;
        }
    }
}
