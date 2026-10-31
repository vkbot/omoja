package j;

import android.os.Build$VERSION;
import android.os.SystemClock;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools$Pool;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k implements f, Runnable, Comparable, d0.e {
    public volatile boolean A;
    public volatile boolean B;
    public boolean C;
    public int D;
    public int E;
    public int F;
    public final c0.h e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Pools$Pool f2797f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.bumptech.glide.e f2800i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public h.e f2801j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public com.bumptech.glide.h f2802k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public w f2803l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2804m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2805n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public m f2806o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public h.h f2807p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public v f2808q;
    public int r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f2809s;
    public Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Thread f2810u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public h.e f2811v;
    public h.e w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Object f2812x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public com.bumptech.glide.load.data.e f2813y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public volatile g f2814z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h f2796b = new h();
    public final ArrayList c = new ArrayList();
    public final d0.h d = new d0.h();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final a5.h f2798g = new a5.h(13);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final j f2799h = new j();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k(c0.h hVar, d0.d dVar) {
        this.e = hVar;
        this.f2797f = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.f
    public final void a(h.e eVar, Object obj, com.bumptech.glide.load.data.e eVar2, int i9, h.e eVar3) {
        this.f2811v = eVar;
        this.f2812x = obj;
        this.f2813y = eVar2;
        this.F = i9;
        this.w = eVar3;
        this.C = eVar != this.f2796b.a().get(0);
        if (Thread.currentThread() != this.f2810u) {
            l(3);
        } else {
            f();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.f
    public final void b(h.e eVar, Exception exc, com.bumptech.glide.load.data.e eVar2, int i9) {
        eVar2.b();
        z zVar = new z("Fetching data failed", Collections.singletonList(exc));
        Class clsA = eVar2.a();
        zVar.c = eVar;
        zVar.d = i9;
        zVar.e = clsA;
        this.c.add(zVar);
        if (Thread.currentThread() != this.f2810u) {
            l(2);
        } else {
            m();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // d0.e
    public final d0.h c() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        k kVar = (k) obj;
        int iOrdinal = this.f2802k.ordinal() - kVar.f2802k.ordinal();
        return iOrdinal == 0 ? this.r - kVar.r : iOrdinal;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final d0 d(com.bumptech.glide.load.data.e eVar, Object obj, int i9) {
        if (obj == null) {
            eVar.b();
            return null;
        }
        try {
            int i10 = c0.j.f402b;
            long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            d0 d0VarE = e(i9, obj);
            if (Log.isLoggable("DecodeJob", 2)) {
                i(jElapsedRealtimeNanos, "Decoded result " + d0VarE, null);
            }
            return d0VarE;
        } finally {
            eVar.b();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final d0 e(int i9, Object obj) {
        Class<?> cls = obj.getClass();
        h hVar = this.f2796b;
        b0 b0VarC = hVar.c(cls);
        h.h hVar2 = this.f2807p;
        if (Build$VERSION.SDK_INT >= 26) {
            boolean z8 = i9 == 4 || hVar.r;
            h.g gVar = q.q.f4735i;
            Boolean bool = (Boolean) hVar2.c(gVar);
            if (bool == null || (bool.booleanValue() && !z8)) {
                hVar2 = new h.h();
                c0.c cVar = this.f2807p.f2412b;
                c0.c cVar2 = hVar2.f2412b;
                cVar2.putAll((SimpleArrayMap) cVar);
                cVar2.put(gVar, Boolean.valueOf(z8));
            }
        }
        h.h hVar3 = hVar2;
        com.bumptech.glide.load.data.g gVarG = this.f2800i.a().g(obj);
        try {
            return b0VarC.a(this.f2804m, this.f2805n, gVarG, hVar3, new i(this, i9));
        } finally {
            gVarG.b();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f() {
        d0 d0VarD;
        boolean zA;
        if (Log.isLoggable("DecodeJob", 2)) {
            i(this.f2809s, "Retrieved data", "data: " + this.f2812x + ", cache key: " + this.f2811v + ", fetcher: " + this.f2813y);
        }
        c0 c0Var = null;
        try {
            d0VarD = d(this.f2813y, this.f2812x, this.F);
        } catch (z e) {
            h.e eVar = this.w;
            int i9 = this.F;
            e.c = eVar;
            e.d = i9;
            e.e = null;
            this.c.add(e);
            d0VarD = null;
        }
        if (d0VarD == null) {
            m();
            return;
        }
        int i10 = this.F;
        if (d0VarD instanceof a0) {
            ((a0) d0VarD).a();
        }
        if (((c0) this.f2798g.e) != null) {
            c0Var = (c0) c0.f2753f.acquire();
            c0Var.e = false;
            c0Var.d = true;
            c0Var.c = d0VarD;
            d0VarD = c0Var;
        }
        o();
        v vVar = this.f2808q;
        synchronized (vVar) {
            vVar.f2846o = d0VarD;
            vVar.f2847p = i10;
        }
        synchronized (vVar) {
            try {
                vVar.c.a();
                if (vVar.f2851v) {
                    vVar.f2846o.recycle();
                    vVar.f();
                } else {
                    if (vVar.f2836b.f2835b.isEmpty()) {
                        throw new IllegalStateException("Received a resource without any callbacks to notify");
                    }
                    if (vVar.f2848q) {
                        throw new IllegalStateException("Already have resource");
                    }
                    p2.e eVar2 = vVar.f2837f;
                    d0 d0Var = vVar.f2846o;
                    boolean z8 = vVar.f2844m;
                    w wVar = vVar.f2843l;
                    r rVar = vVar.d;
                    eVar2.getClass();
                    vVar.t = new x(d0Var, z8, true, wVar, rVar);
                    vVar.f2848q = true;
                    u uVar = vVar.f2836b;
                    uVar.getClass();
                    ArrayList arrayList = new ArrayList(uVar.f2835b);
                    vVar.d(arrayList.size() + 1);
                    vVar.f2838g.d(vVar, vVar.f2843l, vVar.t);
                    int size = arrayList.size();
                    int i11 = 0;
                    while (i11 < size) {
                        Object obj = arrayList.get(i11);
                        i11++;
                        t tVar = (t) obj;
                        tVar.f2834b.execute(new s(vVar, tVar.f2833a, 1));
                    }
                    vVar.b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.D = 5;
        try {
            a5.h hVar = this.f2798g;
            if (((c0) hVar.e) != null) {
                try {
                    this.e.a().b((h.e) hVar.c, new a5.h((h.k) hVar.d, (c0) hVar.e, this.f2807p, 12));
                    ((c0) hVar.e).a();
                } catch (Throwable th2) {
                    ((c0) hVar.e).a();
                    throw th2;
                }
            }
            if (c0Var != null) {
                c0Var.a();
            }
            j jVar = this.f2799h;
            synchronized (jVar) {
                jVar.f2795b = true;
                zA = jVar.a();
            }
            if (zA) {
                k();
            }
        } catch (Throwable th3) {
            if (c0Var != null) {
                c0Var.a();
            }
            throw th3;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final g g() {
        int iC = com.bumptech.glide.g.c(this.D);
        h hVar = this.f2796b;
        if (iC == 1) {
            return new e0(hVar, this);
        }
        if (iC == 2) {
            return new d(hVar.a(), hVar, this);
        }
        if (iC == 3) {
            return new g0(hVar, this);
        }
        if (iC == 5) {
            return null;
        }
        j1.i.l("Unrecognized stage: ".concat(com.google.protobuf.q.z(this.D)));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int h(int i9) {
        boolean z8;
        boolean z9;
        int iC = com.bumptech.glide.g.c(i9);
        if (iC == 0) {
            switch (this.f2806o.f2818a) {
                case 0:
                case 1:
                    z8 = false;
                    break;
                default:
                    z8 = true;
                    break;
            }
            if (z8) {
                return 2;
            }
            return h(2);
        }
        if (iC != 1) {
            if (iC == 2) {
                return 4;
            }
            if (iC == 3 || iC == 5) {
                return 6;
            }
            j1.i.k("Unrecognized stage: ".concat(com.google.protobuf.q.z(i9)));
            return 0;
        }
        switch (this.f2806o.f2818a) {
            case 0:
                z9 = false;
                break;
            case 1:
            default:
                z9 = true;
                break;
        }
        if (z9) {
            return 3;
        }
        return h(3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(long j9, String str, String str2) {
        StringBuilder sbW = ai.onnxruntime.a.w(str, " in ");
        sbW.append(c0.j.a(j9));
        sbW.append(", load key: ");
        sbW.append(this.f2803l);
        sbW.append(str2 != null ? ", ".concat(str2) : "");
        sbW.append(", thread: ");
        sbW.append(Thread.currentThread().getName());
        Log.v("DecodeJob", sbW.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j() {
        boolean zA;
        o();
        z zVar = new z("Failed to load resource", new ArrayList(this.c));
        v vVar = this.f2808q;
        synchronized (vVar) {
            vVar.r = zVar;
        }
        synchronized (vVar) {
            try {
                vVar.c.a();
                if (vVar.f2851v) {
                    vVar.f();
                } else {
                    if (vVar.f2836b.f2835b.isEmpty()) {
                        throw new IllegalStateException("Received an exception without any callbacks to notify");
                    }
                    if (vVar.f2849s) {
                        throw new IllegalStateException("Already failed once");
                    }
                    vVar.f2849s = true;
                    w wVar = vVar.f2843l;
                    u uVar = vVar.f2836b;
                    uVar.getClass();
                    ArrayList arrayList = new ArrayList(uVar.f2835b);
                    vVar.d(arrayList.size() + 1);
                    vVar.f2838g.d(vVar, wVar, null);
                    int size = arrayList.size();
                    int i9 = 0;
                    while (i9 < size) {
                        Object obj = arrayList.get(i9);
                        i9++;
                        t tVar = (t) obj;
                        tVar.f2834b.execute(new s(vVar, tVar.f2833a, 0));
                    }
                    vVar.b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        j jVar = this.f2799h;
        synchronized (jVar) {
            jVar.c = true;
            zA = jVar.a();
        }
        if (zA) {
            k();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k() {
        j jVar = this.f2799h;
        synchronized (jVar) {
            jVar.f2795b = false;
            jVar.f2794a = false;
            jVar.c = false;
        }
        a5.h hVar = this.f2798g;
        hVar.c = null;
        hVar.d = null;
        hVar.e = null;
        h hVar2 = this.f2796b;
        hVar2.c = null;
        hVar2.d = null;
        hVar2.f2789n = null;
        hVar2.f2782g = null;
        hVar2.f2786k = null;
        hVar2.f2784i = null;
        hVar2.f2790o = null;
        hVar2.f2785j = null;
        hVar2.f2791p = null;
        hVar2.f2779a.clear();
        hVar2.f2787l = false;
        hVar2.f2780b.clear();
        hVar2.f2788m = false;
        this.A = false;
        this.f2800i = null;
        this.f2801j = null;
        this.f2807p = null;
        this.f2802k = null;
        this.f2803l = null;
        this.f2808q = null;
        this.D = 0;
        this.f2814z = null;
        this.f2810u = null;
        this.f2811v = null;
        this.f2812x = null;
        this.F = 0;
        this.f2813y = null;
        this.f2809s = 0L;
        this.B = false;
        this.t = null;
        this.c.clear();
        this.f2797f.release(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l(int i9) {
        this.E = i9;
        v vVar = this.f2808q;
        (vVar.f2845n ? vVar.f2841j : vVar.f2840i).execute(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m() {
        this.f2810u = Thread.currentThread();
        int i9 = c0.j.f402b;
        this.f2809s = SystemClock.elapsedRealtimeNanos();
        boolean zC = false;
        while (!this.B && this.f2814z != null && !(zC = this.f2814z.c())) {
            this.D = h(this.D);
            this.f2814z = g();
            if (this.D == 4) {
                l(2);
                return;
            }
        }
        if ((this.D == 6 || this.B) && !zC) {
            j();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n() {
        String str;
        int iC = com.bumptech.glide.g.c(this.E);
        if (iC == 0) {
            this.D = h(1);
            this.f2814z = g();
            m();
        } else {
            if (iC == 1) {
                m();
                return;
            }
            if (iC == 2) {
                f();
                return;
            }
            int i9 = this.E;
            if (i9 == 1) {
                str = "INITIALIZE";
            } else if (i9 != 2) {
                str = i9 != 3 ? "null" : "DECODE_DATA";
            } else {
                str = "SWITCH_TO_SOURCE_SERVICE";
            }
            j1.i.l("Unrecognized run reason: ".concat(str));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void o() {
        Throwable th;
        this.d.a();
        if (!this.A) {
            this.A = true;
            return;
        }
        if (this.c.isEmpty()) {
            th = null;
        } else {
            ArrayList arrayList = this.c;
            th = (Throwable) arrayList.get(arrayList.size() - 1);
        }
        throw new IllegalStateException("Already notified", th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        com.bumptech.glide.load.data.e eVar = this.f2813y;
        try {
            try {
                if (this.B) {
                    j();
                    if (eVar != null) {
                        eVar.b();
                        return;
                    }
                    return;
                }
                n();
                if (eVar != null) {
                    eVar.b();
                }
            } catch (Throwable th) {
                if (eVar != null) {
                    eVar.b();
                }
                throw th;
            }
        } catch (c e) {
            throw e;
        } catch (Throwable th2) {
            if (Log.isLoggable("DecodeJob", 3)) {
                Log.d("DecodeJob", "DecodeJob threw unexpectedly, isCancelled: " + this.B + ", stage: " + com.google.protobuf.q.z(this.D), th2);
            }
            if (this.D != 5) {
                this.c.add(th2);
                j();
            }
            if (!this.B) {
                throw th2;
            }
            throw th2;
        }
    }
}
