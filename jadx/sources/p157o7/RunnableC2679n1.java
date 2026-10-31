package p157o7;

import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import p091i4.C1748f;
import p135m4.EnumC2395n;
import p141n.C2455p;
import p148n7.C2508f1;
import p148n7.C2511g1;
import p170p7.C2989n;

/* JADX INFO: renamed from: o7.n1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2679n1 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7635b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2691p1 f7636c;

    public /* synthetic */ RunnableC2679n1(C2691p1 c2691p1, int i10) {
        this.f7635b = i10;
        this.f7636c = c2691p1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2691p1 c2691p1;
        boolean z9;
        long jNextLong;
        boolean z10 = true;
        switch (this.f7635b) {
            case 0:
                synchronized (this.f7636c) {
                    try {
                        c2691p1 = this.f7636c;
                        if (c2691p1.f7686d != 6) {
                            c2691p1.f7686d = 6;
                        } else {
                            z10 = false;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                if (z10) {
                    ((C2989n) c2691p1.f7685c.f6648c).m4798q(C2508f1.f6945m.m3934h("Keepalive failed. The connection is likely gone"));
                    return;
                }
                return;
            default:
                synchronized (this.f7636c) {
                    try {
                        C2691p1 c2691p2 = this.f7636c;
                        c2691p2.f7688f = null;
                        int i10 = c2691p2.f7686d;
                        if (i10 == 2) {
                            c2691p2.f7686d = 4;
                            c2691p2.f7687e = c2691p2.f7683a.schedule(c2691p2.f7689g, c2691p2.f7692j, TimeUnit.NANOSECONDS);
                            z9 = true;
                        } else {
                            if (i10 == 3) {
                                c2691p2.f7688f = c2691p2.f7683a.schedule(c2691p2.f7690h, c2691p2.f7691i - c2691p2.f7684b.m2872a(), TimeUnit.NANOSECONDS);
                                this.f7636c.f7686d = 2;
                            }
                            z9 = false;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                    break;
                }
                if (z9) {
                    C2455p c2455p = this.f7636c.f7685c;
                    C2989n c2989n = (C2989n) c2455p.f6648c;
                    C2685o1 c2685o1 = new C2685o1(c2455p);
                    EnumC2395n enumC2395n = EnumC2395n.f6477b;
                    synchronized (c2989n.f8397k) {
                        try {
                            if (c2989n.f8395i == null) {
                                throw new IllegalStateException();
                            }
                            if (c2989n.f8411y) {
                                C2511g1 c2511g1M4793k = c2989n.m4793k();
                                Logger logger = C2619d1.f7344g;
                                try {
                                    enumC2395n.execute(new RunnableC2613c1(c2685o1, c2511g1M4793k));
                                    break;
                                } catch (Throwable th3) {
                                    C2619d1.f7344g.log(Level.SEVERE, "Failed to execute PingCallback", th3);
                                }
                                return;
                            }
                            C2619d1 c2619d1 = c2989n.f8410x;
                            if (c2619d1 != null) {
                                jNextLong = 0;
                                z10 = false;
                            } else {
                                jNextLong = c2989n.f8390d.nextLong();
                                C1748f c1748f = (C1748f) c2989n.f8391e.m4246r();
                                c1748f.m2873b();
                                C2619d1 c2619d2 = new C2619d1(jNextLong, c1748f);
                                c2989n.f8410x = c2619d2;
                                c2989n.f8383L.getClass();
                                c2619d1 = c2619d2;
                            }
                            if (z10) {
                                c2989n.f8395i.m4778y(false, (int) (jNextLong >>> 32), (int) jNextLong);
                            }
                            synchronized (c2619d1) {
                                try {
                                    if (!c2619d1.f7348d) {
                                        c2619d1.f7347c.put(c2685o1, enumC2395n);
                                        return;
                                    }
                                    C2511g1 c2511g1 = c2619d1.f7349e;
                                    RunnableC2613c1 runnableC2613c1 = c2511g1 != null ? new RunnableC2613c1(c2685o1, c2511g1) : new RunnableC2613c1(c2685o1, c2619d1.f7350f);
                                    try {
                                        enumC2395n.execute(runnableC2613c1);
                                        return;
                                    } catch (Throwable th4) {
                                        C2619d1.f7344g.log(Level.SEVERE, "Failed to execute PingCallback", th4);
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
