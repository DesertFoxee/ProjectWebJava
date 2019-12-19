package helper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.List;
import org.springframework.web.multipart.MultipartFile;

public class FileHelper {

    private static final List<String> contentTypes = Arrays.asList("image/png", "image/jpeg", "image/gif");

    public static String getExtensionFile(MultipartFile file) {
        String extension = null;
        String fileContentType = file.getContentType();
        int location = contentTypes.indexOf(fileContentType);
        if (location != -1) {
            extension = contentTypes.get(location).split("/")[1];
        }
        return extension;
    }

    public static boolean uploadImage(MultipartFile file, String path,
            String fileName) {
        boolean uploaded = false;
        InputStream inputStream;
        OutputStream outputStream;
        try {
            inputStream = file.getInputStream();
            outputStream = new FileOutputStream(path + "/" + fileName);

            int readBytes = 0;
            byte[] buffer = new byte[100];

            while ((readBytes = inputStream.read(buffer, 0, 100)) != -1) {
                outputStream.write(buffer, 0, readBytes);
            }
            outputStream.close();
            inputStream.close();
            uploaded = true;
        } catch (IOException e) {
            uploaded = false;
        }
        return uploaded;
    }

    public static void deletFile(String path, String fileName) {
        try {
            File file = new File(path + "/" + fileName);
            file.delete();
        } catch (Exception e) {
        }

    }
}
