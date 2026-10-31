package p260z5;

import kotlin.UByte;
import org.apache.commons.p161io.FilenameUtils;

/* JADX INFO: renamed from: z5.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3751g {

    /* JADX INFO: renamed from: a */
    public final int f11187a;

    /* JADX INFO: renamed from: b */
    public final int f11188b;

    public AbstractC3751g(int i10, int i11) {
        this.f11187a = i10;
        this.f11188b = i11;
    }

    /* JADX INFO: renamed from: a */
    public abstract byte[] mo5981a();

    /* JADX INFO: renamed from: b */
    public abstract byte[] mo5982b(int i10, byte[] bArr);

    /* JADX INFO: renamed from: c */
    public boolean mo5983c() {
        return false;
    }

    /* JADX INFO: renamed from: d */
    public AbstractC3751g mo5984d() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 90 degrees.");
    }

    public final String toString() {
        char c;
        int i10 = this.f11187a;
        byte[] bArrMo5982b = new byte[i10];
        int i11 = this.f11188b;
        StringBuilder sb = new StringBuilder((i10 + 1) * i11);
        for (int i12 = 0; i12 < i11; i12++) {
            bArrMo5982b = mo5982b(i12, bArrMo5982b);
            for (int i13 = 0; i13 < i10; i13++) {
                int i14 = bArrMo5982b[i13] & UByte.MAX_VALUE;
                if (i14 < 64) {
                    c = '#';
                } else if (i14 < 128) {
                    c = '+';
                } else {
                    c = i14 < 192 ? FilenameUtils.EXTENSION_SEPARATOR : ' ';
                }
                sb.append(c);
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
