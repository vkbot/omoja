package p7;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
import m0.r0;
import n7.b0;
import n7.c0;
import n7.f1;
import n7.q0;
import n7.t0;
import n7.v0;
import o7.b1;
import o7.j3;
import o7.k3;
import o7.p1;
import o7.q2;
import o7.t4;
import o7.v4;
import o7.y0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j extends b1 {
    public boolean A;
    public boolean B;
    public int C;
    public int D;
    public final d E;
    public final b7.p F;
    public final n G;
    public boolean H;
    public final w7.c I;
    public v J;
    public int K;
    public final /* synthetic */ k L;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f4645v;
    public final Object w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ArrayList f4646x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final l9.l f4647y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f4648z;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(k kVar, int i9, t4 t4Var, Object obj, d dVar, b7.p pVar, n nVar, int i10) {
        super(i9, t4Var, kVar.f4133b);
        this.L = kVar;
        this.f4157s = i4.b.f2658b;
        this.f4647y = new l9.l();
        this.f4648z = false;
        this.A = false;
        this.B = false;
        this.H = true;
        this.K = -1;
        o4.b.i(obj, "lock");
        this.w = obj;
        this.E = dVar;
        this.F = pVar;
        this.G = nVar;
        this.C = i10;
        this.D = i10;
        this.f4645v = i10;
        w7.b.f5947a.getClass();
        this.I = w7.a.f5945a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void j(j jVar, v0 v0Var, String str) {
        k kVar = jVar.L;
        String str2 = kVar.f4653l;
        String str3 = kVar.f4651j;
        boolean z8 = kVar.f4657p;
        n nVar = jVar.G;
        boolean z9 = nVar.B == null;
        r7.b bVar = e.f4619a;
        o4.b.i(v0Var, "headers");
        o4.b.i(str2, "authority");
        v0Var.a(y0.f4510i);
        v0Var.a(y0.f4511j);
        q0 q0Var = y0.f4512k;
        v0Var.a(q0Var);
        ArrayList arrayList = new ArrayList(v0Var.f3978b + 7);
        if (z9) {
            arrayList.add(e.f4620b);
        } else {
            arrayList.add(e.f4619a);
        }
        if (z8) {
            arrayList.add(e.d);
        } else {
            arrayList.add(e.c);
        }
        arrayList.add(new r7.b(r7.b.f5005h, str2));
        arrayList.add(new r7.b(r7.b.f5003f, str));
        arrayList.add(new r7.b(q0Var.f3970a, str3));
        arrayList.add(e.e);
        arrayList.add(e.f4621f);
        Logger logger = v4.f4485a;
        Charset charset = b0.f3888a;
        int i9 = v0Var.f3978b * 2;
        byte[][] bArr = new byte[i9][];
        Object[] objArr = v0Var.f3977a;
        if (objArr instanceof byte[][]) {
            System.arraycopy(objArr, 0, bArr, 0, i9);
        } else {
            for (int i10 = 0; i10 < v0Var.f3978b; i10++) {
                int i11 = i10 * 2;
                Object[] objArr2 = v0Var.f3977a;
                bArr[i11] = (byte[]) objArr2[i11];
                int i12 = i11 + 1;
                Object obj = objArr2[i12];
                if (!(obj instanceof byte[])) {
                    com.google.protobuf.q.q(obj);
                    throw null;
                }
                bArr[i12] = (byte[]) obj;
            }
        }
        int i13 = 0;
        for (int i14 = 0; i14 < i9; i14 += 2) {
            byte[] bArr2 = bArr[i14];
            byte[] bArr3 = bArr[i14 + 1];
            if (v4.a(bArr2, v4.f4486b)) {
                bArr[i13] = bArr2;
                bArr[i13 + 1] = b0.f3889b.c(bArr3).getBytes(i4.b.f2657a);
            } else {
                int length = bArr3.length;
                int i15 = 0;
                while (true) {
                    if (i15 >= length) {
                        bArr[i13] = bArr2;
                        bArr[i13 + 1] = bArr3;
                    } else {
                        byte b9 = bArr3[i15];
                        if (b9 < 32 || b9 > 126) {
                            String str4 = new String(bArr2, i4.b.f2657a);
                            Logger logger2 = v4.f4485a;
                            StringBuilder sbX = ai.onnxruntime.a.x("Metadata key=", str4, ", value=");
                            sbX.append(Arrays.toString(bArr3));
                            sbX.append(" contains invalid ASCII characters");
                            logger2.warning(sbX.toString());
                        } else {
                            i15++;
                        }
                    }
                }
            }
            i13 += 2;
        }
        if (i13 != i9) {
            bArr = (byte[][]) Arrays.copyOfRange(bArr, 0, i13);
        }
        for (int i16 = 0; i16 < bArr.length; i16 += 2) {
            l9.o oVarG = l9.o.g(bArr[i16]);
            byte[] bArr4 = oVarG.b;
            if (bArr4.length != 0 && bArr4[0] != 58) {
                arrayList.add(new r7.b(oVarG, l9.o.g(bArr[i16 + 1])));
            }
        }
        jVar.f4646x = arrayList;
        f1 f1Var = nVar.f4675v;
        if (f1Var != null) {
            kVar.f4654m.g(f1Var, o7.v.e, true, new v0());
            return;
        }
        if (nVar.f4669n.size() < nVar.C) {
            nVar.t(kVar);
            return;
        }
        nVar.D.add(kVar);
        if (!nVar.f4678z) {
            nVar.f4678z = true;
            p1 p1Var = nVar.F;
            if (p1Var != null) {
                p1Var.b();
            }
        }
        if (kVar.d) {
            nVar.M.d(kVar, true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void k(j jVar, l9.l lVar, boolean z8, boolean z9) {
        if (jVar.B) {
            return;
        }
        if (!jVar.H) {
            o4.b.m(jVar.K != -1, "streamId should be set");
            jVar.F.c(z8, jVar.J, lVar, z9);
        } else {
            jVar.f4647y.write(lVar, (int) lVar.c);
            jVar.f4648z |= z8;
            jVar.A |= z9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.b1
    public final void a(int i9) {
        int i10 = this.D - i9;
        this.D = i10;
        float f8 = i10;
        int i11 = this.f4645v;
        if (f8 <= i11 * 0.5f) {
            int i12 = i11 - i10;
            this.C += i12;
            this.D = i10 + i12;
            this.E.V(this.K, i12);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.b1
    public final void c(boolean z8) {
        o7.v vVar = o7.v.f4462b;
        boolean z9 = this.f4153n;
        n nVar = this.G;
        int i9 = this.K;
        if (z9) {
            nVar.h(i9, null, vVar, false, null, null);
        } else {
            nVar.h(i9, null, vVar, false, r7.a.CANCEL, null);
        }
        o4.b.m(this.f4154o, "status should have been reported on deframer closed");
        this.f4151l = true;
        if (this.f4155p && z8) {
            h(f1.f3929l.h("Encountered end-of-stream mid-frame"), true, new v0());
        }
        r0 r0Var = this.f4152m;
        if (r0Var != null) {
            r0Var.run();
            this.f4152m = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l(f1 f1Var, boolean z8, v0 v0Var) {
        if (this.B) {
            return;
        }
        this.B = true;
        boolean z9 = this.H;
        n nVar = this.G;
        if (!z9) {
            nVar.h(this.K, f1Var, o7.v.f4462b, z8, r7.a.CANCEL, v0Var);
            return;
        }
        LinkedList linkedList = nVar.D;
        k kVar = this.L;
        linkedList.remove(kVar);
        nVar.m(kVar);
        this.f4646x = null;
        this.f4647y.b();
        this.H = false;
        if (v0Var == null) {
            v0Var = new v0();
        }
        h(f1Var, true, v0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m(Throwable th) {
        l(f1.e(th), true, new v0());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n(int i9, boolean z8, l9.l lVar) throws Throwable {
        Throwable th;
        long j9 = lVar.c;
        int i10 = this.C - (((int) j9) + i9);
        this.C = i10;
        this.D -= i9;
        if (i10 < 0) {
            this.E.S(this.K, r7.a.FLOW_CONTROL_ERROR);
            this.G.h(this.K, f1.f3929l.h("Received data size exceeded our receiving window size"), o7.v.f4462b, false, null, null);
            return;
        }
        r rVar = new r(lVar);
        f1 f1Var = this.f4156q;
        boolean z9 = false;
        if (f1Var != null) {
            Charset charset = this.f4157s;
            j3 j3Var = k3.f4325a;
            o4.b.i(charset, "charset");
            int i11 = (int) lVar.c;
            byte[] bArr = new byte[i11];
            rVar.d0(bArr, 0, i11);
            this.f4156q = f1Var.b("DATA-----------------------------\n".concat(new String(bArr, charset)));
            rVar.close();
            if (this.f4156q.f3934b.length() > 1000 || z8) {
                l(this.f4156q, false, this.r);
                return;
            }
            return;
        }
        if (!this.t) {
            l(f1.f3929l.h("headers not received before payload"), false, new v0());
            return;
        }
        int i12 = (int) j9;
        boolean z10 = true;
        try {
            if (this.f4154o) {
                o7.b.f4132h.log(Level.INFO, "Received data on closed stream");
                rVar.close();
            } else {
                try {
                    q2 q2Var = this.f4143a;
                    q2Var.getClass();
                    try {
                        if (q2Var.isClosed() || q2Var.r) {
                            rVar.close();
                        } else {
                            q2Var.f4406m.i0(rVar);
                            try {
                                q2Var.b();
                            } catch (Throwable th2) {
                                th = th2;
                                z10 = false;
                                if (z10) {
                                    rVar.close();
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (Throwable th4) {
                    try {
                        m(th4);
                    } catch (Throwable th5) {
                        th = th5;
                        if (!z9) {
                            throw th;
                        }
                        rVar.close();
                        throw th;
                    }
                }
            }
            if (z8) {
                if (i12 > 0) {
                    this.f4156q = f1.f3929l.h("Received unexpected EOS on non-empty DATA frame from server");
                } else {
                    this.f4156q = f1.f3929l.h("Received unexpected EOS on empty DATA frame from server");
                }
                v0 v0Var = new v0();
                this.r = v0Var;
                h(this.f4156q, false, v0Var);
            }
        } catch (Throwable th6) {
            th = th6;
            z9 = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void o(ArrayList arrayList, boolean z8) {
        f1 f1VarB;
        t0 t0Var = b1.f4142u;
        if (z8) {
            byte[][] bArrA = w.a(arrayList);
            int length = bArrA.length / 2;
            v0 v0Var = new v0();
            v0Var.f3978b = length;
            v0Var.f3977a = bArrA;
            if (this.f4156q == null && !this.t) {
                f1 f1VarI = b1.i(v0Var);
                this.f4156q = f1VarI;
                if (f1VarI != null) {
                    this.r = v0Var;
                }
            }
            f1 f1Var = this.f4156q;
            if (f1Var != null) {
                f1 f1VarB2 = f1Var.b("trailers: " + v0Var);
                this.f4156q = f1VarB2;
                l(f1VarB2, false, this.r);
                return;
            }
            t0 t0Var2 = c0.f3898b;
            f1 f1Var2 = (f1) v0Var.c(t0Var2);
            if (f1Var2 != null) {
                f1VarB = f1Var2.h((String) v0Var.c(c0.f3897a));
            } else if (this.t) {
                f1VarB = f1.f3924g.h("missing GRPC status in response");
            } else {
                Integer num = (Integer) v0Var.c(t0Var);
                f1VarB = (num != null ? y0.g(num.intValue()) : f1.f3929l.h("missing HTTP status code")).b("missing GRPC status, inferred error from HTTP status code");
            }
            v0Var.a(t0Var);
            v0Var.a(t0Var2);
            v0Var.a(c0.f3897a);
            if (this.f4154o) {
                o7.b.f4132h.log(Level.INFO, "Received trailers on closed stream:\n {1}\n {2}", new Object[]{f1VarB, v0Var});
                return;
            }
            for (n7.e eVar : this.f4147h.f4457a) {
                eVar.j(v0Var);
            }
            g(f1VarB, o7.v.f4462b, false, v0Var);
            return;
        }
        byte[][] bArrA2 = w.a(arrayList);
        int length2 = bArrA2.length / 2;
        v0 v0Var2 = new v0();
        v0Var2.f3978b = length2;
        v0Var2.f3977a = bArrA2;
        f1 f1Var3 = this.f4156q;
        if (f1Var3 != null) {
            this.f4156q = f1Var3.b("headers: " + v0Var2);
            return;
        }
        try {
            if (this.t) {
                f1 f1VarH = f1.f3929l.h("Received headers twice");
                this.f4156q = f1VarH;
                this.f4156q = f1VarH.b("headers: " + v0Var2);
                this.r = v0Var2;
                this.f4157s = b1.d(v0Var2);
                return;
            }
            Integer num2 = (Integer) v0Var2.c(t0Var);
            if (num2 != null && num2.intValue() >= 100 && num2.intValue() < 200) {
                f1 f1Var4 = this.f4156q;
                if (f1Var4 != null) {
                    this.f4156q = f1Var4.b("headers: " + v0Var2);
                    this.r = v0Var2;
                    this.f4157s = b1.d(v0Var2);
                    return;
                }
                return;
            }
            this.t = true;
            f1 f1VarI2 = b1.i(v0Var2);
            this.f4156q = f1VarI2;
            if (f1VarI2 != null) {
                this.f4156q = f1VarI2.b("headers: " + v0Var2);
                this.r = v0Var2;
                this.f4157s = b1.d(v0Var2);
                return;
            }
            v0Var2.a(t0Var);
            v0Var2.a(c0.f3898b);
            v0Var2.a(c0.f3897a);
            e(v0Var2);
            f1 f1Var5 = this.f4156q;
            if (f1Var5 != null) {
                this.f4156q = f1Var5.b("headers: " + v0Var2);
                this.r = v0Var2;
                this.f4157s = b1.d(v0Var2);
            }
        } catch (Throwable th) {
            f1 f1Var6 = this.f4156q;
            if (f1Var6 != null) {
                this.f4156q = f1Var6.b("headers: " + v0Var2);
                this.r = v0Var2;
                this.f4157s = b1.d(v0Var2);
            }
            throw th;
        }
    }
}
