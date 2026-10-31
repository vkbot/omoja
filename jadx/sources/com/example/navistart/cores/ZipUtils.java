package com.example.navistart.cores;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ZipUtils {
    public static void unzip(File file, File file2) throws IOException {
        byte[] bArr = new byte[4096];
        ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(file));
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                zipInputStream.close();
                return;
            }
            File file3 = new File(file2, nextEntry.getName());
            if (nextEntry.isDirectory()) {
                file3.mkdirs();
            } else {
                file3.getParentFile().mkdirs();
                FileOutputStream fileOutputStream = new FileOutputStream(file3);
                while (true) {
                    int i10 = zipInputStream.read(bArr);
                    if (i10 <= 0) {
                        break;
                    } else {
                        fileOutputStream.write(bArr, 0, i10);
                    }
                }
                fileOutputStream.close();
            }
            zipInputStream.closeEntry();
        }
    }
}
