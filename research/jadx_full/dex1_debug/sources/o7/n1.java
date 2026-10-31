package o7;

import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4349b;
    public final /* synthetic */ p1 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ n1(p1 p1Var, int i9) {
        this.f4349b = i9;
        this.c = p1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        p1 p1Var;
        boolean z8;
        long jNextLong;
        boolean z9 = true;
        switch (this.f4349b) {
            case 0:
                synchronized (this.c) {
                    try {
                        p1Var = this.c;
                        if (p1Var.d != 6) {
                            p1Var.d = 6;
                        } else {
                            z9 = false;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                if (z9) {
                    ((p7.n) p1Var.c.c).q(n7.f1.f3930m.h("Keepalive failed. The connection is likely gone"));
                    return;
                }
                return;
            default:
                synchronized (this.c) {
                    try {
                        p1 p1Var2 = this.c;
                        p1Var2.f4384f = null;
                        int i9 = p1Var2.d;
                        if (i9 == 2) {
                            p1Var2.d = 4;
                            p1Var2.e = p1Var2.f4382a.schedule(p1Var2.f4385g, p1Var2.f4388j, TimeUnit.NANOSECONDS);
                            z8 = true;
                        } else {
                            if (i9 == 3) {
                                p1Var2.f4384f = p1Var2.f4382a.schedule(p1Var2.f4386h, p1Var2.f4387i - p1Var2.f4383b.a(), TimeUnit.NANOSECONDS);
                                this.c.d = 2;
                            }
                            z8 = false;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                    break;
                }
                if (z8) {
                    n.p pVar = this.c.c;
                    p7.n nVar = (p7.n) pVar.c;
                    o1 o1Var = new o1(pVar);
                    m4.n nVar2 = m4.n.f3663b;
                    synchronized (nVar.f4666k) {
                        try {
                            if (nVar.f4664i == null) {
                                throw new IllegalStateException();
                            }
                            if (nVar.f4677y) {
                                n7.g1 g1VarK = nVar.k();
                                Logger logger = d1.f4182g;
                                try {
                                    nVar2.execute(new c1(o1Var, g1VarK));
                                    break;
                                } catch (Throwable th3) {
                                    d1.f4182g.log(Level.SEVERE, "Failed to execute PingCallback", th3);
                                }
                                return;
                            }
                            d1 d1Var = nVar.f4676x;
                            if (d1Var != null) {
                                jNextLong = 0;
                                z9 = false;
                            } else {
                                jNextLong = nVar.d.nextLong();
                                i4.f fVar = (i4.f) nVar.e.r();
                                fVar.b();
                                d1 d1Var2 = new d1(jNextLong, fVar);
                                nVar.f4676x = d1Var2;
                                nVar.L.getClass();
                                d1Var = d1Var2;
                            }
                            if (z9) {
                                nVar.f4664i.y(false, (int) (jNextLong >>> 32), (int) jNextLong);
                            }
                            synchronized (d1Var) {
                                try {
                                    if (!d1Var.d) {
                                        d1Var.c.put(o1Var, nVar2);
                                        return;
                                    }
                                    n7.g1 g1Var = d1Var.e;
                                    c1 c1Var = g1Var != null ? new c1(o1Var, g1Var) : new c1(o1Var, d1Var.f4185f);
                                    try {
                                        nVar2.execute(c1Var);
                                        return;
                                    } catch (Throwable th4) {
                                        d1.f4182g.log(Level.SEVERE, "Failed to execute PingCallback", th4);
                                        return;
                                    }
                                } catch (Throwable th5) {
                                    throw th5;
                                }
                            }
                        } catch (Throwable th6) {
                            throw th6;
                        }
                    }
                }
                return;
        }
    }
}
