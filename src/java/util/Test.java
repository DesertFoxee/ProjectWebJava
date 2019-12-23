package util;

import dao.*;
import java.util.Iterator;
import java.util.List;
import javafx.util.Pair;
import models.database.Giay;
import models.database.KhachHang;
import models.parameter.KeyFilter;
import process.Page;

/**
 *
 * @author DesertFoxee
 */
public class Test {

    public static void main(String[] args) {
       
        KhachHang kh = new KhachHang();

        kh.setDiaChi("dfadf");
        kh.setSdt("dafdsfs");
        kh.setTenKhachHang("dafasdf");
        
        
        System.out.println(KhachHangDAO.save(kh));
        
    }
}
