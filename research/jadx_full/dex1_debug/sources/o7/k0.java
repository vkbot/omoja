package o7;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k0 implements u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile boolean f4296b;
    public w c;
    public u d;
    public n7.f1 e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public o0 f4298g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f4299h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f4300i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final g3 f4302k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final n7.e[] f4304m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final /* synthetic */ l0 f4305n;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List f4297f = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ArrayList f4301j = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final n7.n f4303l = n7.n.b();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k0(l0 l0Var, g3 g3Var, n7.e[] eVarArr) {
        this.f4305n = l0Var;
        this.f4302k = g3Var;
        this.f4304m = eVarArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public final void a(n7.h hVar) {
        o4.b.m(this.c == null, "May only be called before start");
        this.f4301j.add(new e0(6, this, hVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(Runnable runnable) {
        o4.b.m(this.c != null, "May only be called after start");
        synchronized (this) {
            try {
                if (this.f4296b) {
                    runnable.run();
                } else {
                    this.f4297f.add(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void c(int i9) {
        o4.b.m(this.c == null, "May only be called before start");
        this.f4301j.add(new n0(this, i9, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void d(w wVar) {
        n7.f1 f1Var;
        boolean z8;
        o4.b.i(wVar, "listener");
        o4.b.m(this.c == null, "already started");
        synchronized (this) {
            try {
                f1Var = this.e;
                z8 = this.f4296b;
                if (!z8) {
                    o0 o0Var = new o0(wVar);
                    this.f4298g = o0Var;
                    wVar = o0Var;
                }
                this.c = wVar;
                this.f4299h = System.nanoTime();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (f1Var != null) {
            wVar.b(f1Var, v.f4462b, new n7.v0());
        } else if (z8) {
            k(wVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void e(i7.i iVar) {
        if (Boolean.TRUE.equals(this.f4302k.f4264a.e)) {
            iVar.f2690b.add("wait_for_ready");
        }
        synchronized (this) {
            try {
                if (this.c == null) {
                    return;
                }
                if (this.d != null) {
                    iVar.b(Long.valueOf(this.f4300i - this.f4299h), "buffered_nanos");
                    this.d.e(iVar);
                } else {
                    iVar.b(Long.valueOf(System.nanoTime() - this.f4299h), "buffered_nanos");
                    iVar.f2690b.add("waiting_for_connection");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public final void f(t7.a aVar) {
        o4.b.m(this.c != null, "May only be called after start");
        if (this.f4296b) {
            this.d.f(aVar);
        } else {
            b(new e0(9, this, aVar));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public final void flush() {
        o4.b.m(this.c != null, "May only be called after start");
        if (this.f4296b) {
            this.d.flush();
        } else {
            b(new m0(this, 3));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void g(n7.q qVar) {
        o4.b.m(this.c == null, "May only be called before start");
        o4.b.i(qVar, "decompressorRegistry");
        this.f4301j.add(new e0(7, this, qVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void h(n7.f1 f1Var) {
        boolean z8 = false;
        boolean z9 = true;
        o4.b.m(this.c != null, "May only be called after start");
        o4.b.i(f1Var, "reason");
        synchronized (this) {
            try {
                u uVar = this.d;
                if (uVar == null) {
                    u2 u2Var = u2.c;
                    if (uVar != null) {
                        z9 = false;
                    }
                    o4.b.l("realStream already set to %s", z9, uVar);
                    this.d = u2Var;
                    this.f4300i = System.nanoTime();
                    this.e = f1Var;
                } else {
                    z8 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z8) {
            b(new e0(10, this, f1Var));
        } else {
            j();
            for (n7.e eVar : this.f4304m) {
                eVar.B(f1Var);
            }
            this.c.b(f1Var, v.f4462b, new n7.v0());
        }
        synchronized (this.f4305n.f4328b) {
            try {
                l0 l0Var = this.f4305n;
                if (l0Var.f4330g != null) {
                    boolean zRemove = l0Var.f4332i.remove(this);
                    if (!this.f4305n.f() && zRemove) {
                        l0 l0Var2 = this.f4305n;
                        l0Var2.d.b(l0Var2.f4329f);
                        l0 l0Var3 = this.f4305n;
                        if (l0Var3.f4333j != null) {
                            l0Var3.d.b(l0Var3.f4330g);
                            this.f4305n.f4330g = null;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f4305n.d.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void i() {
        o4.b.m(this.c != null, "May only be called after start");
        b(new m0(this, 4));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public final boolean isReady() {
        if (this.f4296b) {
            return this.d.isReady();
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j() {
        o0 o0Var;
        List arrayList;
        Iterator it;
        List list;
        List arrayList2 = new ArrayList();
        while (true) {
            synchronized (this) {
                if (this.f4297f.isEmpty()) {
                    break;
                }
                list = this.f4297f;
                this.f4297f = arrayList2;
            }
            if (o0Var != null) {
                return;
            }
            arrayList = new ArrayList();
            while (true) {
                synchronized (o0Var) {
                    try {
                        if (o0Var.d.isEmpty()) {
                            o0Var.d = null;
                            o0Var.c = true;
                            return;
                        } else {
                            List list2 = o0Var.d;
                            o0Var.d = arrayList;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                it = list2.iterator();
                while (it.hasNext()) {
                    ((Runnable) it.next()).run();
                }
                list2.clear();
                arrayList = list2;
            }
            list.clear();
            arrayList2 = list;
        }
        this.f4297f = null;
        this.f4296b = true;
        o0Var = this.f4298g;
        if (o0Var != null) {
            return;
        }
        arrayList = new ArrayList();
        while (true) {
            synchronized (o0Var) {
                if (o0Var.d.isEmpty()) {
                    o0Var.d = null;
                    o0Var.c = true;
                    return;
                }
                List list3 = o0Var.d;
                o0Var.d = arrayList;
                it = list3.iterator();
                while (it.hasNext()) {
                    ((Runnable) it.next()).run();
                }
                list3.clear();
                arrayList = list3;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k(w wVar) {
        ArrayList arrayList = this.f4301j;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            ((Runnable) obj).run();
        }
        this.f4301j = null;
        this.d.d(wVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void m(int i9) {
        o4.b.m(this.c == null, "May only be called before start");
        this.f4301j.add(new n0(this, i9, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void n(n7.o oVar) {
        o4.b.m(this.c == null, "May only be called before start");
        this.f4301j.add(new e0(8, this, oVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public final void o() {
        o4.b.m(this.c == null, "May only be called before start");
        this.f4301j.add(new m0(this, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public final void request() {
        o4.b.m(this.c != null, "May only be called after start");
        if (this.f4296b) {
            this.d.request();
        } else {
            b(new m0(this, 0));
        }
    }
}
