package p157o7;

import p141n.C2455p;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.j0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2654j0 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7535b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2455p f7536c;

    public /* synthetic */ RunnableC2654j0(C2455p c2455p, int i10) {
        this.f7535b = i10;
        this.f7536c = c2455p;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7535b) {
            case 0:
                this.f7536c.m3812k(true);
                break;
            case 1:
                this.f7536c.m3812k(false);
                break;
            default:
                C2632f2 c2632f2 = (C2632f2) this.f7536c.f6648c;
                AbstractC2587b.m4046m(c2632f2.f7403G.get(), "Channel must have been shut down");
                c2632f2.f7404H = true;
                c2632f2.m4141k(false);
                C2632f2.m4137g(c2632f2);
                break;
        }
    }
}
