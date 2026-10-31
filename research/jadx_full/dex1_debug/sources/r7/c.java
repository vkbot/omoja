package r7;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import l9.a0;
import l9.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a0 f5009b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f5008a = new ArrayList();
    public b[] e = new b[8];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5010f = 7;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5011g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5012h = 0;
    public int c = 4096;
    public int d = 4096;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(f fVar) {
        this.f5009b = new a0(fVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:5:0x0008 */
    public final int a(int i9) {
        int i10;
        int i11 = 0;
        if (i9 > 0) {
            int length = this.e.length;
            while (true) {
                length--;
                i10 = this.f5010f;
                if (length < i10 || i9 <= 0) {
                    break;
                }
                int i12 = this.e[length].c;
                i9 -= i12;
                this.f5012h -= i12;
                this.f5011g--;
                i11++;
            }
            b[] bVarArr = this.e;
            System.arraycopy(bVarArr, i10 + 1, bVarArr, i10 + 1 + i11, this.f5011g);
            this.f5010f += i11;
        }
        return i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final o b(int i9) throws IOException {
        if (i9 >= 0) {
            b[] bVarArr = e.f5016b;
            if (i9 <= bVarArr.length - 1) {
                return bVarArr[i9].f5006a;
            }
        }
        int length = this.f5010f + 1 + (i9 - e.f5016b.length);
        if (length >= 0) {
            b[] bVarArr2 = this.e;
            if (length < bVarArr2.length) {
                return bVarArr2[length].f5006a;
            }
        }
        n0.b.y(i9 + 1, "Header index too large ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(b bVar) {
        this.f5008a.add(bVar);
        int i9 = bVar.c;
        int i10 = this.d;
        if (i9 > i10) {
            Arrays.fill(this.e, (Object) null);
            this.f5010f = this.e.length - 1;
            this.f5011g = 0;
            this.f5012h = 0;
            return;
        }
        a((this.f5012h + i9) - i10);
        int i11 = this.f5011g + 1;
        b[] bVarArr = this.e;
        if (i11 > bVarArr.length) {
            b[] bVarArr2 = new b[bVarArr.length * 2];
            System.arraycopy(bVarArr, 0, bVarArr2, bVarArr.length, bVarArr.length);
            this.f5010f = this.e.length - 1;
            this.e = bVarArr2;
        }
        int i12 = this.f5010f;
        this.f5010f = i12 - 1;
        this.e[i12] = bVar;
        this.f5011g++;
        this.f5012h += i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final o d() {
        a0 a0Var = this.f5009b;
        byte b9 = a0Var.readByte();
        int i9 = b9 & UByte.MAX_VALUE;
        boolean z8 = (b9 & ByteCompanionObject.MIN_VALUE) == 128;
        int iE = e(i9, 127);
        if (!z8) {
            return a0Var.f(iE);
        }
        k kVar = k.d;
        long j9 = iE;
        a0Var.Y(j9);
        byte[] bArrF0 = a0Var.c.f0(j9);
        kVar.getClass();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        p0.c cVar = kVar.f5028a;
        p0.c cVar2 = cVar;
        int i10 = 0;
        int i11 = 0;
        for (byte b10 : bArrF0) {
            i10 = (i10 << 8) | (b10 & UByte.MAX_VALUE);
            i11 += 8;
            while (i11 >= 8) {
                cVar2 = ((p0.c[]) cVar2.d)[(i10 >>> (i11 - 8)) & 255];
                if (((p0.c[]) cVar2.d) == null) {
                    byteArrayOutputStream.write(cVar2.f4552b);
                    i11 -= cVar2.c;
                    cVar2 = cVar;
                } else {
                    i11 -= 8;
                }
            }
        }
        while (i11 > 0) {
            p0.c cVar3 = ((p0.c[]) cVar2.d)[(i10 << (8 - i11)) & 255];
            p0.c[] cVarArr = (p0.c[]) cVar3.d;
            int i12 = cVar3.c;
            if (cVarArr != null || i12 > i11) {
                break;
            }
            byteArrayOutputStream.write(cVar3.f4552b);
            i11 -= i12;
            cVar2 = cVar;
        }
        return o.g(byteArrayOutputStream.toByteArray());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int e(int i9, int i10) {
        int i11 = i9 & i10;
        if (i11 < i10) {
            return i11;
        }
        int i12 = 0;
        while (true) {
            byte b9 = this.f5009b.readByte();
            int i13 = b9 & UByte.MAX_VALUE;
            if ((b9 & ByteCompanionObject.MIN_VALUE) == 0) {
                return i10 + (i13 << i12);
            }
            i10 += (b9 & ByteCompanionObject.MAX_VALUE) << i12;
            i12 += 7;
        }
    }
}
