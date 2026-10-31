package p130l9;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.collections.ArraysKt;
import p140m9.AbstractC2432c;

/* JADX INFO: renamed from: l9.d0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2228d0 extends C2245o {

    /* JADX INFO: renamed from: f */
    public final transient byte[][] f5859f;

    /* JADX INFO: renamed from: g */
    public final transient int[] f5860g;

    public C2228d0(byte[][] bArr, int[] iArr) {
        super(C2245o.f5879e.f5880b);
        this.f5859f = bArr;
        this.f5860g = iArr;
    }

    @Override // p130l9.C2245o
    /* JADX INFO: renamed from: a */
    public final String mo3583a() {
        return new C2245o(mo3592k()).mo3583a();
    }

    @Override // p130l9.C2245o
    /* JADX INFO: renamed from: b */
    public final C2245o mo3584b(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        byte[][] bArr = this.f5859f;
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int[] iArr = this.f5860g;
            int i12 = iArr[length + i10];
            int i13 = iArr[i10];
            messageDigest.update(bArr[i10], i12, i13 - i11);
            i10++;
            i11 = i13;
        }
        byte[] bArrDigest = messageDigest.digest();
        bArrDigest.getClass();
        return new C2245o(bArrDigest);
    }

    @Override // p130l9.C2245o
    /* JADX INFO: renamed from: c */
    public final int mo3585c() {
        return this.f5860g[this.f5859f.length - 1];
    }

    @Override // p130l9.C2245o
    /* JADX INFO: renamed from: d */
    public final String mo3586d() {
        return new C2245o(mo3592k()).mo3586d();
    }

    @Override // p130l9.C2245o
    /* JADX INFO: renamed from: e */
    public final byte[] mo3587e() {
        return mo3592k();
    }

    @Override // p130l9.C2245o
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2245o)) {
            return false;
        }
        C2245o c2245o = (C2245o) obj;
        return c2245o.mo3585c() == mo3585c() && mo3590i(c2245o, mo3585c());
    }

    @Override // p130l9.C2245o
    /* JADX INFO: renamed from: f */
    public final byte mo3588f(int i10) {
        byte[][] bArr = this.f5859f;
        int length = bArr.length - 1;
        int[] iArr = this.f5860g;
        AbstractC2223b.m3571d(iArr[length], i10, 1L);
        int iM3789a = AbstractC2432c.m3789a(this, i10);
        return bArr[iM3789a][(i10 - (iM3789a == 0 ? 0 : iArr[iM3789a - 1])) + iArr[bArr.length + iM3789a]];
    }

    @Override // p130l9.C2245o
    /* JADX INFO: renamed from: h */
    public final boolean mo3589h(int i10, int i11, int i12, byte[] bArr) {
        bArr.getClass();
        if (i10 >= 0 && i10 <= mo3585c() - i12 && i11 >= 0 && i11 <= bArr.length - i12) {
            int i13 = i12 + i10;
            int iM3789a = AbstractC2432c.m3789a(this, i10);
            while (i10 < i13) {
                int[] iArr = this.f5860g;
                int i14 = iM3789a == 0 ? 0 : iArr[iM3789a - 1];
                int i15 = iArr[iM3789a] - i14;
                byte[][] bArr2 = this.f5859f;
                int i16 = iArr[bArr2.length + iM3789a];
                int iMin = Math.min(i13, i15 + i14) - i10;
                int i17 = (i10 - i14) + i16;
                byte[] bArr3 = bArr2[iM3789a];
                bArr3.getClass();
                for (int i18 = 0; i18 < iMin; i18++) {
                    if (bArr3[i18 + i17] == bArr[i18 + i11]) {
                    }
                }
                i11 += iMin;
                i10 += iMin;
                iM3789a++;
            }
            return true;
        }
        return false;
    }

    @Override // p130l9.C2245o
    public final int hashCode() {
        int i10 = this.f5881c;
        if (i10 != 0) {
            return i10;
        }
        byte[][] bArr = this.f5859f;
        int length = bArr.length;
        int i11 = 0;
        int i12 = 1;
        int i13 = 0;
        while (i11 < length) {
            int[] iArr = this.f5860g;
            int i14 = iArr[length + i11];
            int i15 = iArr[i11];
            byte[] bArr2 = bArr[i11];
            int i16 = (i15 - i13) + i14;
            while (i14 < i16) {
                i12 = (i12 * 31) + bArr2[i14];
                i14++;
            }
            i11++;
            i13 = i15;
        }
        this.f5881c = i12;
        return i12;
    }

    @Override // p130l9.C2245o
    /* JADX INFO: renamed from: i */
    public final boolean mo3590i(C2245o c2245o, int i10) {
        c2245o.getClass();
        if (mo3585c() - i10 >= 0) {
            int iM3789a = AbstractC2432c.m3789a(this, 0);
            int i11 = 0;
            int i12 = 0;
            while (i11 < i10) {
                int[] iArr = this.f5860g;
                int i13 = iM3789a == 0 ? 0 : iArr[iM3789a - 1];
                int i14 = iArr[iM3789a] - i13;
                byte[][] bArr = this.f5859f;
                int i15 = iArr[bArr.length + iM3789a];
                int iMin = Math.min(i10, i14 + i13) - i11;
                if (c2245o.mo3589h(i12, (i11 - i13) + i15, iMin, bArr[iM3789a])) {
                    i12 += iMin;
                    i11 += iMin;
                    iM3789a++;
                }
            }
            return true;
        }
        return false;
    }

    @Override // p130l9.C2245o
    /* JADX INFO: renamed from: j */
    public final C2245o mo3591j() {
        return new C2245o(mo3592k()).mo3591j();
    }

    @Override // p130l9.C2245o
    /* JADX INFO: renamed from: k */
    public final byte[] mo3592k() {
        byte[] bArr = new byte[mo3585c()];
        byte[][] bArr2 = this.f5859f;
        int length = bArr2.length;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < length) {
            int[] iArr = this.f5860g;
            int i13 = iArr[length + i10];
            int i14 = iArr[i10];
            int i15 = i14 - i11;
            ArraysKt.copyInto(bArr2[i10], bArr, i12, i13, i13 + i15);
            i12 += i15;
            i10++;
            i11 = i14;
        }
        return bArr;
    }

    @Override // p130l9.C2245o
    /* JADX INFO: renamed from: m */
    public final void mo3593m(int i10, C2242l c2242l) {
        int iM3789a = AbstractC2432c.m3789a(this, 0);
        int i11 = 0;
        while (i11 < i10) {
            int[] iArr = this.f5860g;
            int i12 = iM3789a == 0 ? 0 : iArr[iM3789a - 1];
            int i13 = iArr[iM3789a] - i12;
            byte[][] bArr = this.f5859f;
            int i14 = iArr[bArr.length + iM3789a];
            int iMin = Math.min(i10, i13 + i12) - i11;
            int i15 = (i11 - i12) + i14;
            C2224b0 c2224b0 = new C2224b0(bArr[iM3789a], i15, i15 + iMin, true, false);
            C2224b0 c2224b1 = c2242l.f5877b;
            if (c2224b1 == null) {
                c2224b0.f5855g = c2224b0;
                c2224b0.f5854f = c2224b0;
                c2242l.f5877b = c2224b0;
            } else {
                C2224b0 c2224b2 = c2224b1.f5855g;
                c2224b2.getClass();
                c2224b2.m3577b(c2224b0);
            }
            i11 += iMin;
            iM3789a++;
        }
        c2242l.f5878c += (long) i10;
    }

    @Override // p130l9.C2245o
    public final String toString() {
        return new C2245o(mo3592k()).toString();
    }
}
