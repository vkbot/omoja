package g6;

import f6.b;
import z5.i;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f2385a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2386b;
    public final int c;
    public final int d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2387f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f2388g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(b bVar, int i9, int i10, int i11) throws i {
        this.f2385a = bVar;
        int i12 = bVar.c;
        this.f2386b = i12;
        int i13 = bVar.f2258b;
        this.c = i13;
        int i14 = i9 / 2;
        int i15 = i10 - i14;
        this.d = i15;
        int i16 = i10 + i14;
        this.e = i16;
        int i17 = i11 - i14;
        this.f2388g = i17;
        int i18 = i11 + i14;
        this.f2387f = i18;
        if (i17 < 0 || i15 < 0 || i18 >= i12 || i16 >= i13) {
            throw i.d;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean a(int i9, int i10, int i11, boolean z8) {
        b bVar = this.f2385a;
        if (z8) {
            while (i9 <= i10) {
                if (bVar.b(i9, i11)) {
                    return true;
                }
                i9++;
            }
            return false;
        }
        while (i9 <= i10) {
            if (bVar.b(i11, i9)) {
                return true;
            }
            i9++;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final o[] b() throws i {
        int i9;
        int i10;
        int i11 = this.d;
        int i12 = this.e;
        int i13 = this.f2388g;
        int i14 = this.f2387f;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = true;
        while (true) {
            i9 = this.c;
            if (!z13) {
                break;
            }
            boolean z14 = false;
            boolean zA = true;
            while (true) {
                if ((!zA && z9) || i12 >= i9) {
                    break;
                }
                zA = a(i13, i14, i12, false);
                if (zA) {
                    i12++;
                    z9 = true;
                    z14 = true;
                } else if (!z9) {
                    i12++;
                }
            }
            if (i12 < i9) {
                boolean zA2 = true;
                while (true) {
                    i10 = this.f2386b;
                    if ((!zA2 && z10) || i14 >= i10) {
                        break;
                    }
                    zA2 = a(i11, i12, i14, true);
                    if (zA2) {
                        i14++;
                        z10 = true;
                        z14 = true;
                    } else if (!z10) {
                        i14++;
                    }
                }
                if (i14 < i10) {
                    boolean zA3 = true;
                    while (true) {
                        if ((!zA3 && z11) || i11 < 0) {
                            break;
                        }
                        zA3 = a(i13, i14, i11, false);
                        if (zA3) {
                            i11--;
                            z11 = true;
                            z14 = true;
                        } else if (!z11) {
                            i11--;
                        }
                    }
                    if (i11 >= 0) {
                        z13 = z14;
                        boolean zA4 = true;
                        while (true) {
                            if ((!zA4 && z12) || i13 < 0) {
                                break;
                            }
                            zA4 = a(i11, i12, i13, true);
                            if (zA4) {
                                i13--;
                                z13 = true;
                                z12 = true;
                            } else if (!z12) {
                                i13--;
                            }
                        }
                        if (i13 < 0) {
                        }
                    }
                }
            }
            z8 = true;
            break;
        }
        if (z8) {
            throw i.d;
        }
        int i15 = i12 - i11;
        o oVarC = null;
        o oVarC2 = null;
        for (int i16 = 1; oVarC2 == null && i16 < i15; i16++) {
            oVarC2 = c(i11, i14 - i16, i11 + i16, i14);
        }
        if (oVarC2 == null) {
            throw i.d;
        }
        o oVarC3 = null;
        for (int i17 = 1; oVarC3 == null && i17 < i15; i17++) {
            oVarC3 = c(i11, i13 + i17, i11 + i17, i13);
        }
        if (oVarC3 == null) {
            throw i.d;
        }
        o oVarC4 = null;
        for (int i18 = 1; oVarC4 == null && i18 < i15; i18++) {
            oVarC4 = c(i12, i13 + i18, i12 - i18, i13);
        }
        if (oVarC4 == null) {
            throw i.d;
        }
        for (int i19 = 1; oVarC == null && i19 < i15; i19++) {
            oVarC = c(i12, i14 - i19, i12 - i19, i14);
        }
        if (oVarC == null) {
            throw i.d;
        }
        float f8 = oVarC.f6339a;
        float f9 = oVarC.f6340b;
        float f10 = oVarC2.f6339a;
        float f11 = oVarC2.f6340b;
        float f12 = oVarC4.f6339a;
        float f13 = oVarC4.f6340b;
        float f14 = oVarC3.f6339a;
        float f15 = oVarC3.f6340b;
        return f8 < ((float) i9) / 2.0f ? new o[]{new o(f14 - 1.0f, f15 + 1.0f), new o(f10 + 1.0f, f11 + 1.0f), new o(f12 - 1.0f, f13 - 1.0f), new o(f8 + 1.0f, f9 - 1.0f)} : new o[]{new o(f14 + 1.0f, f15 + 1.0f), new o(f10 + 1.0f, f11 - 1.0f), new o(f12 - 1.0f, f13 + 1.0f), new o(f8 - 1.0f, f9 - 1.0f)};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final o c(float f8, float f9, float f10, float f11) {
        int iU = a.a.u(a.a.g(f8, f9, f10, f11));
        float f12 = iU;
        float f13 = (f10 - f8) / f12;
        float f14 = (f11 - f9) / f12;
        for (int i9 = 0; i9 < iU; i9++) {
            float f15 = i9;
            int iU2 = a.a.u((f15 * f13) + f8);
            int iU3 = a.a.u((f15 * f14) + f9);
            if (this.f2385a.b(iU2, iU3)) {
                return new o(iU2, iU3);
            }
        }
        return null;
    }

    public a(b bVar) {
        this(bVar, 10, bVar.f2258b / 2, bVar.c / 2);
    }
}
