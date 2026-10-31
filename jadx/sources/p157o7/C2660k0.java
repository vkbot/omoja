package p157o7;

import java.util.ArrayList;
import java.util.List;
import p094i7.C1760i;
import p148n7.AbstractC2503e;
import p148n7.C2508f1;
import p148n7.C2512h;
import p148n7.C2530n;
import p148n7.C2532o;
import p148n7.C2536q;
import p148n7.C2547v0;
import p155o4.AbstractC2587b;
import p203t7.C3265a;

/* JADX INFO: renamed from: o7.k0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2660k0 implements InterfaceC2719u {

    /* JADX INFO: renamed from: b */
    public volatile boolean f7555b;

    /* JADX INFO: renamed from: c */
    public InterfaceC2731w f7556c;

    /* JADX INFO: renamed from: d */
    public InterfaceC2719u f7557d;

    /* JADX INFO: renamed from: e */
    public C2508f1 f7558e;

    /* JADX INFO: renamed from: g */
    public C2684o0 f7560g;

    /* JADX INFO: renamed from: h */
    public long f7561h;

    /* JADX INFO: renamed from: i */
    public long f7562i;

    /* JADX INFO: renamed from: k */
    public final C2639g3 f7564k;

    /* JADX INFO: renamed from: m */
    public final AbstractC2503e[] f7566m;

    /* JADX INFO: renamed from: n */
    public final /* synthetic */ C2666l0 f7567n;

    /* JADX INFO: renamed from: f */
    public List f7559f = new ArrayList();

    /* JADX INFO: renamed from: j */
    public ArrayList f7563j = new ArrayList();

    /* JADX INFO: renamed from: l */
    public final C2530n f7565l = C2530n.m3961b();

    public C2660k0(C2666l0 c2666l0, C2639g3 c2639g3, AbstractC2503e[] abstractC2503eArr) {
        this.f7567n = c2666l0;
        this.f7564k = c2639g3;
        this.f7566m = abstractC2503eArr;
    }

    @Override // p157o7.InterfaceC2724u4
    /* JADX INFO: renamed from: a */
    public final void mo4090a(C2512h c2512h) {
        AbstractC2587b.m4046m(this.f7556c == null, "May only be called before start");
        this.f7563j.add(new RunnableC2624e0(6, this, c2512h));
    }

    /* JADX INFO: renamed from: b */
    public final void m4171b(Runnable runnable) {
        AbstractC2587b.m4046m(this.f7556c != null, "May only be called after start");
        synchronized (this) {
            try {
                if (this.f7555b) {
                    runnable.run();
                } else {
                    this.f7559f.add(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: c */
    public final void mo4092c(int i10) {
        AbstractC2587b.m4046m(this.f7556c == null, "May only be called before start");
        this.f7563j.add(new RunnableC2678n0(this, i10, 1));
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: d */
    public final void mo4093d(InterfaceC2731w interfaceC2731w) {
        C2508f1 c2508f1;
        boolean z9;
        AbstractC2587b.m4042i(interfaceC2731w, "listener");
        AbstractC2587b.m4046m(this.f7556c == null, "already started");
        synchronized (this) {
            try {
                c2508f1 = this.f7558e;
                z9 = this.f7555b;
                if (!z9) {
                    C2684o0 c2684o0 = new C2684o0(interfaceC2731w);
                    this.f7560g = c2684o0;
                    interfaceC2731w = c2684o0;
                }
                this.f7556c = interfaceC2731w;
                this.f7561h = System.nanoTime();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (c2508f1 != null) {
            interfaceC2731w.mo68b(c2508f1, EnumC2725v.f7801b, new C2547v0());
        } else if (z9) {
            m4173k(interfaceC2731w);
        }
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: e */
    public final void mo4094e(C1760i c1760i) {
        if (Boolean.TRUE.equals(this.f7564k.f7488a.f6895e)) {
            c1760i.f4603b.add("wait_for_ready");
        }
        synchronized (this) {
            try {
                if (this.f7556c == null) {
                    return;
                }
                if (this.f7557d != null) {
                    c1760i.m2884b(Long.valueOf(this.f7562i - this.f7561h), "buffered_nanos");
                    this.f7557d.mo4094e(c1760i);
                } else {
                    c1760i.m2884b(Long.valueOf(System.nanoTime() - this.f7561h), "buffered_nanos");
                    c1760i.f4603b.add("waiting_for_connection");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p157o7.InterfaceC2724u4
    /* JADX INFO: renamed from: f */
    public final void mo4095f(C3265a c3265a) {
        AbstractC2587b.m4046m(this.f7556c != null, "May only be called after start");
        if (this.f7555b) {
            this.f7557d.mo4095f(c3265a);
        } else {
            m4171b(new RunnableC2624e0(9, this, c3265a));
        }
    }

    @Override // p157o7.InterfaceC2724u4
    public final void flush() {
        AbstractC2587b.m4046m(this.f7556c != null, "May only be called after start");
        if (this.f7555b) {
            this.f7557d.flush();
        } else {
            m4171b(new RunnableC2672m0(this, 3));
        }
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: g */
    public final void mo4096g(C2536q c2536q) {
        AbstractC2587b.m4046m(this.f7556c == null, "May only be called before start");
        AbstractC2587b.m4042i(c2536q, "decompressorRegistry");
        this.f7563j.add(new RunnableC2624e0(7, this, c2536q));
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: h */
    public final void mo4097h(C2508f1 c2508f1) {
        boolean z9 = false;
        boolean z10 = true;
        AbstractC2587b.m4046m(this.f7556c != null, "May only be called after start");
        AbstractC2587b.m4042i(c2508f1, "reason");
        synchronized (this) {
            try {
                InterfaceC2719u interfaceC2719u = this.f7557d;
                if (interfaceC2719u == null) {
                    C2722u2 c2722u2 = C2722u2.f7797c;
                    if (interfaceC2719u != null) {
                        z10 = false;
                    }
                    AbstractC2587b.m4045l("realStream already set to %s", z10, interfaceC2719u);
                    this.f7557d = c2722u2;
                    this.f7562i = System.nanoTime();
                    this.f7558e = c2508f1;
                } else {
                    z9 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z9) {
            m4171b(new RunnableC2624e0(10, this, c2508f1));
        } else {
            m4172j();
            for (AbstractC2503e abstractC2503e : this.f7566m) {
                abstractC2503e.mo3890B(c2508f1);
            }
            this.f7556c.mo68b(c2508f1, EnumC2725v.f7801b, new C2547v0());
        }
        synchronized (this.f7567n.f7597b) {
            try {
                C2666l0 c2666l0 = this.f7567n;
                if (c2666l0.f7602g != null) {
                    boolean zRemove = c2666l0.f7604i.remove(this);
                    if (!this.f7567n.m4183f() && zRemove) {
                        C2666l0 c2666l1 = this.f7567n;
                        c2666l1.f7599d.m3955b(c2666l1.f7601f);
                        C2666l0 c2666l2 = this.f7567n;
                        if (c2666l2.f7605j != null) {
                            c2666l2.f7599d.m3955b(c2666l2.f7602g);
                            this.f7567n.f7602g = null;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f7567n.f7599d.m3954a();
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: i */
    public final void mo4098i() {
        AbstractC2587b.m4046m(this.f7556c != null, "May only be called after start");
        m4171b(new RunnableC2672m0(this, 4));
    }

    @Override // p157o7.InterfaceC2724u4
    public final boolean isReady() {
        if (this.f7555b) {
            return this.f7557d.isReady();
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002f A[Catch: all -> 0x002d, TryCatch #1 {all -> 0x002d, blocks: (B:11:0x001f, B:13:0x0027, B:14:0x002b, B:18:0x002f, B:19:0x0033), top: B:41:0x001f }] */
    /* JADX WARN: Code duplicated, block: B:23:0x003e A[LOOP:3: B:21:0x0038->B:23:0x003e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:27:0x004f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:41:0x001f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x0027 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:9:0x0019  */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0057, code lost:
    
        r0 = r1.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x005f, code lost:
    
        if (r0.hasNext() == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0061, code lost:
    
        ((java.lang.Runnable) r0.next()).run();
     */
    /* JADX INFO: renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m4172j() {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        L5:
            monitor-enter(r6)
            java.util.List r1 = r6.f7559f     // Catch: java.lang.Throwable -> L50
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L50
            if (r1 == 0) goto L52
            r0 = 0
            r6.f7559f = r0     // Catch: java.lang.Throwable -> L50
            r1 = 1
            r6.f7555b = r1     // Catch: java.lang.Throwable -> L50
            o7.o0 r2 = r6.f7560g     // Catch: java.lang.Throwable -> L50
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L50
            if (r2 == 0) goto L4f
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
        L1e:
            monitor-enter(r2)
            java.util.List r4 = r2.f7651d     // Catch: java.lang.Throwable -> L2d
            boolean r4 = r4.isEmpty()     // Catch: java.lang.Throwable -> L2d
            if (r4 == 0) goto L2f
            r2.f7651d = r0     // Catch: java.lang.Throwable -> L2d
            r2.f7650c = r1     // Catch: java.lang.Throwable -> L2d
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2d
            return
        L2d:
            r0 = move-exception
            goto L4d
        L2f:
            java.util.List r4 = r2.f7651d     // Catch: java.lang.Throwable -> L2d
            r2.f7651d = r3     // Catch: java.lang.Throwable -> L2d
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2d
            java.util.Iterator r3 = r4.iterator()
        L38:
            boolean r5 = r3.hasNext()
            if (r5 == 0) goto L48
            java.lang.Object r5 = r3.next()
            java.lang.Runnable r5 = (java.lang.Runnable) r5
            r5.run()
            goto L38
        L48:
            r4.clear()
            r3 = r4
            goto L1e
        L4d:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2d
            throw r0
        L4f:
            return
        L50:
            r0 = move-exception
            goto L70
        L52:
            java.util.List r1 = r6.f7559f     // Catch: java.lang.Throwable -> L50
            r6.f7559f = r0     // Catch: java.lang.Throwable -> L50
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L50
            java.util.Iterator r0 = r1.iterator()
        L5b:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L6b
            java.lang.Object r2 = r0.next()
            java.lang.Runnable r2 = (java.lang.Runnable) r2
            r2.run()
            goto L5b
        L6b:
            r1.clear()
            r0 = r1
            goto L5
        L70:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L50
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p157o7.C2660k0.m4172j():void");
    }

    /* JADX INFO: renamed from: k */
    public final void m4173k(InterfaceC2731w interfaceC2731w) {
        ArrayList arrayList = this.f7563j;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ((Runnable) obj).run();
        }
        this.f7563j = null;
        this.f7557d.mo4093d(interfaceC2731w);
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: m */
    public final void mo4099m(int i10) {
        AbstractC2587b.m4046m(this.f7556c == null, "May only be called before start");
        this.f7563j.add(new RunnableC2678n0(this, i10, 0));
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: n */
    public final void mo4100n(C2532o c2532o) {
        AbstractC2587b.m4046m(this.f7556c == null, "May only be called before start");
        this.f7563j.add(new RunnableC2624e0(8, this, c2532o));
    }

    @Override // p157o7.InterfaceC2724u4
    /* JADX INFO: renamed from: o */
    public final void mo4101o() {
        AbstractC2587b.m4046m(this.f7556c == null, "May only be called before start");
        this.f7563j.add(new RunnableC2672m0(this, 1));
    }

    @Override // p157o7.InterfaceC2724u4
    public final void request() {
        AbstractC2587b.m4046m(this.f7556c != null, "May only be called after start");
        if (this.f7555b) {
            this.f7557d.request();
        } else {
            m4171b(new RunnableC2672m0(this, 0));
        }
    }
}
