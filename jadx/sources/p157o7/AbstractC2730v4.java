package p157o7;

import java.util.logging.Logger;
import p091i4.AbstractC1744b;

/* JADX INFO: renamed from: o7.v4 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2730v4 {

    /* JADX INFO: renamed from: a */
    public static final Logger f7842a = Logger.getLogger(AbstractC2730v4.class.getName());

    /* JADX INFO: renamed from: b */
    public static final byte[] f7843b = "-bin".getBytes(AbstractC1744b.f4558a);

    /* JADX INFO: renamed from: a */
    public static boolean m4256a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length - bArr2.length;
        if (length < 0) {
            return false;
        }
        for (int i10 = length; i10 < bArr.length; i10++) {
            if (bArr[i10] != bArr2[i10 - length]) {
                return false;
            }
        }
        return true;
    }
}
