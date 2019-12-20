package process;

import java.util.List;
import models.database.Giay;
import models.parameter.KeyFilter;
import models.parameter.KeySort;

public class Filter {

    public static List<Giay> getRange(List<Giay> l_shoes, int start, int count) {
        if (l_shoes != null) {
            int size = l_shoes.size();
            start = (start-1 <0) ? 0 :start -1;
            if (size > 0) {
                int end = start + count;
                end = (end > size) ? size :end;
                try{
                    return l_shoes.subList(start, end);
                }catch(IndexOutOfBoundsException e){
                    System.err.println("Exception thrown : " + e); 
                }
            }
        }
        return null;
    }

    public static KeyFilter processKeyFilter(String manu, String type) {
        KeyFilter key_filter = new KeyFilter();
        manu = ("0".equals(manu)) ? null : manu;  
        type = ("0".equals(type)) ? null : type;  
        key_filter.putManu(manu);
        key_filter.putType(type);
        return key_filter;
    }

    public static KeySort processKeySort(String key) {
        KeySort key_sort = new KeySort();
        if (key == null) {
            return null;
        }
        String down = "desc";
        String up = "asc";
        String _key = key.toUpperCase();
        switch (_key) {
            case "NAZ":
                key_sort.set("tenGiay", up);
                break;
            case "NZA":
                key_sort.set("tenGiay", down);
                break;
            case "PLH":
                key_sort.set("gia", up);
                break;
            case "PHL":
                key_sort.set("gia", down);
                break;
            case "DIS":
                key_sort.set("giamGia", up);
                break;
            default:
                key_sort = null;
                break;
        }
        return key_sort;
    }

}
