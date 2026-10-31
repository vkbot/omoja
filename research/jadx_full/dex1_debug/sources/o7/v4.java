package o7;

import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class v4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f4485a = Logger.getLogger(v4.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f4486b = "-bin".getBytes(i4.b.f2657a);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length - bArr2.length;
        if (length < 0) {
            return false;
        }
        for (int i9 = length; i9 < bArr.length; i9++) {
            if (bArr[i9] != bArr2[i9 - length]) {
                return false;
            }
        }
        return true;
    }
}
