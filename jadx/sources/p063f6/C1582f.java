package p063f6;

/* JADX INFO: renamed from: f6.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1582f {

    /* JADX INFO: renamed from: a */
    public final float f3921a;

    /* JADX INFO: renamed from: b */
    public final float f3922b;

    /* JADX INFO: renamed from: c */
    public final float f3923c;

    /* JADX INFO: renamed from: d */
    public final float f3924d;

    /* JADX INFO: renamed from: e */
    public final float f3925e;

    /* JADX INFO: renamed from: f */
    public final float f3926f;

    /* JADX INFO: renamed from: g */
    public final float f3927g;

    /* JADX INFO: renamed from: h */
    public final float f3928h;

    /* JADX INFO: renamed from: i */
    public final float f3929i;

    public C1582f(float f8, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17) {
        this.f3921a = f8;
        this.f3922b = f12;
        this.f3923c = f15;
        this.f3924d = f10;
        this.f3925e = f13;
        this.f3926f = f16;
        this.f3927g = f11;
        this.f3928h = f14;
        this.f3929i = f17;
    }

    /* JADX INFO: renamed from: a */
    public static C1582f m2667a(float f8, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, float f21, float f22, float f23, float f24) {
        C1582f c1582fM2668b = m2668b(f8, f10, f11, f12, f13, f14, f15, f16);
        float f25 = c1582fM2668b.f3925e;
        float f26 = c1582fM2668b.f3929i;
        float f27 = c1582fM2668b.f3926f;
        float f28 = c1582fM2668b.f3928h;
        float f29 = (f25 * f26) - (f27 * f28);
        float f30 = c1582fM2668b.f3927g;
        float f31 = c1582fM2668b.f3924d;
        float f32 = (f27 * f30) - (f31 * f26);
        float f33 = (f31 * f28) - (f25 * f30);
        float f34 = c1582fM2668b.f3923c;
        float f35 = c1582fM2668b.f3922b;
        float f36 = (f34 * f28) - (f35 * f26);
        float f37 = c1582fM2668b.f3921a;
        float f38 = (f26 * f37) - (f34 * f30);
        float f39 = (f30 * f35) - (f28 * f37);
        float f40 = (f35 * f27) - (f34 * f25);
        float f41 = (f34 * f31) - (f27 * f37);
        float f42 = (f37 * f25) - (f35 * f31);
        C1582f c1582fM2668b2 = m2668b(f17, f18, f19, f20, f21, f22, f23, f24);
        float f43 = c1582fM2668b2.f3921a;
        float f44 = c1582fM2668b2.f3924d;
        float f45 = c1582fM2668b2.f3927g;
        float f46 = (f45 * f40) + (f44 * f36) + (f43 * f29);
        float f47 = (f45 * f41) + (f44 * f38) + (f43 * f32);
        float f48 = f45 * f42;
        float f49 = f48 + (f44 * f39) + (f43 * f33);
        float f50 = c1582fM2668b2.f3922b;
        float f51 = c1582fM2668b2.f3925e;
        float f52 = c1582fM2668b2.f3928h;
        float f53 = (f52 * f40) + (f51 * f36) + (f50 * f29);
        float f54 = (f52 * f41) + (f51 * f38) + (f50 * f32);
        float f55 = f52 * f42;
        float f56 = f55 + (f51 * f39) + (f50 * f33);
        float f57 = c1582fM2668b2.f3923c;
        float f58 = c1582fM2668b2.f3926f;
        float f59 = f36 * f58;
        float f60 = c1582fM2668b2.f3929i;
        return new C1582f(f46, f47, f49, f53, f54, f56, (f40 * f60) + f59 + (f29 * f57), (f41 * f60) + (f38 * f58) + (f32 * f57), (f60 * f42) + (f58 * f39) + (f57 * f33));
    }

    /* JADX INFO: renamed from: b */
    public static C1582f m2668b(float f8, float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
        float f17 = ((f8 - f11) + f13) - f15;
        float f18 = ((f10 - f12) + f14) - f16;
        if (f17 == 0.0f && f18 == 0.0f) {
            return new C1582f(f11 - f8, f13 - f11, f8, f12 - f10, f14 - f12, f10, 0.0f, 0.0f, 1.0f);
        }
        float f19 = f11 - f13;
        float f20 = f15 - f13;
        float f21 = f12 - f14;
        float f22 = f16 - f14;
        float f23 = (f19 * f22) - (f20 * f21);
        float f24 = ((f22 * f17) - (f20 * f18)) / f23;
        float f25 = ((f19 * f18) - (f17 * f21)) / f23;
        return new C1582f((f24 * f11) + (f11 - f8), (f25 * f15) + (f15 - f8), f8, (f24 * f12) + (f12 - f10), (f25 * f16) + (f16 - f10), f10, f24, f25, 1.0f);
    }
}
