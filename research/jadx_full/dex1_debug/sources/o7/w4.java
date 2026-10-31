package o7;

import java.io.InputStream;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class w4 implements w, u {
    public static final u2 e = new u2(20);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4495b;
    public final Object c;
    public final Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public w4(String str) {
        this.f4495b = 1;
        n7.l0 l0VarA = n7.l0.a();
        o4.b.i(l0VarA, "registry");
        this.c = l0VarA;
        o4.b.i(str, "defaultPolicy");
        this.d = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public void a(n7.h hVar) {
        ((u) this.c).a(hVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:115:0x0228  */
    @Override // o7.w
    public void b(n7.f1 f1Var, v vVar, n7.v0 v0Var) {
        boolean z8;
        x3 x3Var;
        v1 v1Var;
        com.bumptech.glide.manager.t tVar;
        switch (this.f4495b) {
            case 2:
                b1.m mVar = ((g1) ((w4) this.d).d).f4244b;
                if (f1Var.f()) {
                    ((r1) mVar.e).a();
                } else {
                    ((r1) mVar.f270f).a();
                }
                ((w) this.c).b(f1Var, vVar, v0Var);
                return;
            default:
                Integer numValueOf = -1;
                synchronized (((v1) this.d).f4469j) {
                    v1 v1Var2 = (v1) this.d;
                    v1Var2.f4475p = v1Var2.f4475p.d((c4) this.c);
                    ((v1) this.d).f4474o.f2690b.add(String.valueOf(f1Var.f3933a));
                    break;
                }
                if (((v1) this.d).f4477s.decrementAndGet() == Integer.MIN_VALUE) {
                    ((v1) this.d).d.execute(new b4(this, 0));
                    return;
                }
                c4 c4Var = (c4) this.c;
                if (c4Var.c) {
                    v1 v1Var3 = (v1) this.d;
                    p3 p3VarJ = v1Var3.j(c4Var);
                    if (p3VarJ != null) {
                        v1Var3.c.execute(p3VarJ);
                    }
                    if (((v1) this.d).f4475p.f4529f == ((c4) this.c)) {
                        ((v1) this.d).s(f1Var, vVar, v0Var);
                        return;
                    }
                    return;
                }
                v vVar2 = v.e;
                if (vVar == vVar2 && ((v1) this.d).r.incrementAndGet() > 1000) {
                    v1 v1Var4 = (v1) this.d;
                    p3 p3VarJ2 = v1Var4.j((c4) this.c);
                    if (p3VarJ2 != null) {
                        v1Var4.c.execute(p3VarJ2);
                    }
                    if (((v1) this.d).f4475p.f4529f == ((c4) this.c)) {
                        ((v1) this.d).s(n7.f1.f3929l.h("Too many transparent retries. Might be a bug in gRPC").g(f1Var.a()), vVar, v0Var);
                        return;
                    }
                    return;
                }
                if (((v1) this.d).f4475p.f4529f == null) {
                    if (vVar == vVar2 || (vVar == v.c && ((v1) this.d).f4476q.compareAndSet(false, true))) {
                        c4 c4VarK = ((v1) this.d).k(((c4) this.c).d, true);
                        if (c4VarK == null) {
                            return;
                        }
                        v1 v1Var5 = (v1) this.d;
                        if (v1Var5.f4468i) {
                            synchronized (v1Var5.f4469j) {
                                v1 v1Var6 = (v1) this.d;
                                v1Var6.f4475p = v1Var6.f4475p.c((c4) this.c, c4VarK);
                                break;
                            }
                        }
                        ((v1) this.d).c.execute(new a4(this, c4VarK, 1));
                        return;
                    }
                    v vVar3 = v.d;
                    v1 v1Var7 = (v1) this.d;
                    if (vVar != vVar3) {
                        v1Var7.f4476q.set(true);
                        v1 v1Var8 = (v1) this.d;
                        if (v1Var8.f4468i) {
                            String str = (String) v0Var.c(v1.G);
                            if (str != null) {
                                try {
                                    numValueOf = Integer.valueOf(str);
                                    break;
                                } catch (NumberFormatException unused) {
                                }
                            } else {
                                numValueOf = null;
                            }
                            v1 v1Var9 = (v1) this.d;
                            boolean zContains = v1Var9.f4467h.c.contains(f1Var.f3933a);
                            boolean z9 = (v1Var9.f4473n == null || (!zContains && (numValueOf == null || numValueOf.intValue() >= 0))) ? false : !v1Var9.f4473n.a();
                            if (zContains && !z9 && !f1Var.f() && numValueOf != null && numValueOf.intValue() > 0) {
                                numValueOf = 0;
                            }
                            boolean z10 = zContains && !z9;
                            if (z10) {
                                v1.b((v1) this.d, numValueOf);
                            }
                            synchronized (((v1) this.d).f4469j) {
                                try {
                                    v1 v1Var10 = (v1) this.d;
                                    v1Var10.f4475p = v1Var10.f4475p.b((c4) this.c);
                                    if (z10) {
                                        v1 v1Var11 = (v1) this.d;
                                        if (!v1Var11.r(v1Var11.f4475p)) {
                                            if (!((v1) this.d).f4475p.d.isEmpty()) {
                                            }
                                        }
                                        return;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        } else {
                            e4 e4Var = v1Var8.f4466g;
                            long nanos = 0;
                            if (e4Var == null) {
                                x3Var = new x3(0L, false);
                            } else {
                                boolean zContains2 = e4Var.f4207f.contains(f1Var.f3933a);
                                String str2 = (String) v0Var.c(v1.G);
                                if (str2 != null) {
                                    try {
                                        numValueOf = Integer.valueOf(str2);
                                        break;
                                    } catch (NumberFormatException unused2) {
                                    }
                                } else {
                                    numValueOf = null;
                                }
                                boolean z11 = (v1Var8.f4473n == null || (!zContains2 && (numValueOf == null || numValueOf.intValue() >= 0))) ? false : !v1Var8.f4473n.a();
                                if (v1Var8.f4466g.f4205a <= ((c4) this.c).d + 1 || z11) {
                                    z8 = false;
                                } else if (numValueOf == null) {
                                    if (zContains2) {
                                        nanos = (long) (v1.I.nextDouble() * v1Var8.f4481y);
                                        double d = v1Var8.f4481y;
                                        e4 e4Var2 = v1Var8.f4466g;
                                        v1Var8.f4481y = Math.min((long) (d * e4Var2.d), e4Var2.c);
                                        z8 = true;
                                    } else {
                                        z8 = false;
                                    }
                                } else if (numValueOf.intValue() >= 0) {
                                    nanos = TimeUnit.MILLISECONDS.toNanos(numValueOf.intValue());
                                    v1Var8.f4481y = v1Var8.f4466g.f4206b;
                                    z8 = true;
                                } else {
                                    z8 = false;
                                }
                                x3Var = new x3(nanos, z8);
                            }
                            if (x3Var.f4501a) {
                                c4 c4VarK2 = ((v1) this.d).k(((c4) this.c).d + 1, false);
                                if (c4VarK2 == null) {
                                    return;
                                }
                                synchronized (((v1) this.d).f4469j) {
                                    v1Var = (v1) this.d;
                                    tVar = new com.bumptech.glide.manager.t(v1Var.f4469j);
                                    v1Var.w = tVar;
                                    break;
                                }
                                tVar.i(v1Var.e.schedule(new a4(this, c4VarK2, 0), x3Var.f4502b, TimeUnit.NANOSECONDS));
                                return;
                            }
                        }
                    } else if (v1Var7.f4468i) {
                        v1Var7.q();
                    }
                }
                v1 v1Var12 = (v1) this.d;
                p3 p3VarJ3 = v1Var12.j((c4) this.c);
                if (p3VarJ3 != null) {
                    v1Var12.c.execute(p3VarJ3);
                }
                if (((v1) this.d).f4475p.f4529f == ((c4) this.c)) {
                    ((v1) this.d).s(f1Var, vVar, v0Var);
                    return;
                }
                return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public void c(int i9) {
        ((u) this.c).c(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public void d(w wVar) {
        b1.m mVar = ((g1) this.d).f4244b;
        ((r1) mVar.d).a();
        ((u2) mVar.c).q();
        ((u) this.c).d(new w4(2, this, wVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public void e(i7.i iVar) {
        ((u) this.c).e(iVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public void f(t7.a aVar) {
        ((u) this.c).f(aVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public void flush() {
        ((u) this.c).flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public void g(n7.q qVar) {
        ((u) this.c).g(qVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public void h(n7.f1 f1Var) {
        ((u) this.c).h(f1Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public void i() {
        ((u) this.c).i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public boolean isReady() {
        return ((u) this.c).isReady();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.w
    public void j() {
        switch (this.f4495b) {
            case 2:
                ((w) this.c).j();
                break;
            default:
                v1 v1Var = (v1) this.d;
                if (v1Var.isReady()) {
                    v1Var.d.execute(new b4(this, 1));
                    break;
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.w
    public void k(o2 o2Var) {
        switch (this.f4495b) {
            case 2:
                ((w) this.c).k(o2Var);
                break;
            default:
                z3 z3Var = ((v1) this.d).f4475p;
                o4.b.m(z3Var.f4529f != null, "Headers should be received prior to messages.");
                if (z3Var.f4529f == ((c4) this.c)) {
                    ((v1) this.d).d.execute(new e0(24, this, o2Var));
                } else {
                    Logger logger = y0.f4505a;
                    while (true) {
                        InputStream inputStreamA = o2Var.a();
                        if (inputStreamA != null) {
                            y0.b(inputStreamA);
                        }
                    }
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.w
    public void l(n7.v0 v0Var) {
        int i9;
        int i10;
        switch (this.f4495b) {
            case 2:
                ((w) this.c).l(v0Var);
                break;
            default:
                if (((c4) this.c).d > 0) {
                    n7.q0 q0Var = v1.F;
                    v0Var.a(q0Var);
                    v0Var.e(q0Var, String.valueOf(((c4) this.c).d));
                }
                v1 v1Var = (v1) this.d;
                c4 c4Var = (c4) this.c;
                n7.q0 q0Var2 = v1.F;
                p3 p3VarJ = v1Var.j(c4Var);
                if (p3VarJ != null) {
                    v1Var.c.execute(p3VarJ);
                }
                if (((v1) this.d).f4475p.f4529f == ((c4) this.c)) {
                    d4 d4Var = ((v1) this.d).f4473n;
                    if (d4Var != null) {
                        AtomicInteger atomicInteger = d4Var.d;
                        do {
                            i9 = atomicInteger.get();
                            i10 = d4Var.f4189a;
                            if (i9 == i10) {
                            }
                        } while (!atomicInteger.compareAndSet(i9, Math.min(d4Var.c + i9, i10)));
                    }
                    ((v1) this.d).d.execute(new e0(23, this, v0Var));
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public void m(int i9) {
        ((u) this.c).m(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public void n(n7.o oVar) {
        ((u) this.c).n(oVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public void o() {
        ((u) this.c).o();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public void request() {
        ((u) this.c).request();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f4495b) {
            case 2:
                com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
                sVarT.c((w) this.c, "delegate");
                return sVarT.toString();
            case 3:
                com.bumptech.glide.manager.s sVarT2 = com.bumptech.glide.c.t(this);
                sVarT2.c((u) this.c, "delegate");
                return sVarT2.toString();
            default:
                return super.toString();
        }
    }

    public w4() {
        this.f4495b = 0;
        u2 u2Var = u2.d;
        this.d = p4.b();
        this.c = u2Var;
    }

    public /* synthetic */ w4(int i9, Object obj, Object obj2) {
        this.f4495b = i9;
        this.d = obj;
        this.c = obj2;
    }
}
