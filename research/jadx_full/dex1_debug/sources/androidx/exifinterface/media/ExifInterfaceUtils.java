package androidx.exifinterface.media;

import android.util.Log;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class ExifInterfaceUtils {
    private static final String TAG = "ExifInterfaceUtils";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ExifInterfaceUtils() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String byteArrayToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b9 : bArr) {
            sb.append(String.format("%02x", Byte.valueOf(b9)));
        }
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void closeFileDescriptor(FileDescriptor fileDescriptor) {
        try {
            ExifInterfaceUtils$Api21Impl.close(fileDescriptor);
        } catch (Exception unused) {
            Log.e(TAG, "Error closing fd.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long[] convertToLongArray(Object obj) {
        if (!(obj instanceof int[])) {
            if (obj instanceof long[]) {
                return (long[]) obj;
            }
            return null;
        }
        int[] iArr = (int[]) obj;
        long[] jArr = new long[iArr.length];
        for (int i9 = 0; i9 < iArr.length; i9++) {
            jArr[i9] = iArr[i9];
        }
        return jArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void copy(InputStream inputStream, OutputStream outputStream, int i9) throws IOException {
        byte[] bArr = new byte[8192];
        while (i9 > 0) {
            int iMin = Math.min(i9, 8192);
            int i10 = inputStream.read(bArr, 0, iMin);
            if (i10 != iMin) {
                b.A("Failed to copy the given amount of bytes from the inputstream to the output stream.");
                return;
            } else {
                i9 -= i10;
                outputStream.write(bArr, 0, i10);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long parseSubSeconds(String str) {
        try {
            int iMin = Math.min(str.length(), 3);
            long j9 = Long.parseLong(str.substring(0, iMin));
            while (iMin < 3) {
                j9 *= 10;
                iMin++;
            }
            return j9;
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean startsWith(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null || bArr.length < bArr2.length) {
            return false;
        }
        for (int i9 = 0; i9 < bArr2.length; i9++) {
            if (bArr[i9] != bArr2[i9]) {
                return false;
            }
        }
        return true;
    }

    public static int copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        int i9 = 0;
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                return i9;
            }
            i9 += i10;
            outputStream.write(bArr, 0, i10);
        }
    }
}
