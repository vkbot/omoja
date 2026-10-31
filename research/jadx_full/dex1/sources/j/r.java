package j;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class r {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final boolean f2827h = Log.isLoggable("Engine", 2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.bumptech.glide.f f2828a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w7.c f2829b;
    public final l.f c;
    public final q d;
    public final d6.d e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final o f2830f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b1.m f2831g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public r(l.f fVar, r5.c cVar, m.e eVar, m.e eVar2, m.e eVar3, m.e eVar4) throws Throwable {
        this.c = fVar;
        c0.h hVar = new c0.h(cVar);
        b1.m mVar = new b1.m(6);
        this.f2831g = mVar;
        synchronized (this) {
            try {
                try {
                    synchronized (mVar) {
                        try {
                            mVar.f270f = this;
                        } catch (Throwable th) {
                            th = th;
                            while (true) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            }
                        }
                    }
                    this.f2829b = new w7.c(11);
                    this.f2828a = new com.bumptech.glide.f(2);
                    this.d = new q(eVar, eVar2, eVar3, eVar4, this, this);
                    this.f2830f = new o(hVar);
                    d6.d dVar = new d6.d();
                    dVar.f1781b = new Handler(Looper.getMainLooper(), new b4.c(1));
                    this.e = dVar;
                    fVar.d = this;
                } catch (Throwable th3) {
                    th = th3;
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(String str, long j9, w wVar) {
        StringBuilder sbW = ai.onnxruntime.a.w(str, " in ");
        sbW.append(c0.j.a(j9));
        sbW.append("ms, key: ");
        sbW.append(wVar);
        Log.v("Engine", sbW.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void f(d0 d0Var) {
        if (d0Var instanceof x) {
            ((x) d0Var).c();
        } else {
            j1.i.k("Cannot release anything but an EngineResource");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a5.h a(com.bumptech.glide.e eVar, Object obj, h.e eVar2, int i9, int i10, Class cls, Class cls2, com.bumptech.glide.h hVar, m mVar, c0.c cVar, boolean z8, boolean z9, h.h hVar2, boolean z10, boolean z11, y.f fVar, c0.f fVar2) {
        long jElapsedRealtimeNanos;
        if (f2827h) {
            int i11 = c0.j.f402b;
            jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        } else {
            jElapsedRealtimeNanos = 0;
        }
        this.f2829b.getClass();
        w wVar = new w(obj, eVar2, i9, i10, cVar, cls, cls2, hVar2);
        synchronized (this) {
            try {
                x xVarB = b(wVar, z10, jElapsedRealtimeNanos);
                if (xVarB == null) {
                    return g(eVar, obj, eVar2, i9, i10, cls, cls2, hVar, mVar, cVar, z8, z9, hVar2, z10, z11, fVar, fVar2, wVar, jElapsedRealtimeNanos);
                }
                fVar.g(xVarB, 5);
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Duplicate block (B:57:0x0092) to fix multi-entry loop: BACK_EDGE: B:57:0x0092 -> B:66:0x0093 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: T */
    /* JADX WARN: Bottom block not found for handler: all -> 0x008e */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final x b(w wVar, boolean z8, long j9) throws Throwable {
        Throwable th;
        x xVar;
        Object obj;
        r rVar;
        w wVar2;
        x xVar2;
        if (z8) {
            b1.m mVar = this.f2831g;
            synchronized (mVar) {
                try {
                    b bVar = (b) ((HashMap) mVar.d).get(wVar);
                    if (bVar == null) {
                        xVar = null;
                    } else {
                        xVar = (x) bVar.get();
                        if (xVar == null) {
                            try {
                                mVar.b(bVar);
                            } catch (Throwable th2) {
                                th = th2;
                                while (true) {
                                    try {
                                        throw th;
                                    } catch (Throwable th3) {
                                        th = th3;
                                    }
                                    th = th3;
                                }
                            }
                        }
                    }
                    if (xVar != null) {
                        xVar.a();
                    }
                    if (xVar != null) {
                        if (f2827h) {
                            c("Loaded resource from active resources", j9, wVar);
                        }
                        return xVar;
                    }
                    l.f fVar = this.c;
                    synchronized (fVar) {
                        try {
                            c0.k kVar = (c0.k) fVar.f405a.remove(wVar);
                            if (kVar == null) {
                                obj = null;
                            } else {
                                fVar.c -= (long) kVar.f404b;
                                obj = kVar.f403a;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            while (true) {
                                throw th;
                            }
                        }
                    }
                    d0 d0Var = (d0) obj;
                    if (d0Var == null) {
                        rVar = this;
                        wVar2 = wVar;
                        xVar2 = null;
                    } else if (d0Var instanceof x) {
                        xVar2 = (x) d0Var;
                        rVar = this;
                        wVar2 = wVar;
                    } else {
                        rVar = this;
                        wVar2 = wVar;
                        xVar2 = new x(d0Var, true, true, wVar2, rVar);
                    }
                    if (xVar2 != null) {
                        xVar2.a();
                        rVar.f2831g.a(wVar2, xVar2);
                    }
                    if (xVar2 != null) {
                        if (f2827h) {
                            c("Loaded resource from cache", j9, wVar2);
                        }
                        return xVar2;
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void d(v vVar, h.e eVar, x xVar) {
        if (xVar != null) {
            try {
                if (xVar.f2858b) {
                    this.f2831g.a(eVar, xVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        com.bumptech.glide.f fVar = this.f2828a;
        fVar.getClass();
        vVar.getClass();
        HashMap map = fVar.f564a;
        if (vVar.equals(map.get(eVar))) {
            map.remove(eVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(h.e eVar, x xVar) {
        b1.m mVar = this.f2831g;
        synchronized (mVar) {
            b bVar = (b) ((HashMap) mVar.d).remove(eVar);
            if (bVar != null) {
                bVar.c = null;
                bVar.clear();
            }
        }
        if (xVar.f2858b) {
        } else {
            this.e.b(xVar, false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a5.h g(com.bumptech.glide.e eVar, Object obj, h.e eVar2, int i9, int i10, Class cls, Class cls2, com.bumptech.glide.h hVar, m mVar, Map map, boolean z8, boolean z9, h.h hVar2, boolean z10, boolean z11, y.f fVar, Executor executor, w wVar, long j9) {
        m.e eVar3;
        v vVar = (v) this.f2828a.f564a.get(wVar);
        if (vVar != null) {
            vVar.a(fVar, executor);
            if (f2827h) {
                c("Added to existing load", j9, wVar);
            }
            return new a5.h(this, fVar, vVar);
        }
        v vVar2 = (v) this.d.f2826g.acquire();
        synchronized (vVar2) {
            vVar2.f2843l = wVar;
            vVar2.f2844m = z10;
            vVar2.f2845n = z11;
        }
        o oVar = this.f2830f;
        k kVar = (k) oVar.f2821b.acquire();
        int i11 = oVar.c;
        oVar.c = i11 + 1;
        h hVar3 = kVar.f2796b;
        c0.h hVar4 = kVar.e;
        hVar3.c = eVar;
        hVar3.d = obj;
        hVar3.f2789n = eVar2;
        hVar3.e = i9;
        hVar3.f2781f = i10;
        hVar3.f2791p = mVar;
        hVar3.f2782g = cls;
        hVar3.f2783h = hVar4;
        hVar3.f2786k = cls2;
        hVar3.f2790o = hVar;
        hVar3.f2784i = hVar2;
        hVar3.f2785j = map;
        hVar3.f2792q = z8;
        hVar3.r = z9;
        kVar.f2800i = eVar;
        kVar.f2801j = eVar2;
        kVar.f2802k = hVar;
        kVar.f2803l = wVar;
        kVar.f2804m = i9;
        kVar.f2805n = i10;
        kVar.f2806o = mVar;
        kVar.f2807p = hVar2;
        kVar.f2808q = vVar2;
        kVar.r = i11;
        kVar.E = 1;
        kVar.t = obj;
        com.bumptech.glide.f fVar2 = this.f2828a;
        fVar2.getClass();
        fVar2.f564a.put(wVar, vVar2);
        vVar2.a(fVar, executor);
        synchronized (vVar2) {
            vVar2.f2850u = kVar;
            int iH = kVar.h(1);
            if (iH == 2 || iH == 3) {
                eVar3 = vVar2.f2839h;
            } else {
                eVar3 = vVar2.f2845n ? vVar2.f2841j : vVar2.f2840i;
            }
            eVar3.execute(kVar);
        }
        if (f2827h) {
            c("Started new load", j9, wVar);
        }
        return new a5.h(this, fVar, vVar2);
    }
}
