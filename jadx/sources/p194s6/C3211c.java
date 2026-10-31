package p194s6;

import p063f6.C1578b;
import p260z5.C3753i;
import p260z5.C3759o;

/* JADX INFO: renamed from: s6.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3211c {

    /* JADX INFO: renamed from: a */
    public final C1578b f9383a;

    /* JADX INFO: renamed from: b */
    public final C3759o f9384b;

    /* JADX INFO: renamed from: c */
    public final C3759o f9385c;

    /* JADX INFO: renamed from: d */
    public final C3759o f9386d;

    /* JADX INFO: renamed from: e */
    public final C3759o f9387e;

    /* JADX INFO: renamed from: f */
    public final int f9388f;

    /* JADX INFO: renamed from: g */
    public final int f9389g;

    /* JADX INFO: renamed from: h */
    public final int f9390h;

    /* JADX INFO: renamed from: i */
    public final int f9391i;

    public C3211c(C1578b c1578b, C3759o c3759o, C3759o c3759o2, C3759o c3759o3, C3759o c3759o4) throws C3753i {
        boolean z9 = c3759o == null || c3759o2 == null;
        boolean z10 = c3759o3 == null || c3759o4 == null;
        if (z9 && z10) {
            throw C3753i.f11192d;
        }
        if (z9) {
            c3759o = new C3759o(0.0f, c3759o3.f11215b);
            c3759o2 = new C3759o(0.0f, c3759o4.f11215b);
        } else if (z10) {
            int i10 = c1578b.f3900b;
            c3759o3 = new C3759o(i10 - 1, c3759o.f11215b);
            c3759o4 = new C3759o(i10 - 1, c3759o2.f11215b);
        }
        this.f9383a = c1578b;
        this.f9384b = c3759o;
        this.f9385c = c3759o2;
        this.f9386d = c3759o3;
        this.f9387e = c3759o4;
        this.f9388f = (int) Math.min(c3759o.f11214a, c3759o2.f11214a);
        this.f9389g = (int) Math.max(c3759o3.f11214a, c3759o4.f11214a);
        this.f9390h = (int) Math.min(c3759o.f11215b, c3759o3.f11215b);
        this.f9391i = (int) Math.max(c3759o2.f11215b, c3759o4.f11215b);
    }

    public C3211c(C3211c c3211c) {
        this.f9383a = c3211c.f9383a;
        this.f9384b = c3211c.f9384b;
        this.f9385c = c3211c.f9385c;
        this.f9386d = c3211c.f9386d;
        this.f9387e = c3211c.f9387e;
        this.f9388f = c3211c.f9388f;
        this.f9389g = c3211c.f9389g;
        this.f9390h = c3211c.f9390h;
        this.f9391i = c3211c.f9391i;
    }
}
