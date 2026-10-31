package c6;

import f6.f;
import r5.c;
import y5.k;
import z5.i;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[] f502g = {3808, 476, 2107, 1799};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f6.b f503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f504b;
    public int c;
    public int d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f505f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(f6.b bVar) {
        this.f503a = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static o[] b(o[] oVarArr, int i9, int i10) {
        float f8 = i10 / (i9 * 2.0f);
        o oVar = oVarArr[0];
        float f9 = oVar.f6339a;
        o oVar2 = oVarArr[2];
        float f10 = oVar2.f6339a;
        float f11 = f9 - f10;
        float f12 = oVar.f6340b;
        float f13 = oVar2.f6340b;
        float f14 = f12 - f13;
        float f15 = (f9 + f10) / 2.0f;
        float f16 = (f12 + f13) / 2.0f;
        float f17 = f11 * f8;
        float f18 = f14 * f8;
        o oVar3 = new o(f15 + f17, f16 + f18);
        o oVar4 = new o(f15 - f17, f16 - f18);
        o oVar5 = oVarArr[1];
        float f19 = oVar5.f6339a;
        o oVar6 = oVarArr[3];
        float f20 = oVar6.f6339a;
        float f21 = f19 - f20;
        float f22 = oVar5.f6340b;
        float f23 = oVar6.f6340b;
        float f24 = f22 - f23;
        float f25 = (f19 + f20) / 2.0f;
        float f26 = (f22 + f23) / 2.0f;
        float f27 = f21 * f8;
        float f28 = f8 * f24;
        return new o[]{oVar3, new o(f25 + f27, f26 + f28), oVar4, new o(f25 - f27, f26 - f28)};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r4v19, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r4v3, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r4v4, resolved type: boolean */
    /* JADX WARN: Multi-variable type inference failed */
    public final a6.a a(boolean z8) throws i {
        o oVarA;
        o oVar;
        o oVar2;
        o oVar3;
        int iU;
        int iU2;
        char c;
        o oVarA2;
        o oVarA3;
        o oVar4;
        o oVar5;
        a aVar;
        boolean z9;
        a aVar2;
        a aVar3;
        a aVar4;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        long j9;
        int i17;
        f6.b bVar = this.f503a;
        int i18 = -1;
        int i19 = 1;
        int i20 = 0;
        try {
            try {
                o[] oVarArrB = new g6.a(bVar).b();
                oVar2 = oVarArrB[0];
                oVar3 = oVarArrB[1];
                oVar = oVarArrB[2];
                oVarA = oVarArrB[3];
                while (true) {
                    i9 = aVar4.c;
                    i10 = aVar4.f501b;
                    i11 = aVar.c;
                    i12 = i20;
                    i13 = aVar.f501b;
                    char c9 = c;
                    if (this.e >= 9) {
                        i14 = i19;
                        break;
                    }
                    a aVarE = e(aVar, z9, i19, i18);
                    int i21 = aVarE.c;
                    int i22 = aVarE.f501b;
                    a aVarE2 = e(aVar2, z9, i19, i19);
                    a aVarE3 = e(aVar3, z9, i18, i19);
                    a aVarE4 = e(aVar4, z9, i18, i18);
                    int i23 = aVarE4.c;
                    i14 = i19;
                    int i24 = aVarE4.f501b;
                    boolean z10 = z9;
                    if (this.e > 2) {
                        double dH = (a.a.h(i24, i23, i22, i21) * this.e) / (a.a.h(i10, i9, i13, i11) * (this.e + 2));
                        if (dH < 0.75d || dH > 1.25d) {
                            break;
                        }
                        a aVar5 = new a(i22 - 3, i21 + 3, 0);
                        a aVar6 = new a(aVarE2.f501b - 3, aVarE2.c - 3, 0);
                        a aVar7 = new a(aVarE3.f501b + 3, aVarE3.c - 3, 0);
                        a aVar8 = new a(i24 + 3, i23 + 3, 0);
                        int iC = c(aVar8, aVar5);
                        if (iC == 0 || c(aVar5, aVar6) != iC || c(aVar6, aVar7) != iC || c(aVar7, aVar8) != iC) {
                            break;
                        }
                    }
                    z9 = !z10;
                    this.e++;
                    aVar3 = aVarE3;
                    i20 = i12;
                    c = c9;
                    aVar = aVarE;
                    i19 = i14;
                    aVar4 = aVarE4;
                    aVar2 = aVarE2;
                    i18 = -1;
                }
            } catch (i unused) {
                int i25 = bVar.f2258b / 2;
                int i26 = bVar.c / 2;
                int i27 = i25 + 7;
                int i28 = i26 - 7;
                o oVarA4 = e(new a(i27, i28, 0), false, 1, -1).a();
                int i29 = i26 + 7;
                o oVarA5 = e(new a(i27, i29, 0), false, 1, 1).a();
                int i30 = i25 - 7;
                o oVarA6 = e(new a(i30, i29, 0), false, -1, 1).a();
                oVarA = e(new a(i30, i28, 0), false, -1, -1).a();
                oVar = oVarA6;
                oVar2 = oVarA4;
                oVar3 = oVarA5;
            }
            o[] oVarArrB2 = new g6.a(bVar, 15, iU, iU2).b();
            oVar5 = oVarArrB2[0];
            oVar4 = oVarArrB2[1];
            oVarA2 = oVarArrB2[2];
            oVarA3 = oVarArrB2[3];
        } catch (i unused2) {
            int i31 = iU + 7;
            int i32 = iU2 - 7;
            o oVarA7 = e(new a(i31, i32, 0), false, 1, -1).a();
            int i33 = iU2 + 7;
            o oVarA8 = e(new a(i31, i33, 0), false, 1, 1).a();
            int i34 = iU - 7;
            oVarA2 = e(new a(i34, i33, 0), false, -1, 1).a();
            oVarA3 = e(new a(i34, i32, 0), false, -1, -1).a();
            oVar4 = oVarA8;
            oVar5 = oVarA7;
        }
        iU = a.a.u((((oVar2.f6339a + oVarA.f6339a) + oVar3.f6339a) + oVar.f6339a) / 4.0f);
        iU2 = a.a.u((((oVar2.f6340b + oVarA.f6340b) + oVar3.f6340b) + oVar.f6340b) / 4.0f);
        c = 15;
        aVar = new a(a.a.u((((oVar5.f6339a + oVarA3.f6339a) + oVar4.f6339a) + oVarA2.f6339a) / 4.0f), a.a.u((((oVar5.f6340b + oVarA3.f6340b) + oVar4.f6340b) + oVarA2.f6340b) / 4.0f), 0);
        this.e = 1;
        z9 = true;
        aVar2 = aVar;
        aVar3 = aVar2;
        aVar4 = aVar3;
        int i35 = this.e;
        if (i35 != 5 && i35 != 7) {
            throw i.d;
        }
        this.f504b = i35 == 5 ? i14 : i12;
        int i36 = i35 * 2;
        o[] oVarArrB3 = b(new o[]{new o(i13 + 0.5f, i11 - 0.5f), new o(aVar2.f501b + 0.5f, aVar2.c + 0.5f), new o(aVar3.f501b - 0.5f, aVar3.c + 0.5f), new o(i10 - 0.5f, i9 - 0.5f)}, i36 - 3, i36);
        if (z8) {
            o oVar6 = oVarArrB3[i12];
            oVarArrB3[i12] = oVarArrB3[2];
            oVarArrB3[2] = oVar6;
        }
        if (!g(oVarArrB3[i12]) || !g(oVarArrB3[i14]) || !g(oVarArrB3[2]) || !g(oVarArrB3[r2])) {
            throw i.d;
        }
        int i37 = this.e * 2;
        int[] iArr = {h(oVarArrB3[i12], oVarArrB3[i14], i37), h(oVarArrB3[i14], oVarArrB3[2], i37), h(oVarArrB3[2], oVarArrB3[r2], i37), h(oVarArrB3[3], oVarArrB3[i12], i37)};
        int i38 = i12;
        int i39 = i38;
        while (i38 < 4) {
            int i40 = iArr[i38];
            i39 = (i39 << 3) + ((i40 >> (i37 - 2)) << 1) + (i40 & 1);
            i38++;
        }
        int i41 = ((i39 & 1) << 11) + (i39 >> 1);
        for (int i42 = i12; i42 < 4; i42++) {
            if (Integer.bitCount(f502g[i42] ^ i41) <= 2) {
                this.f505f = i42;
                long j10 = 0;
                int i43 = i12;
                while (true) {
                    i15 = 10;
                    if (i43 >= 4) {
                        break;
                    }
                    int i44 = iArr[(this.f505f + i43) % 4];
                    if (this.f504b) {
                        j9 = j10 << 7;
                        i17 = (i44 >> 1) & 127;
                    } else {
                        j9 = j10 << 10;
                        i17 = ((i44 >> 2) & 992) + ((i44 >> 1) & 31);
                    }
                    j10 = j9 + ((long) i17);
                    i43++;
                }
                if (this.f504b) {
                    i15 = 7;
                    i16 = 2;
                } else {
                    i16 = 4;
                }
                int i45 = i15 - i16;
                int[] iArr2 = new int[i15];
                for (int i46 = i15 - 1; i46 >= 0; i46--) {
                    iArr2[i46] = ((int) j10) & 15;
                    j10 >>= 4;
                }
                try {
                    new c(19, h6.a.f2477k).f(iArr2, i45);
                    int i47 = i12;
                    for (int i48 = i47; i48 < i16; i48++) {
                        i47 = (i47 << 4) + iArr2[i48];
                    }
                    if (this.f504b) {
                        this.c = (i47 >> 6) + 1;
                        this.d = (i47 & 63) + 1;
                    } else {
                        this.c = (i47 >> 11) + 1;
                        this.d = (i47 & 2047) + 1;
                    }
                    int i49 = this.f505f;
                    o oVar7 = oVarArrB3[i49 % 4];
                    o oVar8 = oVarArrB3[(i49 + 1) % 4];
                    o oVar9 = oVarArrB3[(i49 + 2) % 4];
                    o oVar10 = oVarArrB3[(i49 + 3) % 4];
                    int iD = d();
                    float f8 = iD / 2.0f;
                    float f9 = this.e;
                    float f10 = f8 - f9;
                    float f11 = f8 + f9;
                    return new a6.a(k.q(bVar, iD, iD, f.a(f10, f10, f11, f10, f11, f11, f10, f11, oVar7.f6339a, oVar7.f6340b, oVar8.f6339a, oVar8.f6340b, oVar9.f6339a, oVar9.f6340b, oVar10.f6339a, oVar10.f6340b)), b(oVarArrB3, this.e * 2, d()), this.f504b, this.d, this.c);
                } catch (h6.c unused3) {
                    throw i.d;
                }
            }
        }
        throw i.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int c(a aVar, a aVar2) {
        int i9 = aVar.f501b;
        int i10 = aVar.c;
        int i11 = aVar2.f501b;
        int i12 = aVar2.c;
        float fH = a.a.h(i9, i10, i11, i12);
        float f8 = (i11 - i9) / fH;
        float f9 = (i12 - i10) / fH;
        float f10 = i9;
        float f11 = i10;
        f6.b bVar = this.f503a;
        boolean zB = bVar.b(i9, i10);
        int iCeil = (int) Math.ceil(fH);
        int i13 = 0;
        for (int i14 = 0; i14 < iCeil; i14++) {
            f10 += f8;
            f11 += f9;
            if (bVar.b(a.a.u(f10), a.a.u(f11)) != zB) {
                i13++;
            }
        }
        float f12 = i13 / fH;
        if (f12 <= 0.1f || f12 >= 0.9f) {
            return (f12 <= 0.1f) == zB ? 1 : -1;
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int d() {
        boolean z8 = this.f504b;
        int i9 = this.c;
        if (z8) {
            return (i9 * 4) + 11;
        }
        if (i9 <= 4) {
            return (i9 * 4) + 15;
        }
        return ((((i9 - 4) / 8) + 1) * 2) + (i9 * 4) + 15;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a e(a aVar, boolean z8, int i9, int i10) {
        f6.b bVar;
        int i11 = aVar.f501b + i9;
        int i12 = aVar.c;
        while (true) {
            i12 += i10;
            boolean zF = f(i11, i12);
            bVar = this.f503a;
            if (!zF || bVar.b(i11, i12) != z8) {
                break;
            }
            i11 += i9;
        }
        int i13 = i11 - i9;
        int i14 = i12 - i10;
        while (f(i13, i14) && bVar.b(i13, i14) == z8) {
            i13 += i9;
        }
        int i15 = i13 - i9;
        while (f(i15, i14) && bVar.b(i15, i14) == z8) {
            i14 += i10;
        }
        return new a(i15, i14 - i10, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean f(int i9, int i10) {
        if (i9 < 0) {
            return false;
        }
        f6.b bVar = this.f503a;
        return i9 < bVar.f2258b && i10 > 0 && i10 < bVar.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean g(o oVar) {
        return f(a.a.u(oVar.f6339a), a.a.u(oVar.f6340b));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int h(o oVar, o oVar2, int i9) {
        float f8 = oVar.f6339a;
        float f9 = oVar.f6340b;
        float f10 = oVar2.f6339a;
        float f11 = oVar2.f6340b;
        float fG = a.a.g(f8, f9, f10, f11);
        float f12 = fG / i9;
        float f13 = oVar.f6339a;
        float f14 = ((oVar2.f6339a - f13) * f12) / fG;
        float f15 = ((f11 - f9) * f12) / fG;
        int i10 = 0;
        for (int i11 = 0; i11 < i9; i11++) {
            float f16 = i11;
            if (this.f503a.b(a.a.u((f16 * f14) + f13), a.a.u((f16 * f15) + f9))) {
                i10 |= 1 << ((i9 - i11) - 1);
            }
        }
        return i10;
    }
}
