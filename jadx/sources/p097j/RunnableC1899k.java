package p097j;

import ai.onnxruntime.AbstractC0074a;
import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools;
import com.bumptech.glide.AbstractC1034g;
import com.bumptech.glide.C1032e;
import com.bumptech.glide.EnumC1035h;
import com.bumptech.glide.load.data.InterfaceC1044e;
import com.bumptech.glide.load.data.InterfaceC1046g;
import com.google.protobuf.AbstractC1178q;
import java.util.ArrayList;
import java.util.Collections;
import p006a5.C0023h;
import p025c0.AbstractC0941j;
import p025c0.C0934c;
import p025c0.C0939h;
import p037d0.C1236d;
import p037d0.C1240h;
import p037d0.InterfaceC1237e;
import p077h.C1645g;
import p077h.C1646h;
import p077h.InterfaceC1643e;
import p077h.InterfaceC1649k;
import p099j1.C1929i;
import p165p2.C2962e;
import p172q.C3027q;

/* JADX INFO: renamed from: j.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC1899k implements InterfaceC1892f, Runnable, Comparable, InterfaceC1237e {

    /* JADX INFO: renamed from: A */
    public volatile boolean f4934A;

    /* JADX INFO: renamed from: B */
    public volatile boolean f4935B;

    /* JADX INFO: renamed from: C */
    public boolean f4936C;

    /* JADX INFO: renamed from: D */
    public int f4937D;

    /* JADX INFO: renamed from: E */
    public int f4938E;

    /* JADX INFO: renamed from: F */
    public int f4939F;

    /* JADX INFO: renamed from: e */
    public final C0939h f4943e;

    /* JADX INFO: renamed from: f */
    public final Pools.Pool f4944f;

    /* JADX INFO: renamed from: i */
    public C1032e f4947i;

    /* JADX INFO: renamed from: j */
    public InterfaceC1643e f4948j;

    /* JADX INFO: renamed from: k */
    public EnumC1035h f4949k;

    /* JADX INFO: renamed from: l */
    public C1911w f4950l;

    /* JADX INFO: renamed from: m */
    public int f4951m;

    /* JADX INFO: renamed from: n */
    public int f4952n;

    /* JADX INFO: renamed from: o */
    public C1901m f4953o;

    /* JADX INFO: renamed from: p */
    public C1646h f4954p;

    /* JADX INFO: renamed from: q */
    public C1910v f4955q;

    /* JADX INFO: renamed from: r */
    public int f4956r;

    /* JADX INFO: renamed from: s */
    public long f4957s;

    /* JADX INFO: renamed from: t */
    public Object f4958t;

    /* JADX INFO: renamed from: u */
    public Thread f4959u;

    /* JADX INFO: renamed from: v */
    public InterfaceC1643e f4960v;

    /* JADX INFO: renamed from: w */
    public InterfaceC1643e f4961w;

    /* JADX INFO: renamed from: x */
    public Object f4962x;

    /* JADX INFO: renamed from: y */
    public InterfaceC1044e f4963y;

    /* JADX INFO: renamed from: z */
    public volatile InterfaceC1894g f4964z;

    /* JADX INFO: renamed from: b */
    public final C1896h f4940b = new C1896h();

    /* JADX INFO: renamed from: c */
    public final ArrayList f4941c = new ArrayList();

    /* JADX INFO: renamed from: d */
    public final C1240h f4942d = new C1240h();

    /* JADX INFO: renamed from: g */
    public final C0023h f4945g = new C0023h(13);

    /* JADX INFO: renamed from: h */
    public final C1898j f4946h = new C1898j();

    public RunnableC1899k(C0939h c0939h, C1236d c1236d) {
        this.f4943e = c0939h;
        this.f4944f = c1236d;
    }

    @Override // p097j.InterfaceC1892f
    /* JADX INFO: renamed from: a */
    public final void mo2935a(InterfaceC1643e interfaceC1643e, Object obj, InterfaceC1044e interfaceC1044e, int i10, InterfaceC1643e interfaceC1643e2) {
        this.f4960v = interfaceC1643e;
        this.f4962x = obj;
        this.f4963y = interfaceC1044e;
        this.f4939F = i10;
        this.f4961w = interfaceC1643e2;
        this.f4936C = interfaceC1643e != this.f4940b.m2938a().get(0);
        if (Thread.currentThread() != this.f4959u) {
            m2954l(3);
        } else {
            m2948f();
        }
    }

    @Override // p097j.InterfaceC1892f
    /* JADX INFO: renamed from: b */
    public final void mo2936b(InterfaceC1643e interfaceC1643e, Exception exc, InterfaceC1044e interfaceC1044e, int i10) {
        interfaceC1044e.mo1321b();
        C1914z c1914z = new C1914z("Fetching data failed", Collections.singletonList(exc));
        Class clsMo1316a = interfaceC1044e.mo1316a();
        c1914z.f5042c = interfaceC1643e;
        c1914z.f5043d = i10;
        c1914z.f5044e = clsMo1316a;
        this.f4941c.add(c1914z);
        if (Thread.currentThread() != this.f4959u) {
            m2954l(2);
        } else {
            m2955m();
        }
    }

    @Override // p037d0.InterfaceC1237e
    /* JADX INFO: renamed from: c */
    public final C1240h mo2222c() {
        return this.f4942d;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        RunnableC1899k runnableC1899k = (RunnableC1899k) obj;
        int iOrdinal = this.f4949k.ordinal() - runnableC1899k.f4949k.ordinal();
        return iOrdinal == 0 ? this.f4956r - runnableC1899k.f4956r : iOrdinal;
    }

    /* JADX INFO: renamed from: d */
    public final InterfaceC1889d0 m2946d(InterfaceC1044e interfaceC1044e, Object obj, int i10) {
        if (obj == null) {
            interfaceC1044e.mo1321b();
            return null;
        }
        try {
            int i11 = AbstractC0941j.f799b;
            long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            InterfaceC1889d0 interfaceC1889d0M2947e = m2947e(i10, obj);
            if (Log.isLoggable("DecodeJob", 2)) {
                m2951i(jElapsedRealtimeNanos, "Decoded result " + interfaceC1889d0M2947e, null);
            }
            return interfaceC1889d0M2947e;
        } finally {
            interfaceC1044e.mo1321b();
        }
    }

    /* JADX INFO: renamed from: e */
    public final InterfaceC1889d0 m2947e(int i10, Object obj) {
        Class<?> cls = obj.getClass();
        C1896h c1896h = this.f4940b;
        C1885b0 c1885b0M2940c = c1896h.m2940c(cls);
        C1646h c1646h = this.f4954p;
        if (Build.VERSION.SDK_INT >= 26) {
            boolean z9 = i10 == 4 || c1896h.f4928r;
            C1645g c1645g = C3027q.f8492i;
            Boolean bool = (Boolean) c1646h.m2729c(c1645g);
            if (bool == null || (bool.booleanValue() && !z9)) {
                c1646h = new C1646h();
                C0934c c0934c = this.f4954p.f4182b;
                C0934c c0934c2 = c1646h.f4182b;
                c0934c2.putAll((SimpleArrayMap) c0934c);
                c0934c2.put(c1645g, Boolean.valueOf(z9));
            }
        }
        C1646h c1646h2 = c1646h;
        InterfaceC1046g interfaceC1046gM1304g = this.f4947i.m1293a().m1304g(obj);
        try {
            return c1885b0M2940c.m2930a(this.f4951m, this.f4952n, interfaceC1046gM1304g, c1646h2, new C1897i(this, i10));
        } finally {
            interfaceC1046gM1304g.mo1327b();
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m2948f() {
        InterfaceC1889d0 interfaceC1889d0M2946d;
        boolean zM2945a;
        if (Log.isLoggable("DecodeJob", 2)) {
            m2951i(this.f4957s, "Retrieved data", "data: " + this.f4962x + ", cache key: " + this.f4960v + ", fetcher: " + this.f4963y);
        }
        C1887c0 c1887c0 = null;
        try {
            interfaceC1889d0M2946d = m2946d(this.f4963y, this.f4962x, this.f4939F);
        } catch (C1914z e) {
            InterfaceC1643e interfaceC1643e = this.f4961w;
            int i10 = this.f4939F;
            e.f5042c = interfaceC1643e;
            e.f5043d = i10;
            e.f5044e = null;
            this.f4941c.add(e);
            interfaceC1889d0M2946d = null;
        }
        if (interfaceC1889d0M2946d == null) {
            m2955m();
            return;
        }
        int i11 = this.f4939F;
        if (interfaceC1889d0M2946d instanceof InterfaceC1883a0) {
            ((InterfaceC1883a0) interfaceC1889d0M2946d).mo2929a();
        }
        if (((C1887c0) this.f4945g.f83e) != null) {
            c1887c0 = (C1887c0) C1887c0.f4869f.acquire();
            c1887c0.f4873e = false;
            c1887c0.f4872d = true;
            c1887c0.f4871c = interfaceC1889d0M2946d;
            interfaceC1889d0M2946d = c1887c0;
        }
        m2957o();
        C1910v c1910v = this.f4955q;
        synchronized (c1910v) {
            c1910v.f5014o = interfaceC1889d0M2946d;
            c1910v.f5015p = i11;
        }
        synchronized (c1910v) {
            try {
                c1910v.f5002c.m2224a();
                if (c1910v.f5021v) {
                    c1910v.f5014o.recycle();
                    c1910v.m2972f();
                } else {
                    if (c1910v.f5001b.f4999b.isEmpty()) {
                        throw new IllegalStateException("Received a resource without any callbacks to notify");
                    }
                    if (c1910v.f5016q) {
                        throw new IllegalStateException("Already have resource");
                    }
                    C2962e c2962e = c1910v.f5005f;
                    InterfaceC1889d0 interfaceC1889d0 = c1910v.f5014o;
                    boolean z9 = c1910v.f5012m;
                    C1911w c1911w = c1910v.f5011l;
                    C1906r c1906r = c1910v.f5003d;
                    c2962e.getClass();
                    c1910v.f5019t = new C1912x(interfaceC1889d0, z9, true, c1911w, c1906r);
                    c1910v.f5016q = true;
                    C1909u c1909u = c1910v.f5001b;
                    c1909u.getClass();
                    ArrayList arrayList = new ArrayList(c1909u.f4999b);
                    c1910v.m2970d(arrayList.size() + 1);
                    c1910v.f5006g.m2965d(c1910v, c1910v.f5011l, c1910v.f5019t);
                    int size = arrayList.size();
                    int i12 = 0;
                    while (i12 < size) {
                        Object obj = arrayList.get(i12);
                        i12++;
                        C1908t c1908t = (C1908t) obj;
                        c1908t.f4998b.execute(new RunnableC1907s(c1910v, c1908t.f4997a, 1));
                    }
                    c1910v.m2969b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f4937D = 5;
        try {
            C0023h c0023h = this.f4945g;
            if (((C1887c0) c0023h.f83e) != null) {
                try {
                    this.f4943e.m1073a().mo3454b((InterfaceC1643e) c0023h.f81c, new C0023h((InterfaceC1649k) c0023h.f82d, (C1887c0) c0023h.f83e, this.f4954p, 12));
                    ((C1887c0) c0023h.f83e).m2931a();
                } catch (Throwable th2) {
                    ((C1887c0) c0023h.f83e).m2931a();
                    throw th2;
                }
            }
            if (c1887c0 != null) {
                c1887c0.m2931a();
            }
            C1898j c1898j = this.f4946h;
            synchronized (c1898j) {
                c1898j.f4932b = true;
                zM2945a = c1898j.m2945a();
            }
            if (zM2945a) {
                m2953k();
            }
        } catch (Throwable th3) {
            if (c1887c0 != null) {
                c1887c0.m2931a();
            }
            throw th3;
        }
    }

    /* JADX INFO: renamed from: g */
    public final InterfaceC1894g m2949g() {
        int iM1296c = AbstractC1034g.m1296c(this.f4937D);
        C1896h c1896h = this.f4940b;
        if (iM1296c == 1) {
            return new C1891e0(c1896h, this);
        }
        if (iM1296c == 2) {
            return new C1888d(c1896h.m2938a(), c1896h, this);
        }
        if (iM1296c == 3) {
            return new C1895g0(c1896h, this);
        }
        if (iM1296c == 5) {
            return null;
        }
        C1929i.m3030l("Unrecognized stage: ".concat(AbstractC1178q.m2092z(this.f4937D)));
        return null;
    }

    /* JADX INFO: renamed from: h */
    public final int m2950h(int i10) {
        boolean z9;
        boolean z10;
        int iM1296c = AbstractC1034g.m1296c(i10);
        if (iM1296c == 0) {
            switch (this.f4953o.f4973a) {
                case 0:
                case 1:
                    z9 = false;
                    break;
                default:
                    z9 = true;
                    break;
            }
            if (z9) {
                return 2;
            }
            return m2950h(2);
        }
        if (iM1296c != 1) {
            if (iM1296c == 2) {
                return 4;
            }
            if (iM1296c == 3 || iM1296c == 5) {
                return 6;
            }
            C1929i.m3029k("Unrecognized stage: ".concat(AbstractC1178q.m2092z(i10)));
            return 0;
        }
        switch (this.f4953o.f4973a) {
            case 0:
                z10 = false;
                break;
            case 1:
            default:
                z10 = true;
                break;
        }
        if (z10) {
            return 3;
        }
        return m2950h(3);
    }

    /* JADX INFO: renamed from: i */
    public final void m2951i(long j10, String str, String str2) {
        StringBuilder sbM172w = AbstractC0074a.m172w(str, " in ");
        sbM172w.append(AbstractC0941j.m1076a(j10));
        sbM172w.append(", load key: ");
        sbM172w.append(this.f4950l);
        sbM172w.append(str2 != null ? ", ".concat(str2) : "");
        sbM172w.append(", thread: ");
        sbM172w.append(Thread.currentThread().getName());
        Log.v("DecodeJob", sbM172w.toString());
    }

    /* JADX INFO: renamed from: j */
    public final void m2952j() {
        boolean zM2945a;
        m2957o();
        C1914z c1914z = new C1914z("Failed to load resource", new ArrayList(this.f4941c));
        C1910v c1910v = this.f4955q;
        synchronized (c1910v) {
            c1910v.f5017r = c1914z;
        }
        synchronized (c1910v) {
            try {
                c1910v.f5002c.m2224a();
                if (c1910v.f5021v) {
                    c1910v.m2972f();
                } else {
                    if (c1910v.f5001b.f4999b.isEmpty()) {
                        throw new IllegalStateException("Received an exception without any callbacks to notify");
                    }
                    if (c1910v.f5018s) {
                        throw new IllegalStateException("Already failed once");
                    }
                    c1910v.f5018s = true;
                    C1911w c1911w = c1910v.f5011l;
                    C1909u c1909u = c1910v.f5001b;
                    c1909u.getClass();
                    ArrayList arrayList = new ArrayList(c1909u.f4999b);
                    c1910v.m2970d(arrayList.size() + 1);
                    c1910v.f5006g.m2965d(c1910v, c1911w, null);
                    int size = arrayList.size();
                    int i10 = 0;
                    while (i10 < size) {
                        Object obj = arrayList.get(i10);
                        i10++;
                        C1908t c1908t = (C1908t) obj;
                        c1908t.f4998b.execute(new RunnableC1907s(c1910v, c1908t.f4997a, 0));
                    }
                    c1910v.m2969b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        C1898j c1898j = this.f4946h;
        synchronized (c1898j) {
            c1898j.f4933c = true;
            zM2945a = c1898j.m2945a();
        }
        if (zM2945a) {
            m2953k();
        }
    }

    /* JADX INFO: renamed from: k */
    public final void m2953k() {
        C1898j c1898j = this.f4946h;
        synchronized (c1898j) {
            c1898j.f4932b = false;
            c1898j.f4931a = false;
            c1898j.f4933c = false;
        }
        C0023h c0023h = this.f4945g;
        c0023h.f81c = null;
        c0023h.f82d = null;
        c0023h.f83e = null;
        C1896h c1896h = this.f4940b;
        c1896h.f4913c = null;
        c1896h.f4914d = null;
        c1896h.f4924n = null;
        c1896h.f4917g = null;
        c1896h.f4921k = null;
        c1896h.f4919i = null;
        c1896h.f4925o = null;
        c1896h.f4920j = null;
        c1896h.f4926p = null;
        c1896h.f4911a.clear();
        c1896h.f4922l = false;
        c1896h.f4912b.clear();
        c1896h.f4923m = false;
        this.f4934A = false;
        this.f4947i = null;
        this.f4948j = null;
        this.f4954p = null;
        this.f4949k = null;
        this.f4950l = null;
        this.f4955q = null;
        this.f4937D = 0;
        this.f4964z = null;
        this.f4959u = null;
        this.f4960v = null;
        this.f4962x = null;
        this.f4939F = 0;
        this.f4963y = null;
        this.f4957s = 0L;
        this.f4935B = false;
        this.f4958t = null;
        this.f4941c.clear();
        this.f4944f.release(this);
    }

    /* JADX INFO: renamed from: l */
    public final void m2954l(int i10) {
        this.f4938E = i10;
        C1910v c1910v = this.f4955q;
        (c1910v.f5013n ? c1910v.f5009j : c1910v.f5008i).execute(this);
    }

    /* JADX INFO: renamed from: m */
    public final void m2955m() {
        this.f4959u = Thread.currentThread();
        int i10 = AbstractC0941j.f799b;
        this.f4957s = SystemClock.elapsedRealtimeNanos();
        boolean zMo2934c = false;
        while (!this.f4935B && this.f4964z != null && !(zMo2934c = this.f4964z.mo2934c())) {
            this.f4937D = m2950h(this.f4937D);
            this.f4964z = m2949g();
            if (this.f4937D == 4) {
                m2954l(2);
                return;
            }
        }
        if ((this.f4937D == 6 || this.f4935B) && !zMo2934c) {
            m2952j();
        }
    }

    /* JADX INFO: renamed from: n */
    public final void m2956n() {
        String str;
        int iM1296c = AbstractC1034g.m1296c(this.f4938E);
        if (iM1296c == 0) {
            this.f4937D = m2950h(1);
            this.f4964z = m2949g();
            m2955m();
        } else {
            if (iM1296c == 1) {
                m2955m();
                return;
            }
            if (iM1296c == 2) {
                m2948f();
                return;
            }
            int i10 = this.f4938E;
            if (i10 == 1) {
                str = "INITIALIZE";
            } else if (i10 != 2) {
                str = i10 != 3 ? "null" : "DECODE_DATA";
            } else {
                str = "SWITCH_TO_SOURCE_SERVICE";
            }
            C1929i.m3030l("Unrecognized run reason: ".concat(str));
        }
    }

    /* JADX INFO: renamed from: o */
    public final void m2957o() {
        Throwable th;
        this.f4942d.m2224a();
        if (!this.f4934A) {
            this.f4934A = true;
            return;
        }
        if (this.f4941c.isEmpty()) {
            th = null;
        } else {
            ArrayList arrayList = this.f4941c;
            th = (Throwable) arrayList.get(arrayList.size() - 1);
        }
        throw new IllegalStateException("Already notified", th);
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC1044e interfaceC1044e = this.f4963y;
        try {
            try {
                if (this.f4935B) {
                    m2952j();
                    if (interfaceC1044e != null) {
                        interfaceC1044e.mo1321b();
                        return;
                    }
                    return;
                }
                m2956n();
                if (interfaceC1044e != null) {
                    interfaceC1044e.mo1321b();
                }
            } catch (C1886c e) {
                throw e;
            } catch (Throwable th) {
                if (Log.isLoggable("DecodeJob", 3)) {
                    Log.d("DecodeJob", "DecodeJob threw unexpectedly, isCancelled: " + this.f4935B + ", stage: " + AbstractC1178q.m2092z(this.f4937D), th);
                }
                if (this.f4937D != 5) {
                    this.f4941c.add(th);
                    m2952j();
                }
                if (!this.f4935B) {
                    throw th;
                }
                throw th;
            }
        } catch (Throwable th2) {
            if (interfaceC1044e != null) {
                interfaceC1044e.mo1321b();
            }
            throw th2;
        }
    }
}
