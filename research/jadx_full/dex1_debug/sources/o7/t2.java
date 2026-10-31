package o7;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Locale;
import java.util.logging.Logger;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t2 implements v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f4446a;
    public p7.u c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final c5.e f4449g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final t4 f4450h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f4451i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4452j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f4454l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4447b = -1;
    public n7.h d = n7.h.c;
    public final s2 e = new s2(this);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ByteBuffer f4448f = ByteBuffer.allocate(5);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4453k = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t2(b bVar, c5.e eVar, t4 t4Var) {
        this.f4446a = bVar;
        this.f4449g = eVar;
        this.f4450h = t4Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int g(t7.a aVar, OutputStream outputStream) throws IOException {
        y5.g gVar = aVar.f5415b;
        if (gVar != null) {
            int iA = gVar.a(null);
            y5.g gVar2 = aVar.f5415b;
            gVar2.getClass();
            int iA2 = gVar2.a(null);
            Logger logger = com.google.protobuf.n.f1534b;
            if (iA2 > 4096) {
                iA2 = 4096;
            }
            com.google.protobuf.m mVar = new com.google.protobuf.m(outputStream, iA2);
            gVar2.c(mVar);
            if (mVar.f1529f > 0) {
                mVar.G();
            }
            aVar.f5415b = null;
            return iA;
        }
        ByteArrayInputStream byteArrayInputStream = aVar.d;
        if (byteArrayInputStream == null) {
            return 0;
        }
        com.google.protobuf.p pVar = t7.c.f5418a;
        o4.b.i(outputStream, "outputStream cannot be null!");
        byte[] bArr = new byte[8192];
        long j9 = 0;
        while (true) {
            int i9 = byteArrayInputStream.read(bArr);
            if (i9 == -1) {
                int i10 = (int) j9;
                aVar.d = null;
                return i10;
            }
            outputStream.write(bArr, 0, i9);
            j9 += (long) i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.v0
    public final v0 a(n7.h hVar) {
        this.d = hVar;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.v0
    public final void b(t7.a aVar) {
        if (this.f4451i) {
            j1.i.l("Framer already closed");
            return;
        }
        this.f4452j++;
        int i9 = this.f4453k + 1;
        this.f4453k = i9;
        this.f4454l = 0L;
        t4 t4Var = this.f4450h;
        n7.e[] eVarArr = t4Var.f4457a;
        n7.e[] eVarArr2 = t4Var.f4457a;
        int i10 = 0;
        for (n7.e eVar : eVarArr) {
            eVar.t(i9);
        }
        boolean z8 = this.d != n7.h.c;
        try {
            int iAvailable = aVar.available();
            int iH = (iAvailable == 0 || !z8) ? h(aVar, iAvailable) : e(aVar);
            if (iAvailable != -1 && iH != iAvailable) {
                throw n7.f1.f3929l.h(ai.onnxruntime.a.g(iH, "Message length inaccurate ", " != ", iAvailable)).a();
            }
            long j9 = iH;
            for (n7.e eVar2 : eVarArr2) {
                eVar2.v(j9);
            }
            long j10 = this.f4454l;
            for (n7.e eVar3 : eVarArr2) {
                eVar3.w(j10);
            }
            int i11 = this.f4453k;
            long j11 = this.f4454l;
            n7.e[] eVarArr3 = t4Var.f4457a;
            int length = eVarArr3.length;
            while (i10 < length) {
                long j12 = j9;
                eVarArr3[i10].u(i11, j11, j12);
                i10++;
                j9 = j12;
            }
        } catch (IOException e) {
            throw n7.f1.f3929l.h("Failed to frame message").g(e).a();
        } catch (n7.h1 e6) {
            throw e6;
        } catch (RuntimeException e9) {
            throw n7.f1.f3929l.h("Failed to frame message").g(e9).a();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.v0
    public final void c(int i9) {
        o4.b.m(this.f4447b == -1, "max size already set");
        this.f4447b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.v0
    public final void close() {
        if (this.f4451i) {
            return;
        }
        this.f4451i = true;
        p7.u uVar = this.c;
        if (uVar != null && uVar.c == 0) {
            this.c = null;
        }
        p7.u uVar2 = this.c;
        this.c = null;
        this.f4446a.b(uVar2, true, true, this.f4452j);
        this.f4452j = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(r2 r2Var, boolean z8) {
        ArrayList arrayList = r2Var.f4418b;
        int size = arrayList.size();
        int i9 = 0;
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            i9 += ((p7.u) obj).c;
        }
        int i11 = this.f4447b;
        if (i11 >= 0 && i9 > i11) {
            n7.f1 f1Var = n7.f1.f3927j;
            Locale locale = Locale.US;
            throw f1Var.h("message too large " + i9 + " > " + i11).a();
        }
        ByteBuffer byteBuffer = this.f4448f;
        byteBuffer.clear();
        byteBuffer.put(z8 ? (byte) 1 : (byte) 0).putInt(i9);
        this.f4449g.getClass();
        p7.u uVarO = c5.e.o(5);
        uVarO.a(byteBuffer.array(), 0, byteBuffer.position());
        if (i9 == 0) {
            this.c = uVarO;
            return;
        }
        int i12 = this.f4452j - 1;
        b bVar = this.f4446a;
        bVar.b(uVarO, false, false, i12);
        this.f4452j = 1;
        for (int i13 = 0; i13 < arrayList.size() - 1; i13++) {
            bVar.b((p7.u) arrayList.get(i13), false, false, 0);
        }
        this.c = (p7.u) arrayList.get(arrayList.size() - 1);
        this.f4454l = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int e(t7.a aVar) throws IOException {
        OutputStream gZIPOutputStream;
        r2 r2Var = new r2(this);
        switch (this.d.f3938b) {
            case 0:
                gZIPOutputStream = r2Var;
                break;
            default:
                gZIPOutputStream = new GZIPOutputStream(r2Var);
                break;
        }
        try {
            int iG = g(aVar, gZIPOutputStream);
            gZIPOutputStream.close();
            int i9 = this.f4447b;
            if (i9 < 0 || iG <= i9) {
                d(r2Var, true);
                return iG;
            }
            n7.f1 f1Var = n7.f1.f3927j;
            Locale locale = Locale.US;
            throw f1Var.h("message too large " + iG + " > " + i9).a();
        } catch (Throwable th) {
            gZIPOutputStream.close();
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(byte[] bArr, int i9, int i10) {
        while (i10 > 0) {
            p7.u uVar = this.c;
            if (uVar != null && uVar.f4696b == 0) {
                this.c = null;
                this.f4446a.b(uVar, false, false, this.f4452j);
                this.f4452j = 0;
            }
            if (this.c == null) {
                this.f4449g.getClass();
                this.c = c5.e.o(i10);
            }
            int iMin = Math.min(i10, this.c.f4696b);
            this.c.a(bArr, i9, iMin);
            i9 += iMin;
            i10 -= iMin;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.v0
    public final void flush() {
        p7.u uVar = this.c;
        if (uVar == null || uVar.c <= 0) {
            return;
        }
        this.c = null;
        this.f4446a.b(uVar, false, true, this.f4452j);
        this.f4452j = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int h(t7.a aVar, int i9) throws IOException {
        if (i9 == -1) {
            r2 r2Var = new r2(this);
            int iG = g(aVar, r2Var);
            d(r2Var, false);
            return iG;
        }
        this.f4454l = i9;
        int i10 = this.f4447b;
        if (i10 >= 0 && i9 > i10) {
            n7.f1 f1Var = n7.f1.f3927j;
            Locale locale = Locale.US;
            throw f1Var.h("message too large " + i9 + " > " + i10).a();
        }
        ByteBuffer byteBuffer = this.f4448f;
        byteBuffer.clear();
        byteBuffer.put((byte) 0).putInt(i9);
        if (this.c == null) {
            int iPosition = byteBuffer.position() + i9;
            this.f4449g.getClass();
            this.c = c5.e.o(iPosition);
        }
        f(byteBuffer.array(), 0, byteBuffer.position());
        return g(aVar, this.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.v0
    public final boolean isClosed() {
        return this.f4451i;
    }
}
