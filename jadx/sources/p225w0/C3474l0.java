package p225w0;

import com.example.navistart.R;
import com.example.navistart.cores.BTProxy;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p047e0.AbstractC1387m;
import p141n.C2455p;
import p164p0.RunnableC2953f;
import p190s1.RunnableC3180x0;
import p258z3.C3720f;

/* JADX INFO: renamed from: w0.l0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3474l0 implements AutoCloseable {

    /* JADX INFO: renamed from: b */
    public final C3720f f10081b;

    /* JADX INFO: renamed from: c */
    public final C2455p f10082c;

    /* JADX INFO: renamed from: d */
    public final ScheduledExecutorService f10083d;

    /* JADX INFO: renamed from: e */
    public final long f10084e;

    /* JADX INFO: renamed from: f */
    public final C3479n0 f10085f;

    /* JADX INFO: renamed from: g */
    public final AtomicInteger f10086g;

    /* JADX INFO: renamed from: h */
    public final AtomicInteger f10087h;

    /* JADX INFO: renamed from: i */
    public volatile boolean f10088i;

    /* JADX INFO: renamed from: j */
    public volatile boolean f10089j;

    /* JADX INFO: renamed from: k */
    public volatile boolean f10090k;

    /* JADX INFO: renamed from: l */
    public String f10091l;

    /* JADX INFO: renamed from: m */
    public C3468j0 f10092m;

    /* JADX INFO: renamed from: n */
    public String f10093n;

    /* JADX INFO: renamed from: o */
    public int f10094o;

    /* JADX INFO: renamed from: p */
    public int f10095p;

    /* JADX INFO: renamed from: q */
    public int f10096q;

    /* JADX INFO: renamed from: r */
    public boolean f10097r;

    /* JADX INFO: renamed from: s */
    public C3497w0 f10098s;

    public C3474l0(C3720f c3720f, C2455p c2455p, ScheduledExecutorService scheduledExecutorService) {
        C3479n0 c3479n0 = new C3479n0();
        c3479n0.f10121a = EnumC3477m0.f10105b;
        List list = Collections.EMPTY_LIST;
        c3479n0.f10122b = list;
        c3479n0.f10124d = list;
        c3479n0.f10125e = "";
        c3479n0.f10126f = "";
        c3479n0.f10127g = "";
        this.f10085f = c3479n0;
        this.f10086g = new AtomicInteger();
        this.f10087h = new AtomicInteger();
        this.f10091l = "";
        this.f10093n = "";
        this.f10096q = -1;
        this.f10081b = c3720f;
        this.f10082c = c2455p;
        this.f10083d = scheduledExecutorService;
        this.f10084e = 10000L;
    }

    /* JADX INFO: renamed from: S */
    public final void m5434S() {
        if (this.f10089j || this.f10090k || this.f10098s != null || this.f10092m != null) {
            return;
        }
        try {
            this.f10081b.getClass();
            String strM5932j = C3720f.m5932j();
            this.f10093n = strM5932j;
            this.f10081b.getClass();
            if (C3720f.m5930c(strM5932j).isEmpty()) {
                return;
            }
            int i10 = this.f10094o + 1;
            this.f10094o = i10;
            int i11 = this.f10087h.get();
            this.f10095p = i11;
            C3720f c3720f = this.f10081b;
            String str = this.f10093n;
            c3720f.getClass();
            C3468j0 c3468j0M5931i = C3720f.m5931i(str);
            this.f10092m = c3468j0M5931i;
            if (c3468j0M5931i == null) {
                m5436b(EnumC3471k0.f10043c, i10, i11);
                return;
            }
            BTProxy bTProxy = c3468j0M5931i.f10030a;
            this.f10097r = false;
            bTProxy.setListener(new C3465i0(this, i10, i11));
            m5443h0(i10, i11, 0);
        } catch (Exception unused) {
            int i12 = this.f10096q;
            m5438c0();
            m5435V(EnumC3471k0.f10043c, i12);
        }
    }

    /* JADX INFO: renamed from: V */
    public final void m5435V(EnumC3471k0 enumC3471k0, int i10) {
        int i11;
        if (m5437c(i10)) {
            this.f10088i = false;
            this.f10096q = -1;
            this.f10085f.m5460c();
            C3498x c3498x = (C3498x) this.f10082c.f6648c;
            c3498x.m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{11, 74, 87, -16, 78, -99, -60, -119, 20, 64, 84, -5, 70}, new byte[]{123, 34, 56, -98, 43, -62, -76, -5}), AbstractC1387m.m2421h(new byte[]{49, -9, 75, 36, -53, 31}, new byte[]{67, -110, 42, 87, -92, 113, -127, 14}), enumC3471k0.name());
            if (enumC3471k0 == EnumC3471k0.f10042b) {
                i11 = R.string.voice_call_unsupported;
            } else {
                i11 = enumC3471k0 == EnumC3471k0.f10044d ? R.string.voice_call_timeout : R.string.voice_call_unavailable;
            }
            C3498x.m5512f(c3498x, c3498x.f10304m.getString(i11));
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m5436b(EnumC3471k0 enumC3471k0, int i10, int i11) {
        if (m5446y(i10, i11)) {
            int i12 = this.f10096q;
            m5438c0();
            m5435V(enumC3471k0, i12);
        }
    }

    /* JADX INFO: renamed from: c */
    public final boolean m5437c(int i10) {
        if (this.f10089j || !this.f10088i || this.f10086g.get() != i10) {
            return false;
        }
        C2455p c2455p = this.f10082c;
        return ((C3498x) c2455p.f6648c).f10274T && !((C3498x) c2455p.f6648c).f10306o;
    }

    /* JADX INFO: renamed from: c0 */
    public final void m5438c0() {
        this.f10094o++;
        this.f10098s = null;
        this.f10097r = false;
        this.f10093n = "";
        C3468j0 c3468j0 = this.f10092m;
        this.f10092m = null;
        if (c3468j0 != null) {
            try {
                RunnableC3180x0 runnableC3180x0 = c3468j0.f10031b;
                try {
                    c3468j0.f10030a.setListener(null);
                } finally {
                    runnableC3180x0.run();
                }
            } catch (Exception unused) {
            }
        }
    }

    @Override // java.lang.AutoCloseable
    public final synchronized void close() {
        if (this.f10089j) {
            return;
        }
        m5444i0();
        this.f10089j = true;
        this.f10087h.incrementAndGet();
        this.f10083d.execute(new RunnableC3453e0(this, 0));
        this.f10083d.shutdown();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0016 A[Catch: all -> 0x0014, TRY_LEAVE, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0003, B:6:0x000b, B:11:0x0016), top: B:16:0x0003 }] */
    /* JADX INFO: renamed from: d0 */
    public final synchronized void m5439d0(String str, boolean z9) {
        if (z9) {
            m5441f0(str);
        } else {
            try {
                if (this.f10091l.isEmpty() || this.f10091l.equalsIgnoreCase(str)) {
                    m5441f0(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: e0 */
    public final synchronized void m5440e0(String str) {
        try {
            if (this.f10089j) {
                return;
            }
            String upperCase = str == null ? "" : str.toUpperCase(Locale.ROOT);
            if (!this.f10090k && !upperCase.isEmpty() && upperCase.equals(this.f10091l)) {
                synchronized (this) {
                    m5442g0(new RunnableC3453e0(this, 2));
                }
                return;
            }
            this.f10091l = upperCase;
            this.f10090k = false;
            int iIncrementAndGet = this.f10087h.incrementAndGet();
            m5444i0();
            m5442g0(new RunnableC3456f0(this, iIncrementAndGet, 1));
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: f0 */
    public final synchronized void m5441f0(String str) {
        if (this.f10089j) {
            return;
        }
        if (str == null || str.isEmpty() || this.f10091l.isEmpty() || this.f10091l.equalsIgnoreCase(str)) {
            this.f10091l = "";
            this.f10090k = true;
            int iIncrementAndGet = this.f10087h.incrementAndGet();
            m5444i0();
            m5442g0(new RunnableC3456f0(this, iIncrementAndGet, 0));
        }
    }

    /* JADX INFO: renamed from: g0 */
    public final synchronized void m5442g0(Runnable runnable) {
        if (!this.f10089j) {
            this.f10083d.execute(runnable);
        }
    }

    /* JADX INFO: renamed from: h0 */
    public final void m5443h0(final int i10, final int i11, final int i12) {
        if (m5446y(i10, i11) && this.f10098s == null) {
            try {
                if (!m5445j0()) {
                    m5436b(EnumC3471k0.f10043c, i10, i11);
                    return;
                }
                boolean zRequestContacts = this.f10092m.f10030a.requestContacts();
                this.f10097r = zRequestContacts;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                ScheduledExecutorService scheduledExecutorService = this.f10083d;
                if (zRequestContacts) {
                    scheduledExecutorService.schedule(new RunnableC2953f(this, i10, i11, 1), this.f10084e, timeUnit);
                } else if (i12 >= 20) {
                    m5436b(EnumC3471k0.f10043c, i10, i11);
                } else {
                    scheduledExecutorService.schedule(new Runnable() { // from class: w0.g0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f9990b.m5443h0(i10, i11, i12 + 1);
                        }
                    }, 500L, timeUnit);
                }
            } catch (Exception unused) {
                m5436b(EnumC3471k0.f10043c, i10, i11);
            }
        }
    }

    /* JADX INFO: renamed from: i0 */
    public final synchronized void m5444i0() {
        this.f10086g.incrementAndGet();
        this.f10088i = false;
        m5442g0(new RunnableC3453e0(this, 1));
    }

    /* JADX INFO: renamed from: j0 */
    public final boolean m5445j0() {
        String str = this.f10093n;
        this.f10081b.getClass();
        return str.equals(C3720f.m5932j());
    }

    /* JADX INFO: renamed from: y */
    public final boolean m5446y(int i10, int i11) {
        return !this.f10089j && !this.f10090k && i10 == this.f10094o && i11 == this.f10087h.get();
    }
}
