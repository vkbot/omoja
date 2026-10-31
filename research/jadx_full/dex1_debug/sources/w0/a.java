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
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f5593a = e0.m.h(new byte[]{121, 47, 100, 62, -45, -114, 79, 64, 117, 44, 126, 96, -54, -41, 1, 29, 101, 52, ByteCompanionObject.MAX_VALUE, 34, -45, -102, 18, 26, 62, 13, ByteCompanionObject.MAX_VALUE, Base64.padSymbol, -53, -101, 13, 26, 125, 47, 121, 34, -55, -38, 7, 26, 112, 55, Base64.padSymbol, 43, -107, -103, 19, 2, 112, 55, 124, 99, -55, -38, 20, 87, 63, 33, 121, 62}, new byte[]{17, 91, 16, 78, -96, -76, 96, 111});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f5594b = e0.m.h(new byte[]{-42, -33, 86, 73, -124, -16, -4, -55, -36, -33, 91, 81, -64, -7, -96, -118, -56, -57, 91, 81, -127, -79, -4, -55, -49, -110}, new byte[]{-69, -86, 58, Base64.padSymbol, -19, -100, -107, -89});
    public static final String c = e0.m.h(new byte[]{72, 78, 91, 101, -60, -40, -54, -16, 66, 78, 86, 125, ByteCompanionObject.MIN_VALUE, -47, -106, -77, 86, 86, 86, 125, -63, -103, -54, -16, 81, 3, 25, 126, -61, -38, -37}, new byte[]{37, 59, 55, 17, -83, -76, -93, -98});
    public static final String d = e0.m.h(new byte[]{-119, -70, -50, -107, 101, -94, 87, ByteCompanionObject.MAX_VALUE, -113, -5, -49, -125, 100, -91}, new byte[]{-3, -43, -91, -16, 11, -53, 45, 26});

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                a(file2);
            }
        }
        if (file.delete()) {
            return;
        }
        org.apache.commons.net.ftp.a.b(e0.m.h(new byte[]{52, 121, 95, 101, -39, -41, 97, 0, 80, 52, 63, 0, 66, -42, 92, 1, 101, 53, 3, -16, 40, -123, 50, 100, 52, 84, 95, 107, 41, -66, 51, 82, 53, 104, -81}, new byte[]{-28, -28, -113, -48, -7, 6, -30, -48}), file.getName());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:58:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:? A[Catch: all -> 0x0093, SYNTHETIC, TryCatch #0 {all -> 0x0093, blocks: (B:3:0x001c, B:5:0x0022, B:7:0x0028, B:28:0x008c, B:45:0x00ac, B:44:0x00a9, B:46:0x00ad, B:47:0x00d7, B:8:0x0030, B:27:0x0089, B:39:0x00a1, B:38:0x009e, B:41:0x00a4), top: B:54:0x001c, inners: #2, #3 }] */
    public static void b(File file, u0 u0Var) {
        Response responseExecute = new OkHttpClient().newCall(new Request$Builder().url(f5593a).build()).execute();
        try {
            if (!responseExecute.isSuccessful() || responseExecute.body() == null) {
                throw new IOException(e0.m.h(new byte[]{-65, 88, 47, -109, 74, 112, -68, 109, -65, 76, 46, -90, -69, 32, -34, 15, -38, 40, ByteCompanionObject.MAX_VALUE, -10, 38, 33, -17, 15, -44, -39, -73, 114, -49, -96, 76}, new byte[]{111, -7, -1, 38, -101, -16, 108, -33}) + responseExecute.code());
            }
            InputStream inputStreamByteStream = responseExecute.body().byteStream();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[32768];
                    long jContentLength = responseExecute.body().contentLength();
                    int i9 = -1;
                    int i10 = -1;
                    long j9 = 0;
                    while (true) {
                        int i11 = inputStreamByteStream.read(bArr);
                        if (i11 == i9) {
                            fileOutputStream.close();
                            inputStreamByteStream.close();
                            responseExecute.close();
                            return;
                        }
                        fileOutputStream.write(bArr, 0, i11);
                        j9 += (long) i11;
                        if (jContentLength > 0) {
                            int iMin = (int) Math.min(95L, (j9 * 95) / jContentLength);
                            if (iMin != i10) {
                                v0 v0Var = u0Var.f5773a;
                                if (v0Var.isAdded()) {
                                    v0Var.requireActivity().runOnUiThread(new s0(v0Var, iMin, 1));
                                }
                                i10 = iMin;
                            }
                            i9 = -1;
                        }
                        if (inputStreamByteStream != null) {
                            throw th;
                        }
                        try {
                            inputStreamByteStream.close();
                            throw th;
                        } catch (Throwable th) {
                            th.addSuppressed(th);
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    try {
                        fileOutputStream.close();
                        throw th2;
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                        throw th2;
                    }
                }
            } catch (Throwable th4) {
                if (inputStreamByteStream != null) {
                    throw th4;
                }
                inputStreamByteStream.close();
                throw th4;
            }
        } catch (Throwable th5) {
            if (responseExecute == null) {
                throw th5;
            }
            try {
                responseExecute.close();
                throw th5;
            } catch (Throwable th6) {
                th5.addSuppressed(th6);
                throw th5;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(File file) {
        if (file == null || file.mkdirs() || file.isDirectory()) {
            return;
        }
        org.apache.commons.net.ftp.a.b(e0.m.h(new byte[]{-16, 46, 74, -39, 47, 10, 66, Base64.padSymbol, -108, 99, 42, -68, -76, 11, ByteCompanionObject.MAX_VALUE, 60, -95, 98, 22, 76, -34, 90, 17, 83, -16, 4, 74, -40, -33, 107, 16, 111, -15, 63, -70, -68, -80, 11, 113, Base64.padSymbol, -97, 99, 32, -67, -116, -5}, new byte[]{32, -77, -102, 108, 15, -37, -63, -19}), file.getName());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static File d(File file) {
        if (file != null && file.isDirectory()) {
            File file2 = new File(file, c);
            File file3 = new File(file, d);
            if (file2.isFile() && file2.length() > 0 && file3.isFile() && file3.length() > 0) {
                return file;
            }
            File[] fileArrListFiles = file.listFiles(new b2());
            if (fileArrListFiles != null) {
                for (File file4 : fileArrListFiles) {
                    File fileD = d(file4);
                    if (fileD != null) {
                        return fileD;
                    }
                }
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void e(Context context, u0 u0Var) {
        File filesDir = context.getFilesDir();
        File file = new File(filesDir, e0.m.h(new byte[]{92, 78, 28, -100, 33, 81, -21, -53, 86, 78, 17, -124, 101, 88, -73, -120, 66, 86, 17, -124, 36, 16, -21, -53, 69, 3, 94, -116, 39, 74, -20, -55, 94, 90, 20}, new byte[]{49, 59, 112, -24, 72, Base64.padSymbol, -126, -91}));
        File file2 = new File(filesDir, e0.m.h(new byte[]{33, -92, 113, -19, 10, 50, 8, 85, 43, -92, 124, -11, 78, 59, 84, 22, 63, -68, 124, -11, 15, 115, 8, 85, 56, -23, 51, -9, 6, 41}, new byte[]{76, -47, 29, -103, 99, 94, 97, 59}));
        File file3 = new File(context.getFilesDir(), f5594b);
        File file4 = new File(filesDir, e0.m.h(new byte[]{4, -106, 87, -78, 113, -48, 100, -20, 14, -106, 90, -86, 53, -39, 56, -81, 26, -114, 90, -86, 116, -111, 100, -20, 29, -37, 21, -87, 116, -40}, new byte[]{105, -29, 59, -58, 24, -68, 13, -126}));
        a(file2);
        a(file4);
        a(file);
        try {
            b(file, u0Var);
            g(file, file2);
            if (d(file2) == null) {
                throw new IOException(e0.m.h(new byte[]{16, 67, -100, 78, 5, 75, 85, -21, 69, 1, 4, 78, 7, 74, 96, 26, 16, 108, 108, 43, -107, 74, 104, -22, 112, 1, 5, 78, 1, 74, 96, -22, 125, 0, 55, -66, -6, -44, -101, 98, -19, 1, 0, 78, 11, 74, 97, -22, 117, 1, 7, 79, 57, -70, 5, -126, -32, -91, -45, -11, -48, -12, -68, 64, -91, -93, -110, -12, -58, -11, -69}, new byte[]{-64, -47, -68, -98, -75, -102, -43, 58}));
            }
            if (file3.exists() && !file3.renameTo(file4)) {
                throw new IOException(e0.m.h(new byte[]{68, -94, -79, 69, -48, 73, 69, -35, 32, -17, -47, 32, 75, 72, 120, -36, 21, -18, -19, -48, 32, 39, 22, -77, 68, -117, -79, 67, 32, 38, 23, -113, 68, -127, -79, 66, 32, 32, 23, -113, 69, -77, 65, 32, 71, 72, 118, -35, 40, -17, -44, 32, 77, 73, 69, 45, 68, -125, -79, 78, 32, 44, 22, -72, 68, -124, -79, 72}, new byte[]{-108, 63, 97, -16, -16, -104, -58, 13}));
            }
            if (!file2.renameTo(file3)) {
                if (file4.exists()) {
                    file4.renameTo(file3);
                }
                throw new IOException(e0.m.h(new byte[]{27, 81, -115, -102, -109, -17, -19, -13, ByteCompanionObject.MAX_VALUE, 28, -19, -1, 8, -18, -48, -14, 74, 29, -47, 15, 99, -114, -66, -103, 26, 78, -115, -105, 99, -116, -66, -101, 26, 76, -115, -111, 99, -116, -66, -109, 26, 78, -116, -93, -109, -18, -46, -13, 117, 28, -23, -1, 6, -18, -43, -14, 71}, new byte[]{-53, -52, 93, 47, -77, 62, 110, 35}));
            }
            a(file4);
            v0 v0Var = u0Var.f5773a;
            if (v0Var.isAdded()) {
                v0Var.requireActivity().runOnUiThread(new s0(v0Var, 100, 1));
            }
            a(file);
            a(file2);
        } catch (Throwable th) {
            a(file);
            a(file2);
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean f(Context context) {
        return d(new File(context.getFilesDir(), f5594b)) != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void g(File file, File file2) throws IOException {
        if (!file2.mkdirs() && !file2.isDirectory()) {
            n0.b.A(e0.m.h(new byte[]{-104, -85, -123, -123, -73, 116, -62, -55, -4, -26, -27, -32, 44, 117, -1, -56, -55, -25, -39, 16, 70, 36, -111, -89, -104, -127, -123, -124, 71, 21, -112, -101, -103, -70, 117, -32, 40, 117, -15, -55, -9, -26, -17, -31, 20, -123, -111, -91, -104, -120, -123, -124, 71, 16, -111, -94, -104, -114}, new byte[]{72, 54, 85, 48, -105, -91, 65, 25}));
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
                    throw new IOException(e0.m.h(new byte[]{-10, -118, -69, 121, -2, 2, -113, 7, -10, -88, -70, 79, -1, 55, -114, 59, -10, -81, -69, 112, -1, Base64.padSymbol, -113, 0, 6, -57, -44, 29, -83, 103, -35, 104, -86, 55, -69, 126, 14, 102, -17, 104, -90, -58, -18, 28, -106, 102, -19, 105, -109}, new byte[]{38, 23, 107, -52, 46, -74, 95, -71}));
                }
                if (nextEntry.isDirectory()) {
                    c(file3);
                } else {
                    c(file3.getParentFile());
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
