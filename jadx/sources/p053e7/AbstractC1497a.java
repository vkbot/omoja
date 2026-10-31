package p053e7;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: renamed from: e7.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1497a {
    /* JADX INFO: renamed from: a */
    public static boolean m2579a(Context context, File file) throws IOException {
        HashSet hashSet = new HashSet();
        if (context.getApplicationInfo().sourceDir != null) {
            hashSet.add(context.getApplicationInfo().sourceDir);
        }
        if (context.getApplicationInfo().splitSourceDirs != null) {
            hashSet.addAll(Arrays.asList(context.getApplicationInfo().splitSourceDirs));
        }
        for (String str : Build.SUPPORTED_ABIS) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ZipFile zipFile = new ZipFile(new File((String) it.next()), 1);
                try {
                    String strMapLibraryName = System.mapLibraryName("wg-go");
                    StringBuilder sb = new StringBuilder();
                    sb.append("lib");
                    char c = File.separatorChar;
                    sb.append(c);
                    sb.append(str);
                    sb.append(c);
                    sb.append(strMapLibraryName);
                    String string = sb.toString();
                    ZipEntry entry = zipFile.getEntry(string);
                    if (entry != null) {
                        Log.d("WireGuard/SharedLibraryLoader", "Extracting apk:/" + string + " to " + file.getAbsolutePath());
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            InputStream inputStream = zipFile.getInputStream(entry);
                            try {
                                byte[] bArr = new byte[32768];
                                while (true) {
                                    int i10 = inputStream.read(bArr);
                                    if (i10 == -1) {
                                        fileOutputStream.getFD().sync();
                                        inputStream.close();
                                        fileOutputStream.close();
                                        zipFile.close();
                                        return true;
                                    }
                                    fileOutputStream.write(bArr, 0, i10);
                                    try {
                                        fileOutputStream.close();
                                    } catch (Throwable th) {
                                        th.addSuppressed(th);
                                    }
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (Throwable th3) {
                                        th2.addSuppressed(th3);
                                    }
                                }
                                throw th2;
                            }
                        } catch (Throwable th4) {
                            fileOutputStream.close();
                            throw th4;
                        }
                    }
                    zipFile.close();
                } catch (Throwable th5) {
                    try {
                        zipFile.close();
                    } catch (Throwable th6) {
                        th5.addSuppressed(th6);
                    }
                    throw th5;
                }
            }
        }
        return false;
    }
}
