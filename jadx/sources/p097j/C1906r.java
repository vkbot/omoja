package p097j;

import ai.onnxruntime.AbstractC0074a;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.C1032e;
import com.bumptech.glide.C1033f;
import com.bumptech.glide.EnumC1035h;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import p006a5.C0023h;
import p016b1.C0872m;
import p019b4.C0892c;
import p025c0.AbstractC0941j;
import p025c0.C0934c;
import p025c0.C0939h;
import p025c0.ExecutorC0937f;
import p043d6.C1305d;
import p077h.C1646h;
import p077h.InterfaceC1643e;
import p099j1.C1929i;
import p120l.C2189f;
import p131m.ExecutorServiceC2261e;
import p184r5.C3105c;
import p232w7.C3537c;
import p244y.C3621f;

/* JADX INFO: renamed from: j.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1906r {

    /* JADX INFO: renamed from: h */
    public static final boolean f4986h = Log.isLoggable("Engine", 2);

    /* JADX INFO: renamed from: a */
    public final C1033f f4987a;

    /* JADX INFO: renamed from: b */
    public final C3537c f4988b;

    /* JADX INFO: renamed from: c */
    public final C2189f f4989c;

    /* JADX INFO: renamed from: d */
    public final C1905q f4990d;

    /* JADX INFO: renamed from: e */
    public final C1305d f4991e;

    /* JADX INFO: renamed from: f */
    public final C1903o f4992f;

    /* JADX INFO: renamed from: g */
    public final C0872m f4993g;

    public C1906r(C2189f c2189f, C3105c c3105c, ExecutorServiceC2261e executorServiceC2261e, ExecutorServiceC2261e executorServiceC2261e2, ExecutorServiceC2261e executorServiceC2261e3, ExecutorServiceC2261e executorServiceC2261e4) throws Throwable {
        this.f4989c = c2189f;
        C0939h c0939h = new C0939h(c3105c);
        C0872m c0872m = new C0872m(6);
        this.f4993g = c0872m;
        synchronized (this) {
            try {
                try {
                    synchronized (c0872m) {
                        try {
                            c0872m.f604f = this;
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
                    this.f4988b = new C3537c(11);
                    this.f4987a = new C1033f(2);
                    this.f4990d = new C1905q(executorServiceC2261e, executorServiceC2261e2, executorServiceC2261e3, executorServiceC2261e4, this, this);
                    this.f4992f = new C1903o(c0939h);
                    C1305d c1305d = new C1305d();
                    c1305d.f3112b = new Handler(Looper.getMainLooper(), new C0892c(1));
                    this.f4991e = c1305d;
                    c2189f.f5712d = this;
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

    /* JADX INFO: renamed from: c */
    public static void m2961c(String str, long j10, C1911w c1911w) {
        StringBuilder sbM172w = AbstractC0074a.m172w(str, " in ");
        sbM172w.append(AbstractC0941j.m1076a(j10));
        sbM172w.append("ms, key: ");
        sbM172w.append(c1911w);
        Log.v("Engine", sbM172w.toString());
    }

    /* JADX INFO: renamed from: f */
    public static void m2962f(InterfaceC1889d0 interfaceC1889d0) {
        if (interfaceC1889d0 instanceof C1912x) {
            ((C1912x) interfaceC1889d0).m2975c();
        } else {
            C1929i.m3029k("Cannot release anything but an EngineResource");
        }
    }

    /* JADX INFO: renamed from: a */
    public final C0023h m2963a(C1032e c1032e, Object obj, InterfaceC1643e interfaceC1643e, int i10, int i11, Class cls, Class cls2, EnumC1035h enumC1035h, C1901m c1901m, C0934c c0934c, boolean z9, boolean z10, C1646h c1646h, boolean z11, boolean z12, C3621f c3621f, ExecutorC0937f executorC0937f) {
        long jElapsedRealtimeNanos;
        if (f4986h) {
            int i12 = AbstractC0941j.f799b;
            jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        } else {
            jElapsedRealtimeNanos = 0;
        }
        this.f4988b.getClass();
        C1911w c1911w = new C1911w(obj, interfaceC1643e, i10, i11, c0934c, cls, cls2, c1646h);
        synchronized (this) {
            try {
                C1912x c1912xM2964b = m2964b(c1911w, z11, jElapsedRealtimeNanos);
                if (c1912xM2964b == null) {
                    return m2967g(c1032e, obj, interfaceC1643e, i10, i11, cls, cls2, enumC1035h, c1901m, c0934c, z9, z10, c1646h, z11, z12, c3621f, executorC0937f, c1911w, jElapsedRealtimeNanos);
                }
                c3621f.m5793g(c1912xM2964b, 5);
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x008e */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final p097j.C1912x m2964b(p097j.C1911w r8, boolean r9, long r10) throws java.lang.Throwable {
        /*
            r7 = this;
            r0 = 0
            if (r9 != 0) goto L6
            r6 = r7
            goto L88
        L6:
            b1.m r9 = r7.f4993g
            monitor-enter(r9)
            java.lang.Object r1 = r9.f602d     // Catch: java.lang.Throwable -> L90
            java.util.HashMap r1 = (java.util.HashMap) r1     // Catch: java.lang.Throwable -> L90
            java.lang.Object r1 = r1.get(r8)     // Catch: java.lang.Throwable -> L90
            j.b r1 = (p097j.C1884b) r1     // Catch: java.lang.Throwable -> L90
            if (r1 != 0) goto L18
            monitor-exit(r9)
            r2 = r0
            goto L2a
        L18:
            java.lang.Object r2 = r1.get()     // Catch: java.lang.Throwable -> L90
            j.x r2 = (p097j.C1912x) r2     // Catch: java.lang.Throwable -> L90
            if (r2 != 0) goto L29
            r9.m978b(r1)     // Catch: java.lang.Throwable -> L24
            goto L29
        L24:
            r0 = move-exception
            r8 = r0
            r6 = r7
            goto L93
        L29:
            monitor-exit(r9)
        L2a:
            if (r2 == 0) goto L2f
            r2.m2974a()
        L2f:
            if (r2 == 0) goto L3b
            boolean r9 = p097j.C1906r.f4986h
            if (r9 == 0) goto L3a
            java.lang.String r9 = "Loaded resource from active resources"
            m2961c(r9, r10, r8)
        L3a:
            return r2
        L3b:
            l.f r1 = r7.f4989c
            monitor-enter(r1)
            java.util.LinkedHashMap r9 = r1.f802a     // Catch: java.lang.Throwable -> L89
            java.lang.Object r9 = r9.remove(r8)     // Catch: java.lang.Throwable -> L89
            c0.k r9 = (p025c0.C0942k) r9     // Catch: java.lang.Throwable -> L89
            if (r9 != 0) goto L4b
            monitor-exit(r1)
            r9 = r0
            goto L56
        L4b:
            long r2 = r1.f804c     // Catch: java.lang.Throwable -> L89
            int r4 = r9.f801b     // Catch: java.lang.Throwable -> L89
            long r4 = (long) r4     // Catch: java.lang.Throwable -> L89
            long r2 = r2 - r4
            r1.f804c = r2     // Catch: java.lang.Throwable -> L89
            java.lang.Object r9 = r9.f800a     // Catch: java.lang.Throwable -> L89
            monitor-exit(r1)
        L56:
            r2 = r9
            j.d0 r2 = (p097j.InterfaceC1889d0) r2
            if (r2 != 0) goto L5f
            r6 = r7
            r5 = r8
            r2 = r0
            goto L72
        L5f:
            boolean r9 = r2 instanceof p097j.C1912x
            if (r9 == 0) goto L68
            j.x r2 = (p097j.C1912x) r2
            r6 = r7
            r5 = r8
            goto L72
        L68:
            j.x r1 = new j.x
            r3 = 1
            r4 = 1
            r6 = r7
            r5 = r8
            r1.<init>(r2, r3, r4, r5, r6)
            r2 = r1
        L72:
            if (r2 == 0) goto L7c
            r2.m2974a()
            b1.m r8 = r6.f4993g
            r8.m977a(r5, r2)
        L7c:
            if (r2 == 0) goto L88
            boolean r8 = p097j.C1906r.f4986h
            if (r8 == 0) goto L87
            java.lang.String r8 = "Loaded resource from cache"
            m2961c(r8, r10, r5)
        L87:
            return r2
        L88:
            return r0
        L89:
            r0 = move-exception
            r6 = r7
        L8b:
            r8 = r0
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L8e
            throw r8
        L8e:
            r0 = move-exception
            goto L8b
        L90:
            r0 = move-exception
            r6 = r7
        L92:
            r8 = r0
        L93:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L95
            throw r8
        L95:
            r0 = move-exception
            goto L92
        */
        throw new UnsupportedOperationException("Method not decompiled: p097j.C1906r.m2964b(j.w, boolean, long):j.x");
    }

    /* JADX INFO: renamed from: d */
    public final synchronized void m2965d(C1910v c1910v, InterfaceC1643e interfaceC1643e, C1912x c1912x) {
        if (c1912x != null) {
            try {
                if (c1912x.f5031b) {
                    this.f4993g.m977a(interfaceC1643e, c1912x);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        C1033f c1033f = this.f4987a;
        c1033f.getClass();
        c1910v.getClass();
        HashMap map = c1033f.f1089a;
        if (c1910v.equals(map.get(interfaceC1643e))) {
            map.remove(interfaceC1643e);
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m2966e(InterfaceC1643e interfaceC1643e, C1912x c1912x) {
        C0872m c0872m = this.f4993g;
        synchronized (c0872m) {
            C1884b c1884b = (C1884b) ((HashMap) c0872m.f602d).remove(interfaceC1643e);
            if (c1884b != null) {
                c1884b.f4865c = null;
                c1884b.clear();
            }
        }
        if (c1912x.f5031b) {
        } else {
            this.f4991e.m2354b(c1912x, false);
        }
    }

    /* JADX INFO: renamed from: g */
    public final C0023h m2967g(C1032e c1032e, Object obj, InterfaceC1643e interfaceC1643e, int i10, int i11, Class cls, Class cls2, EnumC1035h enumC1035h, C1901m c1901m, Map map, boolean z9, boolean z10, C1646h c1646h, boolean z11, boolean z12, C3621f c3621f, Executor executor, C1911w c1911w, long j10) {
        ExecutorServiceC2261e executorServiceC2261e;
        C1910v c1910v = (C1910v) this.f4987a.f1089a.get(c1911w);
        if (c1910v != null) {
            c1910v.m2968a(c3621f, executor);
            if (f4986h) {
                m2961c("Added to existing load", j10, c1911w);
            }
            return new C0023h(this, c3621f, c1910v);
        }
        C1910v c1910v2 = (C1910v) this.f4990d.f4985g.acquire();
        synchronized (c1910v2) {
            c1910v2.f5011l = c1911w;
            c1910v2.f5012m = z11;
            c1910v2.f5013n = z12;
        }
        C1903o c1903o = this.f4992f;
        RunnableC1899k runnableC1899k = (RunnableC1899k) c1903o.f4976b.acquire();
        int i12 = c1903o.f4977c;
        c1903o.f4977c = i12 + 1;
        C1896h c1896h = runnableC1899k.f4940b;
        C0939h c0939h = runnableC1899k.f4943e;
        c1896h.f4913c = c1032e;
        c1896h.f4914d = obj;
        c1896h.f4924n = interfaceC1643e;
        c1896h.f4915e = i10;
        c1896h.f4916f = i11;
        c1896h.f4926p = c1901m;
        c1896h.f4917g = cls;
        c1896h.f4918h = c0939h;
        c1896h.f4921k = cls2;
        c1896h.f4925o = enumC1035h;
        c1896h.f4919i = c1646h;
        c1896h.f4920j = map;
        c1896h.f4927q = z9;
        c1896h.f4928r = z10;
        runnableC1899k.f4947i = c1032e;
        runnableC1899k.f4948j = interfaceC1643e;
        runnableC1899k.f4949k = enumC1035h;
        runnableC1899k.f4950l = c1911w;
        runnableC1899k.f4951m = i10;
        runnableC1899k.f4952n = i11;
        runnableC1899k.f4953o = c1901m;
        runnableC1899k.f4954p = c1646h;
        runnableC1899k.f4955q = c1910v2;
        runnableC1899k.f4956r = i12;
        runnableC1899k.f4938E = 1;
        runnableC1899k.f4958t = obj;
        C1033f c1033f = this.f4987a;
        c1033f.getClass();
        c1033f.f1089a.put(c1911w, c1910v2);
        c1910v2.m2968a(c3621f, executor);
        synchronized (c1910v2) {
            c1910v2.f5020u = runnableC1899k;
            int iM2950h = runnableC1899k.m2950h(1);
            if (iM2950h == 2 || iM2950h == 3) {
                executorServiceC2261e = c1910v2.f5007h;
            } else {
                executorServiceC2261e = c1910v2.f5013n ? c1910v2.f5009j : c1910v2.f5008i;
            }
            executorServiceC2261e.execute(runnableC1899k);
        }
        if (f4986h) {
            m2961c("Started new load", j10, c1911w);
        }
        return new C0023h(this, c3621f, c1910v2);
    }
}
