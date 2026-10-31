package r7;

import java.util.Arrays;
import l9.l;
import l9.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l f5013a;
    public int c;
    public int e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public b[] f5014b = new b[8];
    public int d = 7;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(l lVar) {
        this.f5013a = lVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(b bVar) {
        int i9;
        int i10 = bVar.c;
        if (i10 > 4096) {
            Arrays.fill(this.f5014b, (Object) null);
            this.d = this.f5014b.length - 1;
            this.c = 0;
            this.e = 0;
            return;
        }
        int i11 = (this.e + i10) - 4096;
        if (i11 > 0) {
            int length = this.f5014b.length - 1;
            int i12 = 0;
            while (true) {
                i9 = this.d;
                if (length < i9 || i11 <= 0) {
                    break;
                }
                int i13 = this.f5014b[length].c;
                i11 -= i13;
                this.e -= i13;
                this.c--;
                i12++;
                length--;
            }
            b[] bVarArr = this.f5014b;
            int i14 = i9 + 1;
            System.arraycopy(bVarArr, i14, bVarArr, i14 + i12, this.c);
            this.d += i12;
        }
        int i15 = this.c + 1;
        b[] bVarArr2 = this.f5014b;
        if (i15 > bVarArr2.length) {
            b[] bVarArr3 = new b[bVarArr2.length * 2];
            System.arraycopy(bVarArr2, 0, bVarArr3, bVarArr2.length, bVarArr2.length);
            this.d = this.f5014b.length - 1;
            this.f5014b = bVarArr3;
        }
        int i16 = this.d;
        this.d = i16 - 1;
        this.f5014b[i16] = bVar;
        this.c++;
        this.e += i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(o oVar) {
        c(oVar.c(), 127, 0);
        this.f5013a.l0(oVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(int i9, int i10, int i11) {
        l lVar = this.f5013a;
        if (i9 < i10) {
            lVar.m0(i9 | i11);
            return;
        }
        lVar.m0(i11 | i10);
        int i12 = i9 - i10;
        while (i12 >= 128) {
            lVar.m0(128 | (i12 & 127));
            i12 >>>= 7;
        }
        lVar.m0(i12);
    }
}
