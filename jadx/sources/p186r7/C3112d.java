package p186r7;

import java.util.Arrays;
import p130l9.C2242l;
import p130l9.C2245o;

/* JADX INFO: renamed from: r7.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3112d {

    /* JADX INFO: renamed from: a */
    public final C2242l f8903a;

    /* JADX INFO: renamed from: c */
    public int f8905c;

    /* JADX INFO: renamed from: e */
    public int f8907e;

    /* JADX INFO: renamed from: b */
    public C3110b[] f8904b = new C3110b[8];

    /* JADX INFO: renamed from: d */
    public int f8906d = 7;

    public C3112d(C2242l c2242l) {
        this.f8903a = c2242l;
    }

    /* JADX INFO: renamed from: a */
    public final void m4953a(C3110b c3110b) {
        int i10;
        int i11 = c3110b.f8894c;
        if (i11 > 4096) {
            Arrays.fill(this.f8904b, (Object) null);
            this.f8906d = this.f8904b.length - 1;
            this.f8905c = 0;
            this.f8907e = 0;
            return;
        }
        int i12 = (this.f8907e + i11) - 4096;
        if (i12 > 0) {
            int length = this.f8904b.length - 1;
            int i13 = 0;
            while (true) {
                i10 = this.f8906d;
                if (length < i10 || i12 <= 0) {
                    break;
                }
                int i14 = this.f8904b[length].f8894c;
                i12 -= i14;
                this.f8907e -= i14;
                this.f8905c--;
                i13++;
                length--;
            }
            C3110b[] c3110bArr = this.f8904b;
            int i15 = i10 + 1;
            System.arraycopy(c3110bArr, i15, c3110bArr, i15 + i13, this.f8905c);
            this.f8906d += i13;
        }
        int i16 = this.f8905c + 1;
        C3110b[] c3110bArr2 = this.f8904b;
        if (i16 > c3110bArr2.length) {
            C3110b[] c3110bArr3 = new C3110b[c3110bArr2.length * 2];
            System.arraycopy(c3110bArr2, 0, c3110bArr3, c3110bArr2.length, c3110bArr2.length);
            this.f8906d = this.f8904b.length - 1;
            this.f8904b = c3110bArr3;
        }
        int i17 = this.f8906d;
        this.f8906d = i17 - 1;
        this.f8904b[i17] = c3110b;
        this.f8905c++;
        this.f8907e += i11;
    }

    /* JADX INFO: renamed from: b */
    public final void m4954b(C2245o c2245o) {
        m4955c(c2245o.mo3585c(), 127, 0);
        this.f8903a.m3620l0(c2245o);
    }

    /* JADX INFO: renamed from: c */
    public final void m4955c(int i10, int i11, int i12) {
        C2242l c2242l = this.f8903a;
        if (i10 < i11) {
            c2242l.m3621m0(i10 | i12);
            return;
        }
        c2242l.m3621m0(i12 | i11);
        int i13 = i10 - i11;
        while (i13 >= 128) {
            c2242l.m3621m0(128 | (i13 & 127));
            i13 >>>= 7;
        }
        c2242l.m3621m0(i13);
    }
}
