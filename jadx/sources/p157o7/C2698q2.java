package p157o7;

import com.bumptech.glide.AbstractC1034g;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import java.util.zip.GZIPInputStream;
import org.apache.commons.net.telnet.TelnetCommand;
import p142n0.C2467b;
import p148n7.AbstractC2503e;
import p148n7.C2508f1;
import p148n7.C2512h;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.q2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2698q2 implements Closeable {

    /* JADX INFO: renamed from: b */
    public AbstractC2607b1 f7711b;

    /* JADX INFO: renamed from: c */
    public int f7712c;

    /* JADX INFO: renamed from: d */
    public final C2718t4 f7713d;

    /* JADX INFO: renamed from: e */
    public final C2736w4 f7714e;

    /* JADX INFO: renamed from: f */
    public C2512h f7715f;

    /* JADX INFO: renamed from: g */
    public byte[] f7716g;

    /* JADX INFO: renamed from: h */
    public int f7717h;

    /* JADX INFO: renamed from: i */
    public int f7718i;

    /* JADX INFO: renamed from: j */
    public int f7719j;

    /* JADX INFO: renamed from: k */
    public boolean f7720k;

    /* JADX INFO: renamed from: l */
    public C2606b0 f7721l;

    /* JADX INFO: renamed from: m */
    public C2606b0 f7722m;

    /* JADX INFO: renamed from: n */
    public long f7723n;

    /* JADX INFO: renamed from: o */
    public boolean f7724o;

    /* JADX INFO: renamed from: p */
    public int f7725p;

    /* JADX INFO: renamed from: q */
    public int f7726q;

    /* JADX INFO: renamed from: r */
    public boolean f7727r;

    /* JADX INFO: renamed from: s */
    public volatile boolean f7728s;

    public C2698q2(AbstractC2607b1 abstractC2607b1, int i10, C2718t4 c2718t4, C2736w4 c2736w4) {
        C2512h c2512h = C2512h.f6956c;
        this.f7718i = 1;
        this.f7719j = 5;
        this.f7722m = new C2606b0();
        this.f7724o = false;
        this.f7725p = -1;
        this.f7727r = false;
        this.f7728s = false;
        this.f7711b = abstractC2607b1;
        this.f7715f = c2512h;
        this.f7712c = i10;
        this.f7713d = c2718t4;
        AbstractC2587b.m4042i(c2736w4, "transportTracer");
        this.f7714e = c2736w4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0057, code lost:
    
        if (r8.f7718i == 2) goto L17;
     */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX INFO: renamed from: S */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean m4225S() throws java.lang.Throwable {
        /*
            r8 = this;
            o7.t4 r0 = r8.f7713d
            r1 = 2
            r2 = 0
            o7.b0 r3 = r8.f7721l     // Catch: java.lang.Throwable -> L10
            if (r3 != 0) goto L12
            o7.b0 r3 = new o7.b0     // Catch: java.lang.Throwable -> L10
            r3.<init>()     // Catch: java.lang.Throwable -> L10
            r8.f7721l = r3     // Catch: java.lang.Throwable -> L10
            goto L12
        L10:
            r3 = move-exception
            goto L5b
        L12:
            r3 = r2
        L13:
            int r4 = r8.f7719j     // Catch: java.lang.Throwable -> L48
            o7.b0 r5 = r8.f7721l     // Catch: java.lang.Throwable -> L48
            int r5 = r5.f7287d     // Catch: java.lang.Throwable -> L48
            int r4 = r4 - r5
            if (r4 <= 0) goto L4d
            o7.b0 r5 = r8.f7722m     // Catch: java.lang.Throwable -> L48
            int r5 = r5.f7287d     // Catch: java.lang.Throwable -> L48
            if (r5 != 0) goto L37
            if (r3 <= 0) goto L36
            o7.b1 r4 = r8.f7711b
            r4.mo4118a(r3)
            int r4 = r8.f7718i
            if (r4 != r1) goto L36
        L2d:
            long r4 = (long) r3
            r0.m4243a(r4)
            int r0 = r8.f7726q
            int r0 = r0 + r3
            r8.f7726q = r0
        L36:
            return r2
        L37:
            int r4 = java.lang.Math.min(r4, r5)     // Catch: java.lang.Throwable -> L48
            int r3 = r3 + r4
            o7.b0 r5 = r8.f7721l     // Catch: java.lang.Throwable -> L48
            o7.b0 r6 = r8.f7722m     // Catch: java.lang.Throwable -> L48
            o7.c r4 = r6.mo4102S(r4)     // Catch: java.lang.Throwable -> L48
            r5.m4111i0(r4)     // Catch: java.lang.Throwable -> L48
            goto L13
        L48:
            r2 = move-exception
            r7 = r3
            r3 = r2
            r2 = r7
            goto L5b
        L4d:
            r2 = 1
            if (r3 <= 0) goto L5a
            o7.b1 r4 = r8.f7711b
            r4.mo4118a(r3)
            int r4 = r8.f7718i
            if (r4 != r1) goto L5a
            goto L2d
        L5a:
            return r2
        L5b:
            if (r2 <= 0) goto L6f
            o7.b1 r4 = r8.f7711b
            r4.mo4118a(r2)
            int r4 = r8.f7718i
            if (r4 != r1) goto L6f
            long r4 = (long) r2
            r0.m4243a(r4)
            int r0 = r8.f7726q
            int r0 = r0 + r2
            r8.f7726q = r0
        L6f:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p157o7.C2698q2.m4225S():boolean");
    }

    /* JADX INFO: renamed from: b */
    public final void m4226b() {
        String str;
        if (this.f7724o) {
            return;
        }
        boolean z9 = true;
        this.f7724o = true;
        while (!this.f7728s && this.f7723n > 0 && m4225S()) {
            try {
                int iM1296c = AbstractC1034g.m1296c(this.f7718i);
                if (iM1296c == 0) {
                    m4228y();
                } else {
                    if (iM1296c != 1) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Invalid state: ");
                        int i10 = this.f7718i;
                        if (i10 != 1) {
                            str = i10 != 2 ? "null" : "BODY";
                        } else {
                            str = "HEADER";
                        }
                        sb.append(str);
                        throw new AssertionError(sb.toString());
                    }
                    m4227c();
                    this.f7723n--;
                }
            } catch (Throwable th) {
                this.f7724o = false;
                throw th;
            }
        }
        if (this.f7728s) {
            close();
            this.f7724o = false;
            return;
        }
        if (this.f7727r) {
            if (this.f7722m.f7287d != 0) {
                z9 = false;
            }
            if (z9) {
                close();
            }
        }
        this.f7724o = false;
    }

    /* JADX INFO: renamed from: c */
    public final void m4227c() {
        InputStream c2692p2;
        int i10 = this.f7725p;
        long j10 = this.f7726q;
        C2718t4 c2718t4 = this.f7713d;
        for (AbstractC2503e abstractC2503e : c2718t4.f7794a) {
            abstractC2503e.mo3901i(i10, j10);
        }
        this.f7726q = 0;
        if (this.f7720k) {
            C2512h c2512h = this.f7715f;
            if (c2512h == C2512h.f6956c) {
                throw C2508f1.f6944l.m3934h("Can't decode compressed gRPC message as compression not configured").m3930a();
            }
            try {
                C2606b0 c2606b0 = this.f7721l;
                C2657j3 c2657j3 = AbstractC2663k3.f7593a;
                C2651i3 c2651i3 = new C2651i3();
                AbstractC2587b.m4042i(c2606b0, "buffer");
                c2651i3.f7525b = c2606b0;
                InputStream gZIPInputStream = c2651i3;
                switch (c2512h.f6958b) {
                    case 0:
                        break;
                    default:
                        gZIPInputStream = new GZIPInputStream(c2651i3);
                        break;
                }
                c2692p2 = new C2692p2(gZIPInputStream, this.f7712c, c2718t4);
            } catch (IOException e) {
                C2467b.m3833w(e);
                return;
            }
        } else {
            long j11 = this.f7721l.f7287d;
            for (AbstractC2503e abstractC2503e2 : c2718t4.f7794a) {
                abstractC2503e2.mo3903k(j11);
            }
            C2606b0 c2606b1 = this.f7721l;
            C2657j3 c2657j4 = AbstractC2663k3.f7593a;
            C2651i3 c2651i4 = new C2651i3();
            AbstractC2587b.m4042i(c2606b1, "buffer");
            c2651i4.f7525b = c2606b1;
            c2692p2 = c2651i4;
        }
        this.f7721l.getClass();
        this.f7721l = null;
        AbstractC2607b1 abstractC2607b1 = this.f7711b;
        C2686o2 c2686o2 = new C2686o2();
        c2686o2.f7653b = c2692p2;
        abstractC2607b1.f7299j.mo76k(c2686o2);
        this.f7718i = 1;
        this.f7719j = 5;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (isClosed()) {
            return;
        }
        C2606b0 c2606b0 = this.f7721l;
        boolean z9 = c2606b0 != null && c2606b0.f7287d > 0;
        try {
            C2606b0 c2606b1 = this.f7722m;
            if (c2606b1 != null) {
                c2606b1.close();
            }
            C2606b0 c2606b2 = this.f7721l;
            if (c2606b2 != null) {
                c2606b2.close();
            }
            this.f7722m = null;
            this.f7721l = null;
            this.f7711b.mo4120c(z9);
        } catch (Throwable th) {
            this.f7722m = null;
            this.f7721l = null;
            throw th;
        }
    }

    public final boolean isClosed() {
        return this.f7722m == null;
    }

    /* JADX INFO: renamed from: y */
    public final void m4228y() {
        int iMo4107e0 = this.f7721l.mo4107e0();
        if ((iMo4107e0 & TelnetCommand.DONT) != 0) {
            throw C2508f1.f6944l.m3934h("gRPC frame header malformed: reserved bits not zero").m3930a();
        }
        this.f7720k = (iMo4107e0 & 1) != 0;
        C2606b0 c2606b0 = this.f7721l;
        c2606b0.m4129b(4);
        int iMo4107e1 = c2606b0.mo4107e0() | (c2606b0.mo4107e0() << 24) | (c2606b0.mo4107e0() << 16) | (c2606b0.mo4107e0() << 8);
        this.f7719j = iMo4107e1;
        if (iMo4107e1 < 0 || iMo4107e1 > this.f7712c) {
            C2508f1 c2508f1 = C2508f1.f6942j;
            Locale locale = Locale.US;
            throw c2508f1.m3934h("gRPC message exceeds maximum size " + this.f7712c + ": " + iMo4107e1).m3930a();
        }
        int i10 = this.f7725p + 1;
        this.f7725p = i10;
        for (AbstractC2503e abstractC2503e : this.f7713d.f7794a) {
            abstractC2503e.mo3900h(i10);
        }
        C2736w4 c2736w4 = this.f7714e;
        ((InterfaceC2703r1) c2736w4.f7860d).mo4136a();
        ((C2722u2) c2736w4.f7859c).m4245q();
        this.f7718i = 2;
    }
}
