package w0;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.b2;
import okhttp3.OkHttpClient;
import okhttp3.Request$Builder;
import okhttp3.Response;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class l1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f5708a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f5709b;
    public static final String c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        e0.m.h(new byte[]{16, 118, 95, 7, -55, -61, -11, -39, 1, 108, 77, 11, -13, -16, -7, -40, 2, 124, 64}, new byte[]{102, 25, 44, 108, -106, -81, -108, -73});
        f5708a = e0.m.h(new byte[]{ByteCompanionObject.MIN_VALUE, 58, 76, 106, 25, -20, 88, -121, -109, 57, 18, 114, 89, -32, 91, -113, -37, 39, 74}, new byte[]{-10, 85, 63, 1, 52, -127, 55, -29});
        f5709b = e0.m.h(new byte[]{17, 88, -10, -106, 86, 11, 82, 50, 2, 91, -88, -114, 22, 7, 81, 58, 74, 69, -16, -45, 1, 15, 77}, new byte[]{103, 55, -123, -3, 123, 102, Base64.padSymbol, 86});
        c = e0.m.h(new byte[]{91, -115, 124, -122, 19, -59, 103, -125, 87, -114, 102, -40, 10, -100, 41, -34, 71, -106, 103, -102, 19, -47, 58, -39, 28, -81, 103, -123, 11, -48}, new byte[]{51, -7, 8, -10, 96, -1, 72, -84});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(InputStream inputStream, FileOutputStream fileOutputStream, long j9, u0 u0Var) throws IOException {
        int iMin;
        byte[] bArr = new byte[32768];
        long j10 = 0;
        int i9 = -1;
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                return;
            }
            fileOutputStream.write(bArr, 0, i10);
            j10 += (long) i10;
            if (u0Var != null && j9 > 0 && (iMin = (int) Math.min(95L, (j10 * 95) / j9)) != i9) {
                v0 v0Var = u0Var.f5773a;
                if (v0Var.isAdded()) {
                    v0Var.requireActivity().runOnUiThread(new s0(v0Var, iMin, 0));
                }
                i9 = iMin;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                b(file2);
            }
        }
        if (file.delete()) {
            return;
        }
        org.apache.commons.net.ftp.a.b(e0.m.h(new byte[]{33, 30, 64, 2, 45, 104, -21, 97, 69, 83, 32, 103, -74, 105, -42, 96, 112, 82, 28, -105, -36, 58, -72, 5, 33, 51, 64, 12, -35, 1, -71, 51, 32, 15, -80}, new byte[]{-15, -125, -112, -73, 13, -71, 104, -79}), file.getName());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(String str, File file, u0 u0Var) {
        Response responseExecute = new OkHttpClient().newCall(new Request$Builder().url(c + str).build()).execute();
        try {
            if (!responseExecute.isSuccessful() || responseExecute.body() == null) {
                throw new IOException(e0.m.h(new byte[]{-72, -120, 52, -2, -111, 119, 43, 80, -72, -100, 53, -53, 96, 39, 73, 50, -35, -8, 100, -101, -3, 38, 120, 50, -45, 9, -84, 31, 20, -89, -37}, new byte[]{104, 41, -28, 75, 64, -9, -5, -30}) + responseExecute.code());
            }
            InputStream inputStreamByteStream = responseExecute.body().byteStream();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    a(inputStreamByteStream, fileOutputStream, responseExecute.body().contentLength(), u0Var);
                    fileOutputStream.close();
                    inputStreamByteStream.close();
                    responseExecute.close();
                } catch (Throwable th) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                if (inputStreamByteStream != null) {
                    try {
                        inputStreamByteStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        } catch (Throwable th5) {
            if (responseExecute != null) {
                try {
                    responseExecute.close();
                } catch (Throwable th6) {
                    th5.addSuppressed(th6);
                }
            }
            throw th5;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void d(File file) {
        if (file == null || file.mkdirs() || file.isDirectory()) {
            return;
        }
        org.apache.commons.net.ftp.a.b(e0.m.h(new byte[]{-20, 72, -87, -23, -41, 46, 125, 101, -120, 5, -55, -116, 76, 47, 64, 100, -67, 4, -11, 124, 38, 126, 46, 11, -20, 98, -87, -24, 39, 79, 47, 55, -19, 89, 89, -116, 72, 47, 78, 101, -125, 5, -61, -115, 116, -33}, new byte[]{60, -43, 121, 92, -9, -1, -2, -75}), file.getName());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static File e(File file) {
        if (file == null || !file.isDirectory()) {
            return null;
        }
        if (new File(file, e0.m.h(new byte[]{8, -52}, new byte[]{105, -95, -98, -126, -114, -126, -14, 37})).isDirectory() && new File(file, e0.m.h(new byte[]{-42, 45, -45, 108}, new byte[]{-75, 66, -67, 10, 101, 17, -48, -71})).isDirectory()) {
            return file;
        }
        File[] fileArrListFiles = file.listFiles(new b2());
        if (fileArrListFiles == null) {
            return null;
        }
        for (File file2 : fileArrListFiles) {
            File fileE = e(file2);
            if (fileE != null) {
                return fileE;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void f(Context context, k1 k1Var, u0 u0Var) {
        File filesDir = context.getFilesDir();
        File file = new File(filesDir, e0.m.h(new byte[]{49, -127, 10, 27, 0, 55, 94, -14, 34, -126, 87, 20, 66, 45, 95, -6, 40, -113, 29}, new byte[]{71, -18, 121, 112, 45, 90, 49, -106}));
        File file2 = new File(filesDir, e0.m.h(new byte[]{-47, -86, -44, 65, -9, -20, -96, 31, -62, -87, -118, 89, -73, -32, -93, 23, -118, -73, -46, 4, -76, -28, -72}, new byte[]{-89, -59, -89, 42, -38, -127, -49, 123}));
        File file3 = new File(context.getFilesDir(), f5708a);
        File file4 = new File(filesDir, e0.m.h(new byte[]{116, -48, -36, -127, -112, -39, 79, -115, 103, -45, -126, -103, -48, -43, 76, -123, 47, -51, -38, -60, -46, -40, 68}, new byte[]{2, -65, -81, -22, -67, -76, 32, -23}));
        b(file2);
        b(file4);
        if (file.exists() && !file.delete()) {
            n0.b.A(e0.m.h(new byte[]{-69, -15, -70, -109, -16, 116, 103, 114, -33, -68, -38, -10, 107, 117, 90, 115, -22, -67, -26, 6, 0, 27, 53, 37, -69, -44, -69, -89, 1, 39, 52, 26, -70, -18, -69, -86, -16, 117, 86, 115, -21, -68, -33, -10, 108, 117, 81, 114, -42, -68, -41, -9, 91, 117, 93, -126, -69, -36, -69, -90, 1, 32, 52, 26, -69, -34}, new byte[]{107, 108, 106, 38, -48, -91, -28, -94}));
            return;
        }
        try {
            if (k1Var.d) {
                InputStream inputStreamOpen = context.getAssets().open(f5709b);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    try {
                        a(inputStreamOpen, fileOutputStream, -1L, u0Var);
                        fileOutputStream.close();
                        inputStreamOpen.close();
                    } catch (Throwable th) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    if (inputStreamOpen != null) {
                        try {
                            inputStreamOpen.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            } else {
                c(k1Var.c, file, u0Var);
            }
            g(file, file2);
            if (e(file2) == null) {
                throw new IOException(e0.m.h(new byte[]{37, -122, -122, -60, 6, -68, -33, 99, 112, -60, 30, -60, 4, -67, -22, -110, 37, -87, 118, -95, -106, -67, -30, 98, 69, -60, 31, -60, 2, -67, -22, 98, 72, -60, 22, 52, 102, -47, -113, 12, 37, -96, 118, -95, 102, -42, -114, 62, -43, 66, -55, 103, -35}, new byte[]{-11, 20, -90, 20, -74, 109, 95, -78}));
            }
            if (file3.exists() && !file3.renameTo(file4)) {
                throw new IOException(e0.m.h(new byte[]{97, -38, -4, 85, -75, -95, 15, -11, 5, -105, -100, 48, 46, -96, 50, -12, 48, -106, -96, -64, 69, -49, 92, -101, 97, -13, -4, 83, 69, -50, 93, -89, 97, -7, -4, 82, 69, -56, 93, -89, 96, -53, 12, 48, 34, -96, 60, -11, 13, -105, -103, 48, 40, -95, 15, 5, 96, -59, -4, 85, 69, -54, 93, -90, 96, -50, -4, 85, 69, -55, -84, -11, 13, -105, -110, 48, 33, -96, 57, -11, 10, -105, -108}, new byte[]{-79, 71, 44, -32, -107, 112, -116, 37}));
            }
            if (!file2.renameTo(file3)) {
                if (file4.exists()) {
                    file4.renameTo(file3);
                }
                throw new IOException(e0.m.h(new byte[]{15, 32, 44, -57, 19, -119, -106, 63, 107, 109, 76, -94, -120, -120, -85, 62, 94, 108, 112, 82, -29, -24, -59, 85, 14, 63, 44, -54, -29, -22, -59, 87, 14, Base64.padSymbol, 44, -52, -29, -22, -59, 95, 14, 63, 45, -2, 19, -120, -88, 63, 97, 109, 78, -93, -80, -119, -101, -49, 15, 1, 44, -52, -29, -20, -59, 90, 15, 6, 45, -2}, new byte[]{-33, -67, -4, 114, 51, 88, 21, -17}));
            }
            b(file4);
            if (u0Var != null) {
                v0 v0Var = u0Var.f5773a;
                if (v0Var.isAdded()) {
                    v0Var.requireActivity().runOnUiThread(new s0(v0Var, 100, 0));
                }
            }
            if (file.exists()) {
                file.delete();
            }
            b(file2);
        } catch (Throwable th5) {
            if (file.exists()) {
                file.delete();
            }
            b(file2);
            throw th5;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void g(File file, File file2) throws IOException {
        if (!file2.mkdirs() && !file2.isDirectory()) {
            n0.b.A(e0.m.h(new byte[]{-80, -21, -6, 86, 103, -39, -84, 6, -44, -90, -102, 51, -4, -40, -111, 7, -31, -89, -90, -61, -106, -119, -1, 104, -80, -63, -6, 87, -105, -72, -2, 84, -79, -6, 10, 51, -8, -40, -97, 6, -33, -90, -112, 50, -60, 40, -1, 106, -80, -56, -6, 87, -105, -67, -1, 109, -80, -50}, new byte[]{96, 118, 42, -29, 71, 8, 47, -42}));
            return;
        }
        String str = file2.getCanonicalPath() + File.separator;
        ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(file));
        try {
            byte[] bArr = new byte[32768];
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    zipInputStream.close();
                    return;
                }
                File file3 = new File(file2, nextEntry.getName());
                if (!file3.getCanonicalPath().startsWith(str)) {
                    throw new IOException(e0.m.h(new byte[]{-105, 32, 73, 117, 50, -20, 124, -39, -105, 2, 72, 67, 51, -39, 125, -27, -105, 5, 73, 124, 51, -45, 124, -34, 103, 109, 38, 17, 97, -119, 46, -74, -53, -99, 73, 114, -62, -120, 28, -74, -57, 108, 28, 16, 90, -120, 30, -73, -14}, new byte[]{71, -67, -103, -64, -30, 88, -84, 103}));
                }
                if (nextEntry.isDirectory()) {
                    d(file3);
                } else {
                    d(file3.getParentFile());
                    FileOutputStream fileOutputStream = new FileOutputStream(file3);
                    while (true) {
                        try {
                            int i9 = zipInputStream.read(bArr);
                            if (i9 == -1) {
                                break;
                            } else {
                                fileOutputStream.write(bArr, 0, i9);
                            }
                        } catch (Throwable th) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                        try {
                            zipInputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th;
                    }
                    fileOutputStream.close();
                }
                zipInputStream.closeEntry();
            }
        } catch (Throwable th4) {
            zipInputStream.close();
            throw th4;
        }
    }
}
