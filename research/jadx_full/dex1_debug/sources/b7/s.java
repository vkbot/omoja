package b7;

import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f386a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f387b;
    public final byte[] c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ s(byte[] bArr, int i9, int i10) {
        this.c = bArr;
        this.f386a = i9;
        this.f387b = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int a() {
        return ((this.c.length - this.f386a) * 8) - this.f387b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int b(int i9) {
        if (i9 <= 0 || i9 > 32 || i9 > a()) {
            j1.i.k(String.valueOf(i9));
            return 0;
        }
        int i10 = this.f387b;
        int i11 = 0;
        byte[] bArr = this.c;
        if (i10 > 0) {
            int i12 = 8 - i10;
            int iMin = Math.min(i9, i12);
            int i13 = i12 - iMin;
            int i14 = this.f386a;
            int i15 = (((255 >> (8 - iMin)) << i13) & bArr[i14]) >> i13;
            i9 -= iMin;
            int i16 = this.f387b + iMin;
            this.f387b = i16;
            if (i16 == 8) {
                this.f387b = 0;
                this.f386a = i14 + 1;
            }
            i11 = i15;
        }
        if (i9 > 0) {
            while (i9 >= 8) {
                int i17 = i11 << 8;
                int i18 = this.f386a;
                int i19 = i17 | (bArr[i18] & UByte.MAX_VALUE);
                this.f386a = i18 + 1;
                i9 -= 8;
                i11 = i19;
            }
            if (i9 > 0) {
                int i20 = 8 - i9;
                int i21 = ((bArr[this.f386a] & ((255 >> i20) << i20)) >> i20) | (i11 << i9);
                this.f387b += i9;
                return i21;
            }
        }
        return i11;
    }

    public s(byte[] bArr) {
        this.c = bArr;
    }
}
