package p170p7;

import ai.onnxruntime.AbstractC0074a;
import com.google.protobuf.AbstractC1178q;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
import p022b7.C0920p;
import p091i4.AbstractC1744b;
import p130l9.C2242l;
import p130l9.C2245o;
import p132m0.RunnableC2345r0;
import p148n7.AbstractC2495b0;
import p148n7.AbstractC2498c0;
import p148n7.AbstractC2503e;
import p148n7.C2508f1;
import p148n7.C2537q0;
import p148n7.C2543t0;
import p148n7.C2547v0;
import p155o4.AbstractC2587b;
import p157o7.AbstractC2605b;
import p157o7.AbstractC2607b1;
import p157o7.AbstractC2663k3;
import p157o7.AbstractC2730v4;
import p157o7.AbstractC2743y0;
import p157o7.C2657j3;
import p157o7.C2691p1;
import p157o7.C2698q2;
import p157o7.C2718t4;
import p157o7.EnumC2725v;
import p186r7.C3110b;
import p186r7.EnumC3109a;
import p232w7.AbstractC3536b;
import p232w7.C3535a;
import p232w7.C3537c;

/* JADX INFO: renamed from: p7.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2985j extends AbstractC2607b1 {

    /* JADX INFO: renamed from: A */
    public boolean f8340A;

    /* JADX INFO: renamed from: B */
    public boolean f8341B;

    /* JADX INFO: renamed from: C */
    public int f8342C;

    /* JADX INFO: renamed from: D */
    public int f8343D;

    /* JADX INFO: renamed from: E */
    public final C2979d f8344E;

    /* JADX INFO: renamed from: F */
    public final C0920p f8345F;

    /* JADX INFO: renamed from: G */
    public final C2989n f8346G;

    /* JADX INFO: renamed from: H */
    public boolean f8347H;

    /* JADX INFO: renamed from: I */
    public final C3537c f8348I;

    /* JADX INFO: renamed from: J */
    public C2997v f8349J;

    /* JADX INFO: renamed from: K */
    public int f8350K;

    /* JADX INFO: renamed from: L */
    public final /* synthetic */ C2986k f8351L;

    /* JADX INFO: renamed from: v */
    public final int f8352v;

    /* JADX INFO: renamed from: w */
    public final Object f8353w;

    /* JADX INFO: renamed from: x */
    public ArrayList f8354x;

    /* JADX INFO: renamed from: y */
    public final C2242l f8355y;

    /* JADX INFO: renamed from: z */
    public boolean f8356z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2985j(C2986k c2986k, int i10, C2718t4 c2718t4, Object obj, C2979d c2979d, C0920p c0920p, C2989n c2989n, int i11) {
        super(i10, c2718t4, c2986k.f7274b);
        this.f8351L = c2986k;
        this.f7308s = AbstractC1744b.f4559b;
        this.f8355y = new C2242l();
        this.f8356z = false;
        this.f8340A = false;
        this.f8341B = false;
        this.f8347H = true;
        this.f8350K = -1;
        AbstractC2587b.m4042i(obj, "lock");
        this.f8353w = obj;
        this.f8344E = c2979d;
        this.f8345F = c0920p;
        this.f8346G = c2989n;
        this.f8342C = i11;
        this.f8343D = i11;
        this.f8352v = i11;
        AbstractC3536b.f10507a.getClass();
        this.f8348I = C3535a.f10505a;
    }

    /* JADX INFO: renamed from: j */
    public static void m4779j(C2985j c2985j, C2547v0 c2547v0, String str) throws Throwable {
        C2986k c2986k = c2985j.f8351L;
        String str2 = c2986k.f8361l;
        String str3 = c2986k.f8359j;
        boolean z9 = c2986k.f8365p;
        C2989n c2989n = c2985j.f8346G;
        boolean z10 = c2989n.f8373B == null;
        C3110b c3110b = AbstractC2980e.f8305a;
        AbstractC2587b.m4042i(c2547v0, "headers");
        AbstractC2587b.m4042i(str2, "authority");
        c2547v0.m3987a(AbstractC2743y0.f7883i);
        c2547v0.m3987a(AbstractC2743y0.f7884j);
        C2537q0 c2537q0 = AbstractC2743y0.f7885k;
        c2547v0.m3987a(c2537q0);
        ArrayList arrayList = new ArrayList(c2547v0.f7041b + 7);
        if (z10) {
            arrayList.add(AbstractC2980e.f8306b);
        } else {
            arrayList.add(AbstractC2980e.f8305a);
        }
        if (z9) {
            arrayList.add(AbstractC2980e.f8308d);
        } else {
            arrayList.add(AbstractC2980e.f8307c);
        }
        arrayList.add(new C3110b(C3110b.f8891h, str2));
        arrayList.add(new C3110b(C3110b.f8889f, str));
        arrayList.add(new C3110b(c2537q0.f7021a, str3));
        arrayList.add(AbstractC2980e.f8309e);
        arrayList.add(AbstractC2980e.f8310f);
        Logger logger = AbstractC2730v4.f7842a;
        Charset charset = AbstractC2495b0.f6883a;
        int i10 = c2547v0.f7041b * 2;
        byte[][] bArr = new byte[i10][];
        Object[] objArr = c2547v0.f7040a;
        if (objArr instanceof byte[][]) {
            System.arraycopy(objArr, 0, bArr, 0, i10);
        } else {
            for (int i11 = 0; i11 < c2547v0.f7041b; i11++) {
                int i12 = i11 * 2;
                Object[] objArr2 = c2547v0.f7040a;
                bArr[i12] = (byte[]) objArr2[i12];
                int i13 = i12 + 1;
                Object obj = objArr2[i13];
                if (!(obj instanceof byte[])) {
                    AbstractC1178q.m2083q(obj);
                    throw null;
                }
                bArr[i13] = (byte[]) obj;
            }
        }
        int i14 = 0;
        for (int i15 = 0; i15 < i10; i15 += 2) {
            byte[] bArr2 = bArr[i15];
            byte[] bArr3 = bArr[i15 + 1];
            if (AbstractC2730v4.m4256a(bArr2, AbstractC2730v4.f7843b)) {
                bArr[i14] = bArr2;
                bArr[i14 + 1] = AbstractC2495b0.f6884b.m3145c(bArr3).getBytes(AbstractC1744b.f4558a);
            } else {
                int length = bArr3.length;
                int i16 = 0;
                while (true) {
                    if (i16 >= length) {
                        bArr[i14] = bArr2;
                        bArr[i14 + 1] = bArr3;
                    } else {
                        byte b10 = bArr3[i16];
                        if (b10 < 32 || b10 > 126) {
                            String str4 = new String(bArr2, AbstractC1744b.f4558a);
                            Logger logger2 = AbstractC2730v4.f7842a;
                            StringBuilder sbM173x = AbstractC0074a.m173x("Metadata key=", str4, ", value=");
                            sbM173x.append(Arrays.toString(bArr3));
                            sbM173x.append(" contains invalid ASCII characters");
                            logger2.warning(sbM173x.toString());
                        } else {
                            i16++;
                        }
                    }
                }
            }
            i14 += 2;
        }
        if (i14 != i10) {
            bArr = (byte[][]) Arrays.copyOfRange(bArr, 0, i14);
        }
        for (int i17 = 0; i17 < bArr.length; i17 += 2) {
            C2245o c2245oM3635g = C2245o.m3635g(bArr[i17]);
            byte[] bArr4 = c2245oM3635g.f5880b;
            if (bArr4.length != 0 && bArr4[0] != 58) {
                arrayList.add(new C3110b(c2245oM3635g, C2245o.m3635g(bArr[i17 + 1])));
            }
        }
        c2985j.f8354x = arrayList;
        C2508f1 c2508f1 = c2989n.f8408v;
        if (c2508f1 != null) {
            c2986k.f8362m.m4123g(c2508f1, EnumC2725v.f7804e, true, new C2547v0());
            return;
        }
        if (c2989n.f8400n.size() < c2989n.f8374C) {
            c2989n.m4801t(c2986k);
            return;
        }
        c2989n.f8375D.add(c2986k);
        if (!c2989n.f8412z) {
            c2989n.f8412z = true;
            C2691p1 c2691p1 = c2989n.f8377F;
            if (c2691p1 != null) {
                c2691p1.m4204b();
            }
        }
        if (c2986k.f7276d) {
            c2989n.f8384M.m3098d(c2986k, true);
        }
    }

    /* JADX INFO: renamed from: k */
    public static void m4780k(C2985j c2985j, C2242l c2242l, boolean z9, boolean z10) {
        if (c2985j.f8341B) {
            return;
        }
        if (!c2985j.f8347H) {
            AbstractC2587b.m4046m(c2985j.f8350K != -1, "streamId should be set");
            c2985j.f8345F.m1056c(z9, c2985j.f8349J, c2242l, z10);
        } else {
            c2985j.f8355y.write(c2242l, (int) c2242l.f5878c);
            c2985j.f8356z |= z9;
            c2985j.f8340A |= z10;
        }
    }

    @Override // p157o7.AbstractC2607b1
    /* JADX INFO: renamed from: a */
    public final void mo4118a(int i10) {
        int i11 = this.f8343D - i10;
        this.f8343D = i11;
        float f8 = i11;
        int i12 = this.f8352v;
        if (f8 <= i12 * 0.5f) {
            int i13 = i12 - i11;
            this.f8342C += i13;
            this.f8343D = i11 + i13;
            this.f8344E.m4775V(this.f8350K, i13);
        }
    }

    @Override // p157o7.AbstractC2607b1
    /* JADX INFO: renamed from: c */
    public final void mo4120c(boolean z9) throws Throwable {
        EnumC2725v enumC2725v = EnumC2725v.f7801b;
        boolean z10 = this.f7303n;
        C2989n c2989n = this.f8346G;
        int i10 = this.f8350K;
        if (z10) {
            c2989n.m4790h(i10, null, enumC2725v, false, null, null);
        } else {
            c2989n.m4790h(i10, null, enumC2725v, false, EnumC3109a.CANCEL, null);
        }
        AbstractC2587b.m4046m(this.f7304o, "status should have been reported on deframer closed");
        this.f7301l = true;
        if (this.f7305p && z9) {
            m4124h(C2508f1.f6944l.m3934h("Encountered end-of-stream mid-frame"), true, new C2547v0());
        }
        RunnableC2345r0 runnableC2345r0 = this.f7302m;
        if (runnableC2345r0 != null) {
            runnableC2345r0.run();
            this.f7302m = null;
        }
    }

    /* JADX INFO: renamed from: l */
    public final void m4781l(C2508f1 c2508f1, boolean z9, C2547v0 c2547v0) throws Throwable {
        if (this.f8341B) {
            return;
        }
        this.f8341B = true;
        boolean z10 = this.f8347H;
        C2989n c2989n = this.f8346G;
        if (!z10) {
            c2989n.m4790h(this.f8350K, c2508f1, EnumC2725v.f7801b, z9, EnumC3109a.CANCEL, c2547v0);
            return;
        }
        LinkedList linkedList = c2989n.f8375D;
        C2986k c2986k = this.f8351L;
        linkedList.remove(c2986k);
        c2989n.m4795m(c2986k);
        this.f8354x = null;
        this.f8355y.m3608b();
        this.f8347H = false;
        if (c2547v0 == null) {
            c2547v0 = new C2547v0();
        }
        m4124h(c2508f1, true, c2547v0);
    }

    /* JADX INFO: renamed from: m */
    public final void m4782m(Throwable th) {
        m4781l(C2508f1.m3929e(th), true, new C2547v0());
    }

    /* JADX INFO: renamed from: n */
    public final void m4783n(int i10, boolean z9, C2242l c2242l) throws Throwable {
        Throwable th;
        long j10 = c2242l.f5878c;
        int i11 = this.f8342C - (((int) j10) + i10);
        this.f8342C = i11;
        this.f8343D -= i10;
        if (i11 < 0) {
            this.f8344E.m4774S(this.f8350K, EnumC3109a.FLOW_CONTROL_ERROR);
            this.f8346G.m4790h(this.f8350K, C2508f1.f6944l.m3934h("Received data size exceeded our receiving window size"), EnumC2725v.f7801b, false, null, null);
            return;
        }
        C2993r c2993r = new C2993r(c2242l);
        C2508f1 c2508f1 = this.f7306q;
        boolean z10 = false;
        if (c2508f1 != null) {
            Charset charset = this.f7308s;
            C2657j3 c2657j3 = AbstractC2663k3.f7593a;
            AbstractC2587b.m4042i(charset, "charset");
            int i12 = (int) c2242l.f5878c;
            byte[] bArr = new byte[i12];
            c2993r.mo4106d0(bArr, 0, i12);
            this.f7306q = c2508f1.m3931b("DATA-----------------------------\n".concat(new String(bArr, charset)));
            c2993r.close();
            if (this.f7306q.f6949b.length() > 1000 || z9) {
                m4781l(this.f7306q, false, this.f7307r);
                return;
            }
            return;
        }
        if (!this.f7309t) {
            m4781l(C2508f1.f6944l.m3934h("headers not received before payload"), false, new C2547v0());
            return;
        }
        int i13 = (int) j10;
        boolean z11 = true;
        try {
            if (this.f7304o) {
                AbstractC2605b.f7273h.log(Level.INFO, "Received data on closed stream");
                c2993r.close();
            } else {
                try {
                    C2698q2 c2698q2 = this.f7290a;
                    c2698q2.getClass();
                    try {
                        if (c2698q2.isClosed() || c2698q2.f7727r) {
                            c2993r.close();
                        } else {
                            c2698q2.f7722m.m4111i0(c2993r);
                            try {
                                c2698q2.m4226b();
                            } catch (Throwable th2) {
                                th = th2;
                                z11 = false;
                                if (z11) {
                                    c2993r.close();
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (Throwable th4) {
                    try {
                        m4782m(th4);
                    } catch (Throwable th5) {
                        th = th5;
                        if (!z10) {
                            throw th;
                        }
                        c2993r.close();
                        throw th;
                    }
                }
            }
            if (z9) {
                if (i13 > 0) {
                    this.f7306q = C2508f1.f6944l.m3934h("Received unexpected EOS on non-empty DATA frame from server");
                } else {
                    this.f7306q = C2508f1.f6944l.m3934h("Received unexpected EOS on empty DATA frame from server");
                }
                C2547v0 c2547v0 = new C2547v0();
                this.f7307r = c2547v0;
                m4124h(this.f7306q, false, c2547v0);
            }
        } catch (Throwable th6) {
            th = th6;
            z10 = true;
        }
    }

    /* JADX INFO: renamed from: o */
    public final void m4784o(ArrayList arrayList, boolean z9) throws Throwable {
        C2508f1 c2508f1M3931b;
        C2543t0 c2543t0 = AbstractC2607b1.f7289u;
        if (z9) {
            byte[][] bArrM4812a = AbstractC2998w.m4812a(arrayList);
            int length = bArrM4812a.length / 2;
            C2547v0 c2547v0 = new C2547v0();
            c2547v0.f7041b = length;
            c2547v0.f7040a = bArrM4812a;
            if (this.f7306q == null && !this.f7309t) {
                C2508f1 c2508f1M4117i = AbstractC2607b1.m4117i(c2547v0);
                this.f7306q = c2508f1M4117i;
                if (c2508f1M4117i != null) {
                    this.f7307r = c2547v0;
                }
            }
            C2508f1 c2508f1 = this.f7306q;
            if (c2508f1 != null) {
                C2508f1 c2508f1M3931b2 = c2508f1.m3931b("trailers: " + c2547v0);
                this.f7306q = c2508f1M3931b2;
                m4781l(c2508f1M3931b2, false, this.f7307r);
                return;
            }
            C2543t0 c2543t1 = AbstractC2498c0.f6899b;
            C2508f1 c2508f2 = (C2508f1) c2547v0.m3989c(c2543t1);
            if (c2508f2 != null) {
                c2508f1M3931b = c2508f2.m3934h((String) c2547v0.m3989c(AbstractC2498c0.f6898a));
            } else if (this.f7309t) {
                c2508f1M3931b = C2508f1.f6939g.m3934h("missing GRPC status in response");
            } else {
                Integer num = (Integer) c2547v0.m3989c(c2543t0);
                c2508f1M3931b = (num != null ? AbstractC2743y0.m4263g(num.intValue()) : C2508f1.f6944l.m3934h("missing HTTP status code")).m3931b("missing GRPC status, inferred error from HTTP status code");
            }
            c2547v0.m3987a(c2543t0);
            c2547v0.m3987a(c2543t1);
            c2547v0.m3987a(AbstractC2498c0.f6898a);
            if (this.f7304o) {
                AbstractC2605b.f7273h.log(Level.INFO, "Received trailers on closed stream:\n {1}\n {2}", new Object[]{c2508f1M3931b, c2547v0});
                return;
            }
            for (AbstractC2503e abstractC2503e : this.f7297h.f7794a) {
                abstractC2503e.mo3902j(c2547v0);
            }
            m4123g(c2508f1M3931b, EnumC2725v.f7801b, false, c2547v0);
            return;
        }
        byte[][] bArrM4812a2 = AbstractC2998w.m4812a(arrayList);
        int length2 = bArrM4812a2.length / 2;
        C2547v0 c2547v1 = new C2547v0();
        c2547v1.f7041b = length2;
        c2547v1.f7040a = bArrM4812a2;
        C2508f1 c2508f3 = this.f7306q;
        if (c2508f3 != null) {
            this.f7306q = c2508f3.m3931b("headers: " + c2547v1);
            return;
        }
        try {
            if (this.f7309t) {
                C2508f1 c2508f1M3934h = C2508f1.f6944l.m3934h("Received headers twice");
                this.f7306q = c2508f1M3934h;
                this.f7306q = c2508f1M3934h.m3931b("headers: " + c2547v1);
                this.f7307r = c2547v1;
                this.f7308s = AbstractC2607b1.m4116d(c2547v1);
                return;
            }
            Integer num2 = (Integer) c2547v1.m3989c(c2543t0);
            if (num2 != null && num2.intValue() >= 100 && num2.intValue() < 200) {
                C2508f1 c2508f4 = this.f7306q;
                if (c2508f4 != null) {
                    this.f7306q = c2508f4.m3931b("headers: " + c2547v1);
                    this.f7307r = c2547v1;
                    this.f7308s = AbstractC2607b1.m4116d(c2547v1);
                    return;
                }
                return;
            }
            this.f7309t = true;
            C2508f1 c2508f1M4117i2 = AbstractC2607b1.m4117i(c2547v1);
            this.f7306q = c2508f1M4117i2;
            if (c2508f1M4117i2 != null) {
                this.f7306q = c2508f1M4117i2.m3931b("headers: " + c2547v1);
                this.f7307r = c2547v1;
                this.f7308s = AbstractC2607b1.m4116d(c2547v1);
                return;
            }
            c2547v1.m3987a(c2543t0);
            c2547v1.m3987a(AbstractC2498c0.f6899b);
            c2547v1.m3987a(AbstractC2498c0.f6898a);
            m4121e(c2547v1);
            C2508f1 c2508f5 = this.f7306q;
            if (c2508f5 != null) {
                this.f7306q = c2508f5.m3931b("headers: " + c2547v1);
                this.f7307r = c2547v1;
                this.f7308s = AbstractC2607b1.m4116d(c2547v1);
            }
        } catch (Throwable th) {
            C2508f1 c2508f6 = this.f7306q;
            if (c2508f6 != null) {
                this.f7306q = c2508f6.m3931b("headers: " + c2547v1);
                this.f7307r = c2547v1;
                this.f7308s = AbstractC2607b1.m4116d(c2547v1);
            }
            throw th;
        }
    }
}
