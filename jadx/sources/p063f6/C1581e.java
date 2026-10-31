package p063f6;

import p260z5.AbstractC3751g;
import p260z5.C3753i;

/* JADX INFO: renamed from: f6.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1581e {

    /* JADX INFO: renamed from: e */
    public static final byte[] f3916e = new byte[0];

    /* JADX INFO: renamed from: a */
    public final AbstractC3751g f3917a;

    /* JADX INFO: renamed from: b */
    public byte[] f3918b = f3916e;

    /* JADX INFO: renamed from: c */
    public final int[] f3919c = new int[32];

    /* JADX INFO: renamed from: d */
    public C1578b f3920d;

    public C1581e(AbstractC3751g abstractC3751g) {
        this.f3917a = abstractC3751g;
    }

    /* JADX INFO: renamed from: a */
    public static int m2666a(int[] iArr) throws C3753i {
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            int i14 = iArr[i13];
            if (i14 > i10) {
                i12 = i13;
                i10 = i14;
            }
            if (i14 > i11) {
                i11 = i14;
            }
        }
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < length; i17++) {
            int i18 = i17 - i12;
            int i19 = iArr[i17] * i18 * i18;
            if (i19 > i16) {
                i15 = i17;
                i16 = i19;
            }
        }
        if (i12 <= i15) {
            int i20 = i12;
            i12 = i15;
            i15 = i20;
        }
        if (i12 - i15 <= length / 16) {
            throw C3753i.f11192d;
        }
        int i21 = i12 - 1;
        int i22 = -1;
        int i23 = i21;
        while (i21 > i15) {
            int i24 = i21 - i15;
            int i25 = (i11 - iArr[i21]) * (i12 - i21) * i24 * i24;
            if (i25 > i22) {
                i23 = i21;
                i22 = i25;
            }
            i21--;
        }
        return i23 << 3;
    }
}
