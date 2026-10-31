package p140m9;

import java.io.EOFException;
import kotlin.UByte;
import kotlin.text.Charsets;
import p130l9.C2224b0;
import p130l9.C2242l;
import p130l9.C2253w;

/* JADX INFO: renamed from: m9.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2430a {

    /* JADX INFO: renamed from: a */
    public static final byte[] f6597a;

    static {
        byte[] bytes = "0123456789abcdef".getBytes(Charsets.UTF_8);
        bytes.getClass();
        f6597a = bytes;
    }

    /* JADX INFO: renamed from: a */
    public static final boolean m3785a(C2224b0 c2224b0, int i10, byte[] bArr, int i11) {
        int i12 = c2224b0.f5851c;
        byte[] bArr2 = c2224b0.f5849a;
        for (int i13 = 1; i13 < i11; i13++) {
            if (i10 == i12) {
                c2224b0 = c2224b0.f5854f;
                c2224b0.getClass();
                bArr2 = c2224b0.f5849a;
                i10 = c2224b0.f5850b;
                i12 = c2224b0.f5851c;
            }
            if (bArr2[i10] != bArr[i13]) {
                return false;
            }
            i10++;
        }
        return true;
    }

    /* JADX INFO: renamed from: b */
    public static final String m3786b(C2242l c2242l, long j10) throws EOFException {
        if (j10 > 0) {
            long j11 = j10 - 1;
            if (c2242l.m3606V(j11) == 13) {
                String strM3615g0 = c2242l.m3615g0(j11, Charsets.UTF_8);
                c2242l.skip(2L);
                return strM3615g0;
            }
        }
        String strM3615g1 = c2242l.m3615g0(j10, Charsets.UTF_8);
        c2242l.skip(1L);
        return strM3615g1;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00a1 A[LOOP:0: B:8:0x001c->B:49:0x00a1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:55:0x00a0 A[SYNTHETIC] */
    /* JADX INFO: renamed from: c */
    public static final int m3787c(C2242l c2242l, C2253w c2253w, boolean z9) {
        int i10;
        int i11;
        int i12;
        C2224b0 c2224b0;
        int i13;
        c2253w.getClass();
        C2224b0 c2224b1 = c2242l.f5877b;
        if (c2224b1 == null) {
            return z9 ? -2 : -1;
        }
        byte[] bArr = c2224b1.f5849a;
        int i14 = c2224b1.f5850b;
        int i15 = c2224b1.f5851c;
        int[] iArr = c2253w.f5899c;
        C2224b0 c2224b2 = c2224b1;
        int i16 = -1;
        int i17 = 0;
        loop0: while (true) {
            int i18 = i17 + 1;
            int i19 = iArr[i17];
            int i20 = i17 + 2;
            int i21 = iArr[i18];
            if (i21 != -1) {
                i16 = i21;
            }
            if (c2224b2 == null) {
                break;
            }
            if (i19 >= 0) {
                int i22 = i14 + 1;
                int i23 = bArr[i14] & UByte.MAX_VALUE;
                int i24 = i20 + i19;
                while (i20 != i24) {
                    if (i23 == iArr[i20]) {
                        i10 = iArr[i20 + i19];
                        if (i22 == i15) {
                            c2224b2 = c2224b2.f5854f;
                            c2224b2.getClass();
                            int i25 = c2224b2.f5850b;
                            byte[] bArr2 = c2224b2.f5849a;
                            i11 = c2224b2.f5851c;
                            if (c2224b2 == c2224b1) {
                                i12 = i25;
                                bArr = bArr2;
                                c2224b2 = null;
                            } else {
                                i12 = i25;
                                bArr = bArr2;
                            }
                        } else {
                            i11 = i15;
                            i12 = i22;
                        }
                        if (i10 >= 0) {
                            return i10;
                        }
                        int i26 = i11;
                        i17 = -i10;
                        i14 = i12;
                        i15 = i26;
                    } else {
                        i20++;
                    }
                }
                return i16;
            }
            int i27 = (i19 * (-1)) + i20;
            while (true) {
                int i28 = i14 + 1;
                int i29 = i20 + 1;
                if ((bArr[i14] & UByte.MAX_VALUE) == iArr[i20]) {
                    boolean z10 = i29 == i27;
                    if (i28 == i15) {
                        c2224b2.getClass();
                        C2224b0 c2224b3 = c2224b2.f5854f;
                        c2224b3.getClass();
                        i12 = c2224b3.f5850b;
                        byte[] bArr3 = c2224b3.f5849a;
                        i13 = c2224b3.f5851c;
                        if (c2224b3 != c2224b1) {
                            c2224b0 = c2224b3;
                            bArr = bArr3;
                        } else {
                            if (!z10) {
                                break loop0;
                            }
                            bArr = bArr3;
                            c2224b0 = null;
                        }
                    } else {
                        c2224b0 = c2224b2;
                        i13 = i15;
                        i12 = i28;
                    }
                    if (z10) {
                        i10 = iArr[i29];
                        int i30 = i13;
                        c2224b2 = c2224b0;
                        i11 = i30;
                        break;
                    }
                    i14 = i12;
                    i15 = i13;
                    c2224b2 = c2224b0;
                    i20 = i29;
                }
                return i16;
            }
            if (i10 >= 0) {
                return i10;
            }
            int i210 = i11;
            i17 = -i10;
            i14 = i12;
            i15 = i210;
        }
        if (z9) {
            return -2;
        }
        return i16;
    }
}
