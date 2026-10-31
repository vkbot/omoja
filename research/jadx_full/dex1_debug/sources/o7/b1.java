package o7;

import androidx.core.app.NotificationCompat;
import java.nio.charset.Charset;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class b1 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final n7.t0 f4142u = n7.b0.a(":status", new u2(15));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public q2 f4143a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f4144b = new Object();
    public final w4 c;
    public final q2 d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4145f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4146g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final t4 f4147h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f4148i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public w f4149j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public n7.q f4150k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f4151l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public m0.r0 f4152m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile boolean f4153n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f4154o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f4155p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public n7.f1 f4156q;
    public n7.v0 r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Charset f4157s;
    public boolean t;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b1(int i9, t4 t4Var, w4 w4Var) {
        o4.b.i(w4Var, "transportTracer");
        this.c = w4Var;
        q2 q2Var = new q2(this, i9, t4Var, w4Var);
        this.d = q2Var;
        this.f4143a = q2Var;
        this.f4150k = n7.q.d;
        this.f4151l = false;
        this.f4147h = t4Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Charset d(n7.v0 v0Var) {
        String str = (String) v0Var.c(y0.f4510i);
        if (str != null) {
            String[] strArrSplit = str.split("charset=", 2);
            try {
                return Charset.forName(strArrSplit[strArrSplit.length - 1].trim());
            } catch (Exception unused) {
            }
        }
        return i4.b.f2658b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static n7.f1 i(n7.v0 v0Var) {
        char cCharAt;
        Integer num = (Integer) v0Var.c(f4142u);
        if (num == null) {
            return n7.f1.f3929l.h("Missing HTTP status code");
        }
        String str = (String) v0Var.c(y0.f4510i);
        if (str != null && 16 <= str.length()) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (lowerCase.startsWith("application/grpc") && (lowerCase.length() == 16 || (cCharAt = lowerCase.charAt(16)) == '+' || cCharAt == ';')) {
                return null;
            }
        }
        return y0.g(num.intValue()).b("invalid content-type: " + str);
    }

    public abstract void a(int i9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(n7.f1 f1Var, v vVar, n7.v0 v0Var) {
        if (this.f4148i) {
            return;
        }
        this.f4148i = true;
        t4 t4Var = this.f4147h;
        if (t4Var.f4458b.compareAndSet(false, true)) {
            for (n7.e eVar : t4Var.f4457a) {
                eVar.B(f1Var);
            }
        }
        if (this.c != null) {
            f1Var.f();
        }
        this.f4149j.b(f1Var, vVar, v0Var);
    }

    public abstract void c(boolean z8);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(n7.v0 v0Var) {
        n7.h hVar = n7.h.c;
        o4.b.m(!this.f4154o, "Received headers on closed stream");
        for (n7.e eVar : this.f4147h.f4457a) {
            eVar.g();
        }
        String str = (String) v0Var.c(y0.d);
        if (str != null) {
            n7.p pVar = (n7.p) this.f4150k.f3966a.get(str);
            n7.h hVar2 = pVar != null ? pVar.f3962a : null;
            if (hVar2 == null) {
                ((p7.j) this).m(n7.f1.f3929l.h("Can't find decompressor for ".concat(str)).a());
                return;
            } else if (hVar2 != hVar) {
                q2 q2Var = this.f4143a;
                q2Var.getClass();
                o4.b.m(true, "Already set full stream decompressor");
                q2Var.f4399f = hVar2;
            }
        }
        this.f4149j.l(v0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean f() {
        boolean z8;
        synchronized (this.f4144b) {
            try {
                z8 = this.f4145f && this.e < 32768 && !this.f4146g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Bottom block not found for handler: all -> 0x0059 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(n7.f1 f1Var, v vVar, boolean z8, n7.v0 v0Var) {
        o4.b.i(f1Var, NotificationCompat.CATEGORY_STATUS);
        if (!this.f4154o || z8) {
            this.f4154o = true;
            this.f4155p = f1Var.f();
            synchronized (this.f4144b) {
                try {
                    this.f4146g = true;
                } catch (Throwable th) {
                    th = th;
                    while (true) {
                        throw th;
                    }
                }
            }
            if (this.f4151l) {
                this.f4152m = null;
                b(f1Var, vVar, v0Var);
                return;
            }
            this.f4152m = new m0.r0(1, this, f1Var, vVar, v0Var);
            q2 q2Var = this.f4143a;
            if (z8) {
                q2Var.close();
            } else {
                if (q2Var.isClosed()) {
                    return;
                }
                if (q2Var.f4406m.d == 0) {
                    q2Var.close();
                } else {
                    q2Var.r = true;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(n7.f1 f1Var, boolean z8, n7.v0 v0Var) {
        g(f1Var, v.f4462b, z8, v0Var);
    }
}
