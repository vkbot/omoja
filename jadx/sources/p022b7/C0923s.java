package p022b7;

import kotlin.UByte;
import p099j1.C1929i;

/* JADX INFO: renamed from: b7.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0923s {

    /* JADX INFO: renamed from: a */
    public int f773a;

    /* JADX INFO: renamed from: b */
    public int f774b;

    /* JADX INFO: renamed from: c */
    public final byte[] f775c;

    public /* synthetic */ C0923s(byte[] bArr, int i10, int i11) {
        this.f775c = bArr;
        this.f773a = i10;
        this.f774b = i11;
    }

    /* JADX INFO: renamed from: a */
    public int m1060a() {
        return ((this.f775c.length - this.f773a) * 8) - this.f774b;
    }

    /* JADX INFO: renamed from: b */
    public int m1061b(int i10) {
        if (i10 <= 0 || i10 > 32 || i10 > m1060a()) {
            C1929i.m3029k(String.valueOf(i10));
            return 0;
        }
        int i11 = this.f774b;
        int i12 = 0;
        byte[] bArr = this.f775c;
        if (i11 > 0) {
            int i13 = 8 - i11;
            int iMin = Math.min(i10, i13);
            int i14 = i13 - iMin;
            int i15 = this.f773a;
            int i16 = (((255 >> (8 - iMin)) << i14) & bArr[i15]) >> i14;
            i10 -= iMin;
            int i17 = this.f774b + iMin;
            this.f774b = i17;
            if (i17 == 8) {
                this.f774b = 0;
                this.f773a = i15 + 1;
            }
            i12 = i16;
        }
        if (i10 > 0) {
            while (i10 >= 8) {
                int i18 = i12 << 8;
                int i19 = this.f773a;
                int i20 = i18 | (bArr[i19] & UByte.MAX_VALUE);
                this.f773a = i19 + 1;
                i10 -= 8;
                i12 = i20;
            }
            if (i10 > 0) {
                int i21 = 8 - i10;
                int i22 = ((bArr[this.f773a] & ((255 >> i21) << i21)) >> i21) | (i12 << i10);
                this.f774b += i10;
                return i22;
            }
        }
        return i12;
    }

    public C0923s(byte[] bArr) {
        this.f775c = bArr;
    }
}
