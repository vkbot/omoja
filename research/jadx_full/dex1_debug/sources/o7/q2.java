package o7;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import java.util.zip.GZIPInputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class q2 implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public b1 f4398b;
    public int c;
    public final t4 d;
    public final w4 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public n7.h f4399f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte[] f4400g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4401h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4402i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4403j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f4404k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public b0 f4405l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public b0 f4406m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f4407n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f4408o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f4409p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f4410q;
    public boolean r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public volatile boolean f4411s;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public q2(b1 b1Var, int i9, t4 t4Var, w4 w4Var) {
        n7.h hVar = n7.h.c;
        this.f4402i = 1;
        this.f4403j = 5;
        this.f4406m = new b0();
        this.f4408o = false;
        this.f4409p = -1;
        this.r = false;
        this.f4411s = false;
        this.f4398b = b1Var;
        this.f4399f = hVar;
        this.c = i9;
        this.d = t4Var;
        o4.b.i(w4Var, "transportTracer");
        this.e = w4Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0057, code lost:
    
        if (r8.f4402i == 2) goto L17;
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean S() throws Throwable {
        t4 t4Var = this.d;
        int i9 = 0;
        z = false;
        z = false;
        boolean z8 = false;
        try {
            if (this.f4405l == null) {
                this.f4405l = new b0();
            }
            int i10 = 0;
            while (true) {
                try {
                    int i11 = this.f4403j - this.f4405l.d;
                    if (i11 <= 0) {
                        z8 = true;
                        if (i10 > 0) {
                            this.f4398b.a(i10);
                        }
                        return true;
                    }
                    int i12 = this.f4406m.d;
                    if (i12 == 0) {
                        if (i10 > 0) {
                            this.f4398b.a(i10);
                            if (this.f4402i == 2) {
                                break;
                            }
                        }
                        return z8;
                    }
                    int iMin = Math.min(i11, i12);
                    i10 += iMin;
                    this.f4405l.i0(this.f4406m.S(iMin));
                } catch (Throwable th) {
                    int i13 = i10;
                    th = th;
                    i9 = i13;
                    if (i9 > 0) {
                        this.f4398b.a(i9);
                        if (this.f4402i == 2) {
                            t4Var.a(i9);
                            this.f4410q += i9;
                        }
                    }
                    throw th;
                }
            }
            t4Var.a(i10);
            this.f4410q += i10;
            return z8;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        String str;
        if (this.f4408o) {
            return;
        }
        boolean z8 = true;
        this.f4408o = true;
        while (!this.f4411s && this.f4407n > 0 && S()) {
            try {
                int iC = com.bumptech.glide.g.c(this.f4402i);
                if (iC == 0) {
                    y();
                } else {
                    if (iC != 1) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Invalid state: ");
                        int i9 = this.f4402i;
                        if (i9 != 1) {
                            str = i9 != 2 ? "null" : "BODY";
                        } else {
                            str = "HEADER";
                        }
                        sb.append(str);
                        throw new AssertionError(sb.toString());
                    }
                    c();
                    this.f4407n--;
                }
            } catch (Throwable th) {
                this.f4408o = false;
                throw th;
            }
        }
        if (this.f4411s) {
            close();
            this.f4408o = false;
            return;
        }
        if (this.r) {
            if (this.f4406m.d != 0) {
                z8 = false;
            }
            if (z8) {
                close();
            }
        }
        this.f4408o = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        InputStream p2Var;
        int i9 = this.f4409p;
        long j9 = this.f4410q;
        t4 t4Var = this.d;
        for (n7.e eVar : t4Var.f4457a) {
            eVar.i(i9, j9);
        }
        this.f4410q = 0;
        if (this.f4404k) {
            n7.h hVar = this.f4399f;
            if (hVar == n7.h.c) {
                throw n7.f1.f3929l.h("Can't decode compressed gRPC message as compression not configured").a();
            }
            try {
                b0 b0Var = this.f4405l;
                j3 j3Var = k3.f4325a;
                i3 i3Var = new i3();
                o4.b.i(b0Var, "buffer");
                i3Var.f4281b = b0Var;
                InputStream gZIPInputStream = i3Var;
                switch (hVar.f3938b) {
                    case 0:
                        break;
                    default:
                        gZIPInputStream = new GZIPInputStream(i3Var);
                        break;
                }
                p2Var = new p2(gZIPInputStream, this.c, t4Var);
            } catch (IOException e) {
                n0.b.w(e);
                return;
            }
        } else {
            long j10 = this.f4405l.d;
            for (n7.e eVar2 : t4Var.f4457a) {
                eVar2.k(j10);
            }
            b0 b0Var2 = this.f4405l;
            j3 j3Var2 = k3.f4325a;
            i3 i3Var2 = new i3();
            o4.b.i(b0Var2, "buffer");
            i3Var2.f4281b = b0Var2;
            p2Var = i3Var2;
        }
        this.f4405l.getClass();
        this.f4405l = null;
        b1 b1Var = this.f4398b;
        o2 o2Var = new o2();
        o2Var.f4360b = p2Var;
        b1Var.f4149j.k(o2Var);
        this.f4402i = 1;
        this.f4403j = 5;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (isClosed()) {
            return;
        }
        b0 b0Var = this.f4405l;
        boolean z8 = b0Var != null && b0Var.d > 0;
        try {
            b0 b0Var2 = this.f4406m;
            if (b0Var2 != null) {
                b0Var2.close();
            }
            b0 b0Var3 = this.f4405l;
            if (b0Var3 != null) {
                b0Var3.close();
            }
            this.f4406m = null;
            this.f4405l = null;
            this.f4398b.c(z8);
        } catch (Throwable th) {
            this.f4406m = null;
            this.f4405l = null;
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean isClosed() {
        return this.f4406m == null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y() {
        int iE0 = this.f4405l.e0();
        if ((iE0 & 254) != 0) {
            throw n7.f1.f3929l.h("gRPC frame header malformed: reserved bits not zero").a();
        }
        this.f4404k = (iE0 & 1) != 0;
        b0 b0Var = this.f4405l;
        b0Var.b(4);
        int iE1 = b0Var.e0() | (b0Var.e0() << 24) | (b0Var.e0() << 16) | (b0Var.e0() << 8);
        this.f4403j = iE1;
        if (iE1 < 0 || iE1 > this.c) {
            n7.f1 f1Var = n7.f1.f3927j;
            Locale locale = Locale.US;
            throw f1Var.h("gRPC message exceeds maximum size " + this.c + ": " + iE1).a();
        }
        int i9 = this.f4409p + 1;
        this.f4409p = i9;
        for (n7.e eVar : this.d.f4457a) {
            eVar.h(i9);
        }
        w4 w4Var = this.e;
        ((r1) w4Var.d).a();
        ((u2) w4Var.c).q();
        this.f4402i = 2;
    }
}
