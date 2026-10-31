package p258z3;

import p000a.AbstractC0000a;

/* JADX INFO: renamed from: z3.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3727m extends AbstractC0000a {
    @Override // p000a.AbstractC0000a
    /* JADX INFO: renamed from: k */
    public final void mo26k(C3739y c3739y, float f8, float f10) {
        float f11 = f10 * f8;
        c3739y.m5972d(f11, 180.0f, 90.0f);
        float f12 = f11 * 2.0f;
        C3735u c3735u = new C3735u(0.0f, 0.0f, f12, f12);
        c3735u.f11122f = 180.0f;
        c3735u.f11123g = 90.0f;
        c3739y.f11134f.add(c3735u);
        C3733s c3733s = new C3733s(c3735u);
        c3739y.m5969a(180.0f);
        c3739y.f11135g.add(c3733s);
        c3739y.f11132d = 270.0f;
        float f13 = (0.0f + f12) * 0.5f;
        float f14 = (f12 - 0.0f) / 2.0f;
        double d = 270.0f;
        c3739y.f11130b = (((float) Math.cos(Math.toRadians(d))) * f14) + f13;
        c3739y.f11131c = (f14 * ((float) Math.sin(Math.toRadians(d)))) + f13;
    }
}
