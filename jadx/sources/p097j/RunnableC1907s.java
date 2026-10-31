package p097j;

import p025c0.AbstractC0938g;
import p244y.C3621f;

/* JADX INFO: renamed from: j.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC1907s implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4994b;

    /* JADX INFO: renamed from: c */
    public final C3621f f4995c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C1910v f4996d;

    public /* synthetic */ RunnableC1907s(C1910v c1910v, C3621f c3621f, int i10) {
        this.f4994b = i10;
        this.f4996d = c1910v;
        this.f4995c = c3621f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4994b) {
            case 0:
                C3621f c3621f = this.f4995c;
                c3621f.f10730b.m2224a();
                synchronized (c3621f.f10731c) {
                    synchronized (this.f4996d) {
                        try {
                            if (this.f4996d.f5001b.f4999b.contains(new C1908t(this.f4995c, AbstractC0938g.f795b))) {
                                C1910v c1910v = this.f4996d;
                                C3621f c3621f2 = this.f4995c;
                                c1910v.getClass();
                                try {
                                    c3621f2.m5792f(c1910v.f5017r, 5);
                                } catch (Throwable th) {
                                    throw new C1886c(th);
                                }
                            }
                            this.f4996d.m2969b();
                        } catch (Throwable th2) {
                            throw th2;
                        }
                        break;
                    }
                }
                return;
            default:
                C3621f c3621f3 = this.f4995c;
                c3621f3.f10730b.m2224a();
                synchronized (c3621f3.f10731c) {
                    synchronized (this.f4996d) {
                        try {
                            if (this.f4996d.f5001b.f4999b.contains(new C1908t(this.f4995c, AbstractC0938g.f795b))) {
                                this.f4996d.f5019t.m2974a();
                                C1910v c1910v2 = this.f4996d;
                                C3621f c3621f4 = this.f4995c;
                                c1910v2.getClass();
                                try {
                                    c3621f4.m5793g(c1910v2.f5019t, c1910v2.f5015p);
                                    this.f4996d.m2973g(this.f4995c);
                                } catch (Throwable th3) {
                                    throw new C1886c(th3);
                                }
                            }
                            this.f4996d.m2969b();
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    }
                }
                return;
        }
    }
}
