package p157o7;

import java.nio.charset.Charset;
import java.util.Locale;
import okhttp3.internal.http2.Header;
import p091i4.AbstractC1744b;
import p132m0.RunnableC2345r0;
import p148n7.AbstractC2495b0;
import p148n7.AbstractC2503e;
import p148n7.C2508f1;
import p148n7.C2512h;
import p148n7.C2534p;
import p148n7.C2536q;
import p148n7.C2543t0;
import p148n7.C2547v0;
import p155o4.AbstractC2587b;
import p170p7.C2985j;

/* JADX INFO: renamed from: o7.b1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2607b1 {

    /* JADX INFO: renamed from: u */
    public static final C2543t0 f7289u = AbstractC2495b0.m3882a(Header.RESPONSE_STATUS_UTF8, new C2722u2(15));

    /* JADX INFO: renamed from: a */
    public C2698q2 f7290a;

    /* JADX INFO: renamed from: b */
    public final Object f7291b = new Object();

    /* JADX INFO: renamed from: c */
    public final C2736w4 f7292c;

    /* JADX INFO: renamed from: d */
    public final C2698q2 f7293d;

    /* JADX INFO: renamed from: e */
    public int f7294e;

    /* JADX INFO: renamed from: f */
    public boolean f7295f;

    /* JADX INFO: renamed from: g */
    public boolean f7296g;

    /* JADX INFO: renamed from: h */
    public final C2718t4 f7297h;

    /* JADX INFO: renamed from: i */
    public boolean f7298i;

    /* JADX INFO: renamed from: j */
    public InterfaceC2731w f7299j;

    /* JADX INFO: renamed from: k */
    public C2536q f7300k;

    /* JADX INFO: renamed from: l */
    public boolean f7301l;

    /* JADX INFO: renamed from: m */
    public RunnableC2345r0 f7302m;

    /* JADX INFO: renamed from: n */
    public volatile boolean f7303n;

    /* JADX INFO: renamed from: o */
    public boolean f7304o;

    /* JADX INFO: renamed from: p */
    public boolean f7305p;

    /* JADX INFO: renamed from: q */
    public C2508f1 f7306q;

    /* JADX INFO: renamed from: r */
    public C2547v0 f7307r;

    /* JADX INFO: renamed from: s */
    public Charset f7308s;

    /* JADX INFO: renamed from: t */
    public boolean f7309t;

    public AbstractC2607b1(int i10, C2718t4 c2718t4, C2736w4 c2736w4) {
        AbstractC2587b.m4042i(c2736w4, "transportTracer");
        this.f7292c = c2736w4;
        C2698q2 c2698q2 = new C2698q2(this, i10, c2718t4, c2736w4);
        this.f7293d = c2698q2;
        this.f7290a = c2698q2;
        this.f7300k = C2536q.f7012d;
        this.f7301l = false;
        this.f7297h = c2718t4;
    }

    /* JADX INFO: renamed from: d */
    public static Charset m4116d(C2547v0 c2547v0) {
        String str = (String) c2547v0.m3989c(AbstractC2743y0.f7883i);
        if (str != null) {
            String[] strArrSplit = str.split("charset=", 2);
            try {
                return Charset.forName(strArrSplit[strArrSplit.length - 1].trim());
            } catch (Exception unused) {
            }
        }
        return AbstractC1744b.f4559b;
    }

    /* JADX INFO: renamed from: i */
    public static C2508f1 m4117i(C2547v0 c2547v0) {
        char cCharAt;
        Integer num = (Integer) c2547v0.m3989c(f7289u);
        if (num == null) {
            return C2508f1.f6944l.m3934h("Missing HTTP status code");
        }
        String str = (String) c2547v0.m3989c(AbstractC2743y0.f7883i);
        if (str != null && 16 <= str.length()) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (lowerCase.startsWith("application/grpc") && (lowerCase.length() == 16 || (cCharAt = lowerCase.charAt(16)) == '+' || cCharAt == ';')) {
                return null;
            }
        }
        return AbstractC2743y0.m4263g(num.intValue()).m3931b("invalid content-type: " + str);
    }

    /* JADX INFO: renamed from: a */
    public abstract void mo4118a(int i10);

    /* JADX INFO: renamed from: b */
    public final void m4119b(C2508f1 c2508f1, EnumC2725v enumC2725v, C2547v0 c2547v0) {
        if (this.f7298i) {
            return;
        }
        this.f7298i = true;
        C2718t4 c2718t4 = this.f7297h;
        if (c2718t4.f7795b.compareAndSet(false, true)) {
            for (AbstractC2503e abstractC2503e : c2718t4.f7794a) {
                abstractC2503e.mo3890B(c2508f1);
            }
        }
        if (this.f7292c != null) {
            c2508f1.m3932f();
        }
        this.f7299j.mo68b(c2508f1, enumC2725v, c2547v0);
    }

    /* JADX INFO: renamed from: c */
    public abstract void mo4120c(boolean z9);

    /* JADX INFO: renamed from: e */
    public final void m4121e(C2547v0 c2547v0) {
        C2512h c2512h = C2512h.f6956c;
        AbstractC2587b.m4046m(!this.f7304o, "Received headers on closed stream");
        for (AbstractC2503e abstractC2503e : this.f7297h.f7794a) {
            abstractC2503e.mo3899g();
        }
        String str = (String) c2547v0.m3989c(AbstractC2743y0.f7878d);
        if (str != null) {
            C2534p c2534p = (C2534p) this.f7300k.f7013a.get(str);
            C2512h c2512h2 = c2534p != null ? c2534p.f7005a : null;
            if (c2512h2 == null) {
                ((C2985j) this).m4782m(C2508f1.f6944l.m3934h("Can't find decompressor for ".concat(str)).m3930a());
                return;
            } else if (c2512h2 != c2512h) {
                C2698q2 c2698q2 = this.f7290a;
                c2698q2.getClass();
                AbstractC2587b.m4046m(true, "Already set full stream decompressor");
                c2698q2.f7715f = c2512h2;
            }
        }
        this.f7299j.mo77l(c2547v0);
    }

    /* JADX INFO: renamed from: f */
    public final boolean m4122f() {
        boolean z9;
        synchronized (this.f7291b) {
            try {
                z9 = this.f7295f && this.f7294e < 32768 && !this.f7296g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z9;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0059 */
    /* JADX INFO: renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m4123g(p148n7.C2508f1 r7, p157o7.EnumC2725v r8, boolean r9, p148n7.C2547v0 r10) throws java.lang.Throwable {
        /*
            r6 = this;
            java.lang.String r0 = "status"
            p155o4.AbstractC2587b.m4042i(r7, r0)
            boolean r0 = r6.f7304o
            if (r0 == 0) goto Lc
            if (r9 != 0) goto Lc
            return
        Lc:
            r0 = 1
            r6.f7304o = r0
            boolean r1 = r7.m3932f()
            r6.f7305p = r1
            java.lang.Object r1 = r6.f7291b
            monitor-enter(r1)
            r6.f7296g = r0     // Catch: java.lang.Throwable -> L54
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L54
            boolean r0 = r6.f7301l
            if (r0 == 0) goto L26
            r9 = 0
            r6.f7302m = r9
            r6.m4119b(r7, r8, r10)
            return
        L26:
            m0.r0 r0 = new m0.r0
            r1 = 1
            r2 = r6
            r3 = r7
            r4 = r8
            r5 = r10
            r0.<init>(r1, r2, r3, r4, r5)
            r2.f7302m = r0
            o7.q2 r7 = r2.f7290a
            if (r9 == 0) goto L3a
            r7.close()
            return
        L3a:
            boolean r8 = r7.isClosed()
            if (r8 == 0) goto L41
            goto L53
        L41:
            o7.b0 r8 = r7.f7722m
            int r8 = r8.f7287d
            r9 = 1
            if (r8 != 0) goto L4a
            r8 = r9
            goto L4b
        L4a:
            r8 = 0
        L4b:
            if (r8 == 0) goto L51
            r7.close()
            goto L53
        L51:
            r7.f7727r = r9
        L53:
            return
        L54:
            r0 = move-exception
            r2 = r6
        L56:
            r7 = r0
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L59
            throw r7
        L59:
            r0 = move-exception
            goto L56
        */
        throw new UnsupportedOperationException("Method not decompiled: p157o7.AbstractC2607b1.m4123g(n7.f1, o7.v, boolean, n7.v0):void");
    }

    /* JADX INFO: renamed from: h */
    public final void m4124h(C2508f1 c2508f1, boolean z9, C2547v0 c2547v0) throws Throwable {
        m4123g(c2508f1, EnumC2725v.f7801b, z9, c2547v0);
    }
}
