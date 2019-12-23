package helper;

import java.io.UnsupportedEncodingException;

public class StringHelper {

    public static String decodeStringUTF8(String enco) {
        try {
            byte[] utf8Bytes = enco.getBytes("UTF-8");
           
            return new String(utf8Bytes, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }
}
