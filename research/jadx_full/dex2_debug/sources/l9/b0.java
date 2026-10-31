package l9;

import kotlin.collections.ArraysKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class b0 {
    public final byte[] a;
    public int b;
    public int c;
    public boolean d;
    public final boolean e;
    public b0 f;
    public b0 g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b0(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        bArr.getClass();
        this.a = bArr;
        this.b = i;
        this.c = i2;
        this.d = z;
        this.e = z2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final b0 a() {
        b0 b0Var = this.f;
        if (b0Var == this) {
            b0Var = null;
        }
        b0 b0Var2 = this.g;
        b0Var2.getClass();
        b0Var2.f = this.f;
        b0 b0Var3 = this.f;
        b0Var3.getClass();
        b0Var3.g = this.g;
        this.f = null;
        this.g = null;
        return b0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(b0 b0Var) {
        b0Var.getClass();
        b0Var.g = this;
        b0Var.f = this.f;
        b0 b0Var2 = this.f;
        b0Var2.getClass();
        b0Var2.g = b0Var;
        this.f = b0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final b0 c() {
        this.d = true;
        return new b0(this.a, this.b, this.c, true, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(b0 b0Var, int i) {
        b0Var.getClass();
        byte[] bArr = b0Var.a;
        if (!b0Var.e) {
            j1.i.l("only owner can write");
            return;
        }
        int i2 = b0Var.c;
        int i3 = i2 + i;
        if (i3 > 8192) {
            if (b0Var.d) {
                i.a();
                return;
            }
            int i4 = b0Var.b;
            if (i3 - i4 > 8192) {
                i.a();
                return;
            } else {
                ArraysKt.o(bArr, bArr, i4, i2);
                b0Var.c -= b0Var.b;
                b0Var.b = 0;
            }
        }
        int i5 = b0Var.c;
        int i6 = this.b;
        ArraysKt.copyInto(this.a, bArr, i5, i6, i6 + i);
        b0Var.c += i;
        this.b += i;
    }

    public b0() {
        this.a = new byte[8192];
        this.e = true;
        this.d = false;
    }
}
