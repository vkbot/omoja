package m9;

import java.io.EOFException;
import kotlin.text.Charsets;
import l9.b0;
import l9.l;
import l9.w;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class a {
    public static final byte[] a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        byte[] bytes = "0123456789abcdef".getBytes(Charsets.UTF_8);
        bytes.getClass();
        a = bytes;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final boolean a(b0 b0Var, int i, byte[] bArr, int i2) {
        int i3 = b0Var.c;
        byte[] bArr2 = b0Var.a;
        for (int i4 = 1; i4 < i2; i4++) {
            if (i == i3) {
                b0Var = b0Var.f;
                b0Var.getClass();
                bArr2 = b0Var.a;
                i = b0Var.b;
                i3 = b0Var.c;
            }
            if (bArr2[i] != bArr[i4]) {
                return false;
            }
            i++;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final String b(l lVar, long j) throws EOFException {
        if (j > 0) {
            long j2 = j - 1;
            if (lVar.V(j2) == 13) {
                String strG0 = lVar.g0(j2, Charsets.UTF_8);
                lVar.skip(2L);
                return strG0;
            }
        }
        String strG1 = lVar.g0(j, Charsets.UTF_8);
        lVar.skip(1L);
        return strG1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:49:0x00a1 A[LOOP:0: B:8:0x001c->B:49:0x00a1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:55:0x00a0 A[SYNTHETIC] */
    public static final int c(l lVar, w wVar, boolean z) {
        int i;
        int i2;
        int i3;
        b0 b0Var;
        int i4;
        wVar.getClass();
        b0 b0Var2 = lVar.b;
        if (b0Var2 == null) {
            return z ? -2 : -1;
        }
        byte[] bArr = b0Var2.a;
        int i5 = b0Var2.b;
        int i6 = b0Var2.c;
        int[] iArr = wVar.c;
        b0 b0Var3 = b0Var2;
        int i7 = -1;
        int i8 = 0;
        loop0: while (true) {
            int i10 = i8 + 1;
            int i11 = iArr[i8];
            int i12 = i8 + 2;
            int i13 = iArr[i10];
            if (i13 != -1) {
                i7 = i13;
            }
            if (b0Var3 == null) {
                break;
            }
            if (i11 >= 0) {
                int i14 = i5 + 1;
                int i15 = bArr[i5] & 255;
                int i16 = i12 + i11;
                while (i12 != i16) {
                    if (i15 == iArr[i12]) {
                        i = iArr[i12 + i11];
                        if (i14 == i6) {
                            b0Var3 = b0Var3.f;
                            b0Var3.getClass();
                            int i17 = b0Var3.b;
                            byte[] bArr2 = b0Var3.a;
                            i2 = b0Var3.c;
                            if (b0Var3 == b0Var2) {
                                i3 = i17;
                                bArr = bArr2;
                                b0Var3 = null;
                            } else {
                                i3 = i17;
                                bArr = bArr2;
                            }
                        } else {
                            i2 = i6;
                            i3 = i14;
                        }
                        if (i >= 0) {
                            return i;
                        }
                        int i18 = i2;
                        i8 = -i;
                        i5 = i3;
                        i6 = i18;
                    } else {
                        i12++;
                    }
                }
                return i7;
            }
            int i19 = (i11 * (-1)) + i12;
            while (true) {
                int i20 = i5 + 1;
                int i21 = i12 + 1;
                if ((bArr[i5] & 255) == iArr[i12]) {
                    boolean z2 = i21 == i19;
                    if (i20 == i6) {
                        b0Var3.getClass();
                        b0 b0Var4 = b0Var3.f;
                        b0Var4.getClass();
                        i3 = b0Var4.b;
                        byte[] bArr3 = b0Var4.a;
                        i4 = b0Var4.c;
                        if (b0Var4 != b0Var2) {
                            b0Var = b0Var4;
                            bArr = bArr3;
                        } else {
                            if (!z2) {
                                break loop0;
                            }
                            bArr = bArr3;
                            b0Var = null;
                        }
                    } else {
                        b0Var = b0Var3;
                        i4 = i6;
                        i3 = i20;
                    }
                    if (z2) {
                        i = iArr[i21];
                        int i22 = i4;
                        b0Var3 = b0Var;
                        i2 = i22;
                        break;
                    }
                    i5 = i3;
                    i6 = i4;
                    b0Var3 = b0Var;
                    i12 = i21;
                }
                return i7;
            }
            if (i >= 0) {
                return i;
            }
            int i110 = i2;
            i8 = -i;
            i5 = i3;
            i6 = i110;
        }
        if (z) {
            return -2;
        }
        return i7;
    }
}
