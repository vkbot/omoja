package p157o7;

import ai.onnxruntime.AbstractC0074a;
import com.google.protobuf.AbstractC1169n;
import com.google.protobuf.C1166m;
import com.google.protobuf.C1175p;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Locale;
import java.util.logging.Logger;
import java.util.zip.GZIPOutputStream;
import p030c5.C0990e;
import p099j1.C1929i;
import p148n7.AbstractC2503e;
import p148n7.C2508f1;
import p148n7.C2512h;
import p148n7.C2514h1;
import p155o4.AbstractC2587b;
import p170p7.C2996u;
import p203t7.AbstractC3267c;
import p203t7.C3265a;
import p250y5.C3652g;

/* JADX INFO: renamed from: o7.t2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2716t2 implements InterfaceC2726v0 {

    /* JADX INFO: renamed from: a */
    public final AbstractC2605b f7780a;

    /* JADX INFO: renamed from: c */
    public C2996u f7782c;

    /* JADX INFO: renamed from: g */
    public final C0990e f7786g;

    /* JADX INFO: renamed from: h */
    public final C2718t4 f7787h;

    /* JADX INFO: renamed from: i */
    public boolean f7788i;

    /* JADX INFO: renamed from: j */
    public int f7789j;

    /* JADX INFO: renamed from: l */
    public long f7791l;

    /* JADX INFO: renamed from: b */
    public int f7781b = -1;

    /* JADX INFO: renamed from: d */
    public C2512h f7783d = C2512h.f6956c;

    /* JADX INFO: renamed from: e */
    public final C2710s2 f7784e = new C2710s2(this);

    /* JADX INFO: renamed from: f */
    public final ByteBuffer f7785f = ByteBuffer.allocate(5);

    /* JADX INFO: renamed from: k */
    public int f7790k = -1;

    public C2716t2(AbstractC2605b abstractC2605b, C0990e c0990e, C2718t4 c2718t4) {
        this.f7780a = abstractC2605b;
        this.f7786g = c0990e;
        this.f7787h = c2718t4;
    }

    /* JADX INFO: renamed from: g */
    public static int m4238g(C3265a c3265a, OutputStream outputStream) throws IOException {
        C3652g c3652g = c3265a.f9555b;
        if (c3652g != null) {
            int iMo1893a = c3652g.mo1893a(null);
            C3652g c3652g2 = c3265a.f9555b;
            c3652g2.getClass();
            int iMo1893a2 = c3652g2.mo1893a(null);
            Logger logger = AbstractC1169n.f2730b;
            if (iMo1893a2 > 4096) {
                iMo1893a2 = 4096;
            }
            C1166m c1166m = new C1166m(outputStream, iMo1893a2);
            c3652g2.mo1895c(c1166m);
            if (c1166m.f2724f > 0) {
                c1166m.m2043G();
            }
            c3265a.f9555b = null;
            return iMo1893a;
        }
        ByteArrayInputStream byteArrayInputStream = c3265a.f9557d;
        if (byteArrayInputStream == null) {
            return 0;
        }
        C1175p c1175p = AbstractC3267c.f9562a;
        AbstractC2587b.m4042i(outputStream, "outputStream cannot be null!");
        byte[] bArr = new byte[8192];
        long j10 = 0;
        while (true) {
            int i10 = byteArrayInputStream.read(bArr);
            if (i10 == -1) {
                int i11 = (int) j10;
                c3265a.f9557d = null;
                return i11;
            }
            outputStream.write(bArr, 0, i10);
            j10 += (long) i10;
        }
    }

    @Override // p157o7.InterfaceC2726v0
    /* JADX INFO: renamed from: a */
    public final InterfaceC2726v0 mo4076a(C2512h c2512h) {
        this.f7783d = c2512h;
        return this;
    }

    @Override // p157o7.InterfaceC2726v0
    /* JADX INFO: renamed from: b */
    public final void mo4077b(C3265a c3265a) {
        if (this.f7788i) {
            C1929i.m3030l("Framer already closed");
            return;
        }
        this.f7789j++;
        int i10 = this.f7790k + 1;
        this.f7790k = i10;
        this.f7791l = 0L;
        C2718t4 c2718t4 = this.f7787h;
        AbstractC2503e[] abstractC2503eArr = c2718t4.f7794a;
        AbstractC2503e[] abstractC2503eArr2 = c2718t4.f7794a;
        int i11 = 0;
        for (AbstractC2503e abstractC2503e : abstractC2503eArr) {
            abstractC2503e.mo3912t(i10);
        }
        boolean z9 = this.f7783d != C2512h.f6956c;
        try {
            int iAvailable = c3265a.available();
            int iM4242h = (iAvailable == 0 || !z9) ? m4242h(c3265a, iAvailable) : m4240e(c3265a);
            if (iAvailable != -1 && iM4242h != iAvailable) {
                throw C2508f1.f6944l.m3934h(AbstractC0074a.m156g(iM4242h, "Message length inaccurate ", " != ", iAvailable)).m3930a();
            }
            long j10 = iM4242h;
            for (AbstractC2503e abstractC2503e2 : abstractC2503eArr2) {
                abstractC2503e2.mo3914v(j10);
            }
            long j11 = this.f7791l;
            for (AbstractC2503e abstractC2503e3 : abstractC2503eArr2) {
                abstractC2503e3.mo3915w(j11);
            }
            int i12 = this.f7790k;
            long j12 = this.f7791l;
            AbstractC2503e[] abstractC2503eArr3 = c2718t4.f7794a;
            int length = abstractC2503eArr3.length;
            while (i11 < length) {
                long j13 = j10;
                abstractC2503eArr3[i11].mo3913u(i12, j12, j13);
                i11++;
                j10 = j13;
            }
        } catch (IOException e) {
            throw C2508f1.f6944l.m3934h("Failed to frame message").m3933g(e).m3930a();
        } catch (C2514h1 e6) {
            throw e6;
        } catch (RuntimeException e10) {
            throw C2508f1.f6944l.m3934h("Failed to frame message").m3933g(e10).m3930a();
        }
    }

    @Override // p157o7.InterfaceC2726v0
    /* JADX INFO: renamed from: c */
    public final void mo4078c(int i10) {
        AbstractC2587b.m4046m(this.f7781b == -1, "max size already set");
        this.f7781b = i10;
    }

    @Override // p157o7.InterfaceC2726v0
    public final void close() {
        if (this.f7788i) {
            return;
        }
        this.f7788i = true;
        C2996u c2996u = this.f7782c;
        if (c2996u != null && c2996u.f8435c == 0) {
            this.f7782c = null;
        }
        C2996u c2996u2 = this.f7782c;
        this.f7782c = null;
        this.f7780a.m4091b(c2996u2, true, true, this.f7789j);
        this.f7789j = 0;
    }

    /* JADX INFO: renamed from: d */
    public final void m4239d(C2704r2 c2704r2, boolean z9) {
        ArrayList arrayList = c2704r2.f7741b;
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            i10 += ((C2996u) obj).f8435c;
        }
        int i12 = this.f7781b;
        if (i12 >= 0 && i10 > i12) {
            C2508f1 c2508f1 = C2508f1.f6942j;
            Locale locale = Locale.US;
            throw c2508f1.m3934h("message too large " + i10 + " > " + i12).m3930a();
        }
        ByteBuffer byteBuffer = this.f7785f;
        byteBuffer.clear();
        byteBuffer.put(z9 ? (byte) 1 : (byte) 0).putInt(i10);
        this.f7786g.getClass();
        C2996u c2996uM1133o = C0990e.m1133o(5);
        c2996uM1133o.m4808a(byteBuffer.array(), 0, byteBuffer.position());
        if (i10 == 0) {
            this.f7782c = c2996uM1133o;
            return;
        }
        int i13 = this.f7789j - 1;
        AbstractC2605b abstractC2605b = this.f7780a;
        abstractC2605b.m4091b(c2996uM1133o, false, false, i13);
        this.f7789j = 1;
        for (int i14 = 0; i14 < arrayList.size() - 1; i14++) {
            abstractC2605b.m4091b((C2996u) arrayList.get(i14), false, false, 0);
        }
        this.f7782c = (C2996u) arrayList.get(arrayList.size() - 1);
        this.f7791l = i10;
    }

    /* JADX INFO: renamed from: e */
    public final int m4240e(C3265a c3265a) throws IOException {
        OutputStream gZIPOutputStream;
        C2704r2 c2704r2 = new C2704r2(this);
        switch (this.f7783d.f6958b) {
            case 0:
                gZIPOutputStream = c2704r2;
                break;
            default:
                gZIPOutputStream = new GZIPOutputStream(c2704r2);
                break;
        }
        try {
            int iM4238g = m4238g(c3265a, gZIPOutputStream);
            gZIPOutputStream.close();
            int i10 = this.f7781b;
            if (i10 < 0 || iM4238g <= i10) {
                m4239d(c2704r2, true);
                return iM4238g;
            }
            C2508f1 c2508f1 = C2508f1.f6942j;
            Locale locale = Locale.US;
            throw c2508f1.m3934h("message too large " + iM4238g + " > " + i10).m3930a();
        } catch (Throwable th) {
            gZIPOutputStream.close();
            throw th;
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m4241f(byte[] bArr, int i10, int i11) {
        while (i11 > 0) {
            C2996u c2996u = this.f7782c;
            if (c2996u != null && c2996u.f8434b == 0) {
                this.f7782c = null;
                this.f7780a.m4091b(c2996u, false, false, this.f7789j);
                this.f7789j = 0;
            }
            if (this.f7782c == null) {
                this.f7786g.getClass();
                this.f7782c = C0990e.m1133o(i11);
            }
            int iMin = Math.min(i11, this.f7782c.f8434b);
            this.f7782c.m4808a(bArr, i10, iMin);
            i10 += iMin;
            i11 -= iMin;
        }
    }

    @Override // p157o7.InterfaceC2726v0
    public final void flush() {
        C2996u c2996u = this.f7782c;
        if (c2996u == null || c2996u.f8435c <= 0) {
            return;
        }
        this.f7782c = null;
        this.f7780a.m4091b(c2996u, false, true, this.f7789j);
        this.f7789j = 0;
    }

    /* JADX INFO: renamed from: h */
    public final int m4242h(C3265a c3265a, int i10) throws IOException {
        if (i10 == -1) {
            C2704r2 c2704r2 = new C2704r2(this);
            int iM4238g = m4238g(c3265a, c2704r2);
            m4239d(c2704r2, false);
            return iM4238g;
        }
        this.f7791l = i10;
        int i11 = this.f7781b;
        if (i11 >= 0 && i10 > i11) {
            C2508f1 c2508f1 = C2508f1.f6942j;
            Locale locale = Locale.US;
            throw c2508f1.m3934h("message too large " + i10 + " > " + i11).m3930a();
        }
        ByteBuffer byteBuffer = this.f7785f;
        byteBuffer.clear();
        byteBuffer.put((byte) 0).putInt(i10);
        if (this.f7782c == null) {
            int iPosition = byteBuffer.position() + i10;
            this.f7786g.getClass();
            this.f7782c = C0990e.m1133o(iPosition);
        }
        m4241f(byteBuffer.array(), 0, byteBuffer.position());
        return m4238g(c3265a, this.f7784e);
    }

    @Override // p157o7.InterfaceC2726v0
    public final boolean isClosed() {
        return this.f7788i;
    }
}
