package f6;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f2267a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f2268b;
    public final float c;
    public final float d;
    public final float e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f2269f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f2270g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f2271h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f2272i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
        this.f2267a = f8;
        this.f2268b = f11;
        this.c = f14;
        this.d = f9;
        this.e = f12;
        this.f2269f = f15;
        this.f2270g = f10;
        this.f2271h = f13;
        this.f2272i = f16;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f a(float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, float f21, float f22, float f23) {
        f fVarB = b(f8, f9, f10, f11, f12, f13, f14, f15);
        float f24 = fVarB.e;
        float f25 = fVarB.f2272i;
        float f26 = fVarB.f2269f;
        float f27 = fVarB.f2271h;
        float f28 = (f24 * f25) - (f26 * f27);
        float f29 = fVarB.f2270g;
        float f30 = fVarB.d;
        float f31 = (f26 * f29) - (f30 * f25);
        float f32 = (f30 * f27) - (f24 * f29);
        float f33 = fVarB.c;
        float f34 = fVarB.f2268b;
        float f35 = (f33 * f27) - (f34 * f25);
        float f36 = fVarB.f2267a;
        float f37 = (f25 * f36) - (f33 * f29);
        float f38 = (f29 * f34) - (f27 * f36);
        float f39 = (f34 * f26) - (f33 * f24);
        float f40 = (f33 * f30) - (f26 * f36);
        float f41 = (f36 * f24) - (f34 * f30);
        f fVarB2 = b(f16, f17, f18, f19, f20, f21, f22, f23);
        float f42 = fVarB2.f2267a;
        float f43 = fVarB2.d;
        float f44 = fVarB2.f2270g;
        float f45 = (f44 * f39) + (f43 * f35) + (f42 * f28);
        float f46 = (f44 * f40) + (f43 * f37) + (f42 * f31);
        float f47 = f44 * f41;
        float f48 = f47 + (f43 * f38) + (f42 * f32);
        float f49 = fVarB2.f2268b;
        float f50 = fVarB2.e;
        float f51 = fVarB2.f2271h;
        float f52 = (f51 * f39) + (f50 * f35) + (f49 * f28);
        float f53 = (f51 * f40) + (f50 * f37) + (f49 * f31);
        float f54 = f51 * f41;
        float f55 = f54 + (f50 * f38) + (f49 * f32);
        float f56 = fVarB2.c;
        float f57 = fVarB2.f2269f;
        float f58 = f35 * f57;
        float f59 = fVarB2.f2272i;
        return new f(f45, f46, f48, f52, f53, f55, (f39 * f59) + f58 + (f28 * f56), (f40 * f59) + (f37 * f57) + (f31 * f56), (f59 * f41) + (f57 * f38) + (f56 * f32));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f b(float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15) {
        float f16 = ((f8 - f10) + f12) - f14;
        float f17 = ((f9 - f11) + f13) - f15;
        if (f16 == 0.0f && f17 == 0.0f) {
            return new f(f10 - f8, f12 - f10, f8, f11 - f9, f13 - f11, f9, 0.0f, 0.0f, 1.0f);
        }
        float f18 = f10 - f12;
        float f19 = f14 - f12;
        float f20 = f11 - f13;
        float f21 = f15 - f13;
        float f22 = (f18 * f21) - (f19 * f20);
        float f23 = ((f21 * f16) - (f19 * f17)) / f22;
        float f24 = ((f18 * f17) - (f16 * f20)) / f22;
        return new f((f23 * f10) + (f10 - f8), (f24 * f14) + (f14 - f8), f8, (f23 * f11) + (f11 - f9), (f24 * f15) + (f15 - f9), f9, f23, f24, 1.0f);
    }
}
