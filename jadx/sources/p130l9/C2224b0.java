package p130l9;

import kotlin.collections.ArraysKt;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import p099j1.C1929i;

/* JADX INFO: renamed from: l9.b0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2224b0 {

    /* JADX INFO: renamed from: a */
    public final byte[] f5849a;

    /* JADX INFO: renamed from: b */
    public int f5850b;

    /* JADX INFO: renamed from: c */
    public int f5851c;

    /* JADX INFO: renamed from: d */
    public boolean f5852d;

    /* JADX INFO: renamed from: e */
    public final boolean f5853e;

    /* JADX INFO: renamed from: f */
    public C2224b0 f5854f;

    /* JADX INFO: renamed from: g */
    public C2224b0 f5855g;

    public C2224b0(byte[] bArr, int i10, int i11, boolean z9, boolean z10) {
        bArr.getClass();
        this.f5849a = bArr;
        this.f5850b = i10;
        this.f5851c = i11;
        this.f5852d = z9;
        this.f5853e = z10;
    }

    /* JADX INFO: renamed from: a */
    public final C2224b0 m3576a() {
        C2224b0 c2224b0 = this.f5854f;
        if (c2224b0 == this) {
            c2224b0 = null;
        }
        C2224b0 c2224b1 = this.f5855g;
        c2224b1.getClass();
        c2224b1.f5854f = this.f5854f;
        C2224b0 c2224b2 = this.f5854f;
        c2224b2.getClass();
        c2224b2.f5855g = this.f5855g;
        this.f5854f = null;
        this.f5855g = null;
        return c2224b0;
    }

    /* JADX INFO: renamed from: b */
    public final void m3577b(C2224b0 c2224b0) {
        c2224b0.getClass();
        c2224b0.f5855g = this;
        c2224b0.f5854f = this.f5854f;
        C2224b0 c2224b1 = this.f5854f;
        c2224b1.getClass();
        c2224b1.f5855g = c2224b0;
        this.f5854f = c2224b0;
    }

    /* JADX INFO: renamed from: c */
    public final C2224b0 m3578c() {
        this.f5852d = true;
        return new C2224b0(this.f5849a, this.f5850b, this.f5851c, true, false);
    }

    /* JADX INFO: renamed from: d */
    public final void m3579d(C2224b0 c2224b0, int i10) {
        c2224b0.getClass();
        byte[] bArr = c2224b0.f5849a;
        if (!c2224b0.f5853e) {
            C1929i.m3030l("only owner can write");
            return;
        }
        int i11 = c2224b0.f5851c;
        int i12 = i11 + i10;
        if (i12 > 8192) {
            if (c2224b0.f5852d) {
                C2237i.m3594a();
                return;
            }
            int i13 = c2224b0.f5850b;
            if (i12 - i13 > 8192) {
                C2237i.m3594a();
                return;
            } else {
                ArraysKt___ArraysJvmKt.copyInto$default(bArr, bArr, 0, i13, i11, 2, (Object) null);
                c2224b0.f5851c -= c2224b0.f5850b;
                c2224b0.f5850b = 0;
            }
        }
        int i14 = c2224b0.f5851c;
        int i15 = this.f5850b;
        ArraysKt.copyInto(this.f5849a, bArr, i14, i15, i15 + i10);
        c2224b0.f5851c += i10;
        this.f5850b += i10;
    }

    public C2224b0() {
        this.f5849a = new byte[8192];
        this.f5853e = true;
        this.f5852d = false;
    }
}
