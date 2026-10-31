package p063f6;

import java.util.Arrays;
import okhttp3.internal.p160ws.WebSocketProtocol;
import org.apache.commons.p161io.FilenameUtils;
import p099j1.C1929i;
import p130l9.C2237i;

/* JADX INFO: renamed from: f6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1577a implements Cloneable {

    /* JADX INFO: renamed from: b */
    public int[] f3898b;

    /* JADX INFO: renamed from: c */
    public int f3899c;

    public C1577a(int i10) {
        this.f3899c = i10;
        this.f3898b = new int[(i10 + 31) / 32];
    }

    /* JADX INFO: renamed from: a */
    public final void m2647a(boolean z9) {
        m2649c(this.f3899c + 1);
        if (z9) {
            int[] iArr = this.f3898b;
            int i10 = this.f3899c;
            int i11 = i10 / 32;
            iArr[i11] = (1 << (i10 & 31)) | iArr[i11];
        }
        this.f3899c++;
    }

    /* JADX INFO: renamed from: b */
    public final void m2648b(int i10, int i11) {
        if (i11 < 0 || i11 > 32) {
            C1929i.m3029k("Num bits must be between 0 and 32");
            return;
        }
        m2649c(this.f3899c + i11);
        while (i11 > 0) {
            boolean z9 = true;
            if (((i10 >> (i11 - 1)) & 1) != 1) {
                z9 = false;
            }
            m2647a(z9);
            i11--;
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m2649c(int i10) {
        int[] iArr = this.f3898b;
        if (i10 > (iArr.length << 5)) {
            int[] iArr2 = new int[(i10 + 31) / 32];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f3898b = iArr2;
        }
    }

    public final Object clone() {
        int[] iArr = (int[]) this.f3898b.clone();
        int i10 = this.f3899c;
        C1577a c1577a = new C1577a();
        c1577a.f3898b = iArr;
        c1577a.f3899c = i10;
        return c1577a;
    }

    /* JADX INFO: renamed from: d */
    public final boolean m2650d(int i10) {
        return ((1 << (i10 & 31)) & this.f3898b[i10 / 32]) != 0;
    }

    /* JADX INFO: renamed from: e */
    public final int m2651e(int i10) {
        int i11 = this.f3899c;
        if (i10 >= i11) {
            return i11;
        }
        int i12 = i10 / 32;
        int i13 = (-(1 << (i10 & 31))) & this.f3898b[i12];
        while (i13 == 0) {
            i12++;
            int[] iArr = this.f3898b;
            if (i12 == iArr.length) {
                return this.f3899c;
            }
            i13 = iArr[i12];
        }
        return Math.min(Integer.numberOfTrailingZeros(i13) + (i12 << 5), this.f3899c);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1577a)) {
            return false;
        }
        C1577a c1577a = (C1577a) obj;
        return this.f3899c == c1577a.f3899c && Arrays.equals(this.f3898b, c1577a.f3898b);
    }

    /* JADX INFO: renamed from: f */
    public final int m2652f(int i10) {
        int i11 = this.f3899c;
        if (i10 >= i11) {
            return i11;
        }
        int i12 = i10 / 32;
        int i13 = (-(1 << (i10 & 31))) & (~this.f3898b[i12]);
        while (i13 == 0) {
            i12++;
            int[] iArr = this.f3898b;
            if (i12 == iArr.length) {
                return this.f3899c;
            }
            i13 = ~iArr[i12];
        }
        return Math.min(Integer.numberOfTrailingZeros(i13) + (i12 << 5), this.f3899c);
    }

    /* JADX INFO: renamed from: g */
    public final int m2653g() {
        return (this.f3899c + 7) / 8;
    }

    /* JADX INFO: renamed from: h */
    public final boolean m2654h(int i10, int i11) {
        if (i11 < i10 || i10 < 0 || i11 > this.f3899c) {
            C2237i.m3594a();
            return false;
        }
        if (i11 != i10) {
            int i12 = i11 - 1;
            int i13 = i10 / 32;
            int i14 = i12 / 32;
            int i15 = i13;
            while (i15 <= i14) {
                if ((((2 << (i15 >= i14 ? 31 & i12 : 31)) - (1 << (i15 > i13 ? 0 : i10 & 31))) & this.f3898b[i15]) != 0) {
                    return false;
                }
                i15++;
            }
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f3898b) + (this.f3899c * 31);
    }

    /* JADX INFO: renamed from: i */
    public final void m2655i() {
        int[] iArr = new int[this.f3898b.length];
        int i10 = (this.f3899c - 1) / 32;
        int i11 = i10 + 1;
        for (int i12 = 0; i12 < i11; i12++) {
            long j10 = this.f3898b[i12];
            long j11 = ((j10 & 1431655765) << 1) | ((j10 >> 1) & 1431655765);
            long j12 = ((j11 & 858993459) << 2) | ((j11 >> 2) & 858993459);
            long j13 = ((j12 & 252645135) << 4) | ((j12 >> 4) & 252645135);
            long j14 = ((j13 & 16711935) << 8) | ((j13 >> 8) & 16711935);
            iArr[i10 - i12] = (int) (((j14 & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((j14 >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX));
        }
        int i13 = this.f3899c;
        int i14 = i11 << 5;
        if (i13 != i14) {
            int i15 = i14 - i13;
            int i16 = iArr[0] >>> i15;
            for (int i17 = 1; i17 < i11; i17++) {
                int i18 = iArr[i17];
                iArr[i17 - 1] = i16 | (i18 << (32 - i15));
                i16 = i18 >>> i15;
            }
            iArr[i10] = i16;
        }
        this.f3898b = iArr;
    }

    /* JADX INFO: renamed from: j */
    public final void m2656j(int i10) {
        int[] iArr = this.f3898b;
        int i11 = i10 / 32;
        iArr[i11] = (1 << (i10 & 31)) | iArr[i11];
    }

    public final String toString() {
        int i10 = this.f3899c;
        StringBuilder sb = new StringBuilder((i10 / 8) + i10 + 1);
        for (int i11 = 0; i11 < this.f3899c; i11++) {
            if ((i11 & 7) == 0) {
                sb.append(' ');
            }
            sb.append(m2650d(i11) ? 'X' : FilenameUtils.EXTENSION_SEPARATOR);
        }
        return sb.toString();
    }

    public C1577a() {
        this.f3899c = 0;
        this.f3898b = new int[1];
    }
}
