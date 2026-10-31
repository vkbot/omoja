package w0;

import com.example.navistart.cores.BTProxy;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l0 implements AutoCloseable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final z3.f f5694b;
    public final n.p c;
    public final ScheduledExecutorService d;
    public final long e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final n0 f5695f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AtomicInteger f5696g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicInteger f5697h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile boolean f5698i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile boolean f5699j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile boolean f5700k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f5701l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public j0 f5702m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f5703n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5704o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5705p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f5706q;
    public boolean r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public w0 f5707s;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l0(z3.f fVar, n.p pVar, ScheduledExecutorService scheduledExecutorService) {
        n0 n0Var = new n0();
        n0Var.f5725a = m0.f5712b;
        List list = Collections.EMPTY_LIST;
        n0Var.f5726b = list;
        n0Var.d = list;
        n0Var.e = "";
        n0Var.f5727f = "";
        n0Var.f5728g = "";
        this.f5695f = n0Var;
        this.f5696g = new AtomicInteger();
        this.f5697h = new AtomicInteger();
        this.f5701l = "";
        this.f5703n = "";
        this.f5706q = -1;
        this.f5694b = fVar;
        this.c = pVar;
        this.d = scheduledExecutorService;
        this.e = 10000L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void S() {
        if (this.f5699j || this.f5700k || this.f5707s != null || this.f5702m != null) {
            return;
        }
        try {
            this.f5694b.getClass();
            String strJ = z3.f.j();
            this.f5703n = strJ;
            this.f5694b.getClass();
            if (z3.f.c(strJ).isEmpty()) {
                return;
            }
            int i9 = this.f5704o + 1;
            this.f5704o = i9;
            int i10 = this.f5697h.get();
            this.f5705p = i10;
            z3.f fVar = this.f5694b;
            String str = this.f5703n;
            fVar.getClass();
            j0 j0VarI = z3.f.i(str);
            this.f5702m = j0VarI;
            if (j0VarI == null) {
                b(k0.c, i9, i10);
                return;
            }
            BTProxy bTProxy = j0VarI.f5662a;
            this.r = false;
            bTProxy.setListener(new i0(this, i9, i10));
            h0(i9, i10, 0);
        } catch (Exception unused) {
            int i11 = this.f5706q;
            c0();
            V(k0.c, i11);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void V(k0 k0Var, int i9) {
        int i10;
        if (c(i9)) {
            this.f5698i = false;
            this.f5706q = -1;
            this.f5695f.c();
            x xVar = (x) this.c.c;
            xVar.r().e(e0.m.h(new byte[]{11, 74, 87, -16, 78, -99, -60, -119, 20, 64, 84, -5, 70}, new byte[]{123, 34, 56, -98, 43, -62, -76, -5}), e0.m.h(new byte[]{49, -9, 75, 36, -53, 31}, new byte[]{67, -110, 42, 87, -92, 113, -127, 14}), k0Var.name());
            if (k0Var == k0.f5670b) {
                i10 = 2131952803;
            } else {
                i10 = k0Var == k0.d ? 2131952800 : 2131952802;
            }
            x.f(xVar, xVar.f5816m.getString(i10));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(k0 k0Var, int i9, int i10) {
        if (y(i9, i10)) {
            int i11 = this.f5706q;
            c0();
            V(k0Var, i11);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean c(int i9) {
        if (this.f5699j || !this.f5698i || this.f5696g.get() != i9) {
            return false;
        }
        n.p pVar = this.c;
        return ((x) pVar.c).T && !((x) pVar.c).f5818o;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c0() {
        this.f5704o++;
        this.f5707s = null;
        this.r = false;
        this.f5703n = "";
        j0 j0Var = this.f5702m;
        this.f5702m = null;
        if (j0Var != null) {
            try {
                s1.x0 x0Var = j0Var.f5663b;
                try {
                    j0Var.f5662a.setListener(null);
                } finally {
                    x0Var.run();
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public final synchronized void close() {
        if (this.f5699j) {
            return;
        }
        i0();
        this.f5699j = true;
        this.f5697h.incrementAndGet();
        this.d.execute(new e0(this, 0));
        this.d.shutdown();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:11:0x0016 A[Catch: all -> 0x0014, TRY_LEAVE, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0003, B:6:0x000b, B:11:0x0016), top: B:16:0x0003 }] */
    public final synchronized void d0(String str, boolean z8) {
        if (z8) {
            f0(str);
        } else {
            try {
                if (this.f5701l.isEmpty() || this.f5701l.equalsIgnoreCase(str)) {
                    f0(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void e0(String str) {
        try {
            if (this.f5699j) {
                return;
            }
            String upperCase = str == null ? "" : str.toUpperCase(Locale.ROOT);
            if (!this.f5700k && !upperCase.isEmpty() && upperCase.equals(this.f5701l)) {
                synchronized (this) {
                    g0(new e0(this, 2));
                }
                return;
            }
            this.f5701l = upperCase;
            this.f5700k = false;
            int iIncrementAndGet = this.f5697h.incrementAndGet();
            i0();
            g0(new f0(this, iIncrementAndGet, 1));
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void f0(String str) {
        if (this.f5699j) {
            return;
        }
        if (str == null || str.isEmpty() || this.f5701l.isEmpty() || this.f5701l.equalsIgnoreCase(str)) {
            this.f5701l = "";
            this.f5700k = true;
            int iIncrementAndGet = this.f5697h.incrementAndGet();
            i0();
            g0(new f0(this, iIncrementAndGet, 0));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void g0(Runnable runnable) {
        if (!this.f5699j) {
            this.d.execute(runnable);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h0(int i9, int i10, int i11) {
        if (y(i9, i10) && this.f5707s == null) {
            try {
                if (!j0()) {
                    b(k0.c, i9, i10);
                    return;
                }
                boolean zRequestContacts = this.f5702m.f5662a.requestContacts();
                this.r = zRequestContacts;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                ScheduledExecutorService scheduledExecutorService = this.d;
                if (zRequestContacts) {
                    scheduledExecutorService.schedule(new p0.f(this, i9, i10, 1), this.e, timeUnit);
                } else if (i11 >= 20) {
                    b(k0.c, i9, i10);
                } else {
                    scheduledExecutorService.schedule(new g0(this, i9, i10, i11), 500L, timeUnit);
                }
            } catch (Exception unused) {
                b(k0.c, i9, i10);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void i0() {
        this.f5696g.incrementAndGet();
        this.f5698i = false;
        g0(new e0(this, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean j0() {
        String str = this.f5703n;
        this.f5694b.getClass();
        return str.equals(z3.f.j());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean y(int i9, int i10) {
        return !this.f5699j && !this.f5700k && i9 == this.f5704o && i10 == this.f5697h.get();
    }
}
