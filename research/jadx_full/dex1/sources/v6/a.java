package v6;

import f6.d;
import j6.c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import w6.f;
import z5.b;
import z5.e;
import z5.i;
import z5.k;
import z5.m;
import z5.n;
import z5.o;
import z5.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final o[] f5529b = new o[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f5530a = new c(2);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:217:0x0425  */
    /* JADX WARN: Code duplicated, block: B:219:0x0432  */
    /* JADX WARN: Code duplicated, block: B:222:0x046b  */
    /* JADX WARN: Code duplicated, block: B:223:0x047b  */
    @Override // z5.k
    public final m a(b bVar, Map map) throws z5.c, e, i {
        int i9;
        ArrayList arrayList;
        x6.c cVar;
        x6.c cVar2;
        x6.c cVar3;
        float f8;
        float f9;
        x6.a aVarO;
        float f10;
        float f11;
        float f12;
        float f13;
        int i10;
        o[] oVarArr;
        d dVarD;
        double d;
        int i11;
        int iAbs;
        int i12;
        int i13 = 3;
        c cVar4 = this.f5530a;
        int i14 = 1;
        int i15 = 0;
        if (map == null || !map.containsKey(z5.d.c)) {
            f6.b bVarA = bVar.a();
            l.d dVar = new l.d(23, bVarA);
            p pVar = map == null ? null : (p) map.get(z5.d.f6320k);
            dVar.d = pVar;
            x6.e eVar = new x6.e(bVarA, pVar);
            boolean z8 = map != null && map.containsKey(z5.d.e);
            int i16 = bVarA.c;
            int i17 = bVarA.f2258b;
            int i18 = (i16 * 3) / 388;
            if (i18 < 3 || z8) {
                i18 = 3;
            }
            int[] iArr = new int[5];
            int i19 = i18 - 1;
            boolean zD = false;
            while (true) {
                i9 = i13;
                arrayList = eVar.f6039b;
                if (i19 >= i16 || zD) {
                    break;
                }
                Arrays.fill(iArr, i15);
                int i20 = i18;
                int i21 = i15;
                while (i15 < i17) {
                    if (bVarA.b(i15, i19)) {
                        if ((i21 & 1) == i14) {
                            i21++;
                        }
                        iArr[i21] = iArr[i21] + i14;
                    } else if ((i21 & 1) != 0) {
                        iArr[i21] = iArr[i21] + 1;
                    } else if (i21 == 4) {
                        if (!x6.e.b(iArr)) {
                            int i22 = i14;
                            iArr[0] = iArr[2];
                            iArr[i22] = iArr[i9];
                            iArr[2] = iArr[4];
                            iArr[i9] = i22;
                            iArr[4] = 0;
                        } else if (eVar.c(i19, i15, iArr)) {
                            if (eVar.c) {
                                zD = eVar.d();
                                i11 = 2;
                            } else {
                                if (arrayList.size() > i14) {
                                    int size = arrayList.size();
                                    x6.c cVar5 = null;
                                    int i23 = 0;
                                    while (true) {
                                        if (i23 >= size) {
                                            i15 = i15;
                                            i11 = 2;
                                            iAbs = 0;
                                            break;
                                        }
                                        Object obj = arrayList.get(i23);
                                        i23++;
                                        x6.c cVar6 = (x6.c) obj;
                                        i15 = i15;
                                        size = size;
                                        if (cVar6.d >= 2) {
                                            if (cVar5 != null) {
                                                eVar.c = true;
                                                i11 = 2;
                                                iAbs = ((int) (Math.abs(cVar5.f6339a - cVar6.f6339a) - Math.abs(cVar5.f6340b - cVar6.f6340b))) / 2;
                                                break;
                                            }
                                            cVar5 = cVar6;
                                        }
                                    }
                                } else {
                                    i15 = i15;
                                    iAbs = 0;
                                    i11 = 2;
                                }
                                int i24 = iArr[i11];
                                if (iAbs > i24) {
                                    i19 += (iAbs - i24) - 2;
                                    i15 = i17 - 1;
                                } else {
                                    i15 = i15;
                                }
                            }
                            Arrays.fill(iArr, 0);
                            i21 = 0;
                            i20 = i11;
                        } else {
                            iArr[0] = iArr[2];
                            iArr[1] = iArr[i9];
                            iArr[2] = iArr[4];
                            iArr[i9] = 1;
                            iArr[4] = 0;
                        }
                        i21 = i9;
                    } else {
                        int i25 = i21 + 1;
                        iArr[i25] = iArr[i25] + 1;
                        i21 = i25;
                    }
                    i15++;
                    i14 = 1;
                }
                if (x6.e.b(iArr) && eVar.c(i19, i17, iArr)) {
                    int i26 = iArr[0];
                    if (eVar.c) {
                        i18 = i26;
                        zD = eVar.d();
                    } else {
                        i18 = i26;
                    }
                } else {
                    i18 = i20;
                }
                i19 += i18;
                i13 = i9;
                i14 = 1;
                i15 = 0;
            }
            if (arrayList.size() < i9) {
                throw i.d;
            }
            arrayList.sort(x6.e.f6037f);
            x6.c[] cVarArr = new x6.c[i9];
            int i27 = 0;
            double d9 = Double.MAX_VALUE;
            while (i27 < arrayList.size() - 2) {
                x6.c cVar7 = (x6.c) arrayList.get(i27);
                float f14 = cVar7.c;
                i27++;
                int i28 = i27;
                while (i28 < arrayList.size() - 1) {
                    x6.c cVar8 = (x6.c) arrayList.get(i28);
                    double dE = x6.e.e(cVar7, cVar8);
                    i28++;
                    for (int i29 = i28; i29 < arrayList.size(); i29++) {
                        x6.c cVar9 = (x6.c) arrayList.get(i29);
                        if (cVar9.c <= 1.4f * f14) {
                            double dE2 = x6.e.e(cVar8, cVar9);
                            double dE3 = x6.e.e(cVar7, cVar9);
                            if (dE < dE2) {
                                if (dE2 <= dE3) {
                                    dE3 = dE2;
                                    dE2 = dE3;
                                } else if (dE >= dE3) {
                                    d = dE3;
                                    dE3 = dE;
                                }
                                d = dE;
                            } else {
                                if (dE2 >= dE3) {
                                    d = dE3;
                                    dE3 = dE2;
                                } else if (dE < dE3) {
                                    d = dE2;
                                    dE2 = dE3;
                                    dE3 = dE;
                                } else {
                                    d = dE2;
                                }
                                dE2 = dE;
                            }
                            double dAbs = Math.abs(dE2 - (d * 2.0d)) + Math.abs(dE2 - (dE3 * 2.0d));
                            if (dAbs < d9) {
                                cVarArr[0] = cVar7;
                                cVarArr[1] = cVar8;
                                cVarArr[2] = cVar9;
                                d9 = dAbs;
                            }
                        }
                    }
                }
            }
            if (d9 == Double.MAX_VALUE) {
                throw i.d;
            }
            float fA = o.a(cVarArr[0], cVarArr[1]);
            float fA2 = o.a(cVarArr[1], cVarArr[2]);
            float fA3 = o.a(cVarArr[0], cVarArr[2]);
            if (fA2 >= fA && fA2 >= fA3) {
                cVar = cVarArr[0];
                cVar2 = cVarArr[1];
                cVar3 = cVarArr[2];
            } else if (fA3 < fA2 || fA3 < fA) {
                cVar = cVarArr[2];
                cVar2 = cVarArr[0];
                cVar3 = cVarArr[1];
            } else {
                cVar = cVarArr[1];
                cVar2 = cVarArr[0];
                cVar3 = cVarArr[2];
            }
            float f15 = cVar.f6339a;
            float f16 = cVar.f6340b;
            if (((cVar2.f6340b - f16) * (cVar3.f6339a - f15)) - ((cVar2.f6339a - f15) * (cVar3.f6340b - f16)) < 0.0f) {
                x6.c cVar10 = cVar3;
                cVar3 = cVar2;
                cVar2 = cVar10;
            }
            cVarArr[0] = cVar2;
            cVarArr[1] = cVar;
            cVarArr[2] = cVar3;
            float fI = dVar.i(cVar, cVar3);
            float f17 = cVar.f6339a;
            float f18 = cVar3.f6340b;
            float f19 = cVar3.f6339a;
            float fI2 = dVar.i(cVar, cVar2);
            float f20 = cVar2.f6340b;
            float f21 = cVar2.f6339a;
            float f22 = (fI2 + fI) / 2.0f;
            if (f22 < 1.0f) {
                throw i.d;
            }
            int iU = (a.a.u(o.a(cVar, cVar2) / f22) + a.a.u(o.a(cVar, cVar3) / f22)) / 2;
            int i30 = iU + 7;
            int i31 = i30 & 3;
            if (i31 == 0) {
                i30 = iU + 8;
            } else if (i31 == 2) {
                i30 = iU + 6;
            } else if (i31 == 3) {
                throw i.d;
            }
            int i32 = i30;
            int[] iArr2 = f.e;
            if (i32 % 4 != 1) {
                throw e.a();
            }
            try {
                f fVarC = f.c((i32 - 17) / 4);
                int i33 = (fVarC.f5943a * 4) + 10;
                if (fVarC.f5944b.length > 0) {
                    float f23 = (f19 - f17) + f21;
                    f9 = f19;
                    float f24 = (f18 - f16) + f20;
                    float f25 = 1.0f - (3.0f / i33);
                    int iB = (int) ai.onnxruntime.a.b(f23, f17, f25, f17);
                    int iB2 = (int) ai.onnxruntime.a.b(f24, f16, f25, f16);
                    f8 = f17;
                    int i34 = 4;
                    while (true) {
                        if (i34 <= 16) {
                            try {
                                aVarO = dVar.o(f22, i34, iB, iB2);
                                break;
                            } catch (i unused) {
                                i34 <<= 1;
                            }
                        }
                    }
                    f10 = i32 - 3.5f;
                    if (aVarO != null) {
                        f11 = aVarO.f6339a;
                        f12 = aVarO.f6340b;
                        f13 = f10 - 3.0f;
                    } else {
                        f11 = (f9 - f8) + f21;
                        f12 = (f18 - f16) + f20;
                        f13 = f10;
                    }
                    f6.b bVarQ = y5.k.q(bVarA, i32, i32, f6.f.a(3.5f, 3.5f, f10, 3.5f, f13, f13, 3.5f, f10, cVar.f6339a, cVar.f6340b, cVar3.f6339a, cVar3.f6340b, f11, f12, cVar2.f6339a, cVar2.f6340b));
                    if (aVarO == null) {
                        i10 = 3;
                        oVarArr = new o[]{cVar2, cVar, cVar3};
                    } else {
                        i10 = 3;
                        oVarArr = new o[]{cVar2, cVar, cVar3, aVarO};
                    }
                    dVarD = cVar4.d(bVarQ, map);
                } else {
                    f8 = f17;
                    f9 = f19;
                }
                aVarO = null;
                f10 = i32 - 3.5f;
                if (aVarO != null) {
                    f11 = aVarO.f6339a;
                    f12 = aVarO.f6340b;
                    f13 = f10 - 3.0f;
                } else {
                    f11 = (f9 - f8) + f21;
                    f12 = (f18 - f16) + f20;
                    f13 = f10;
                }
                f6.b bVarQ2 = y5.k.q(bVarA, i32, i32, f6.f.a(3.5f, 3.5f, f10, 3.5f, f13, f13, 3.5f, f10, cVar.f6339a, cVar.f6340b, cVar3.f6339a, cVar3.f6340b, f11, f12, cVar2.f6339a, cVar2.f6340b));
                if (aVarO == null) {
                    i10 = 3;
                    oVarArr = new o[]{cVar2, cVar, cVar3};
                } else {
                    i10 = 3;
                    oVarArr = new o[]{cVar2, cVar, cVar3, aVarO};
                }
                dVarD = cVar4.d(bVarQ2, map);
            } catch (IllegalArgumentException unused2) {
                throw e.a();
            }
        } else {
            f6.b bVarA2 = bVar.a();
            int[] iArrE = bVarA2.e();
            int i35 = bVarA2.f2258b;
            int[] iArrC = bVarA2.c();
            if (iArrE == null || iArrC == null) {
                throw i.d;
            }
            int i36 = bVarA2.c;
            int i37 = iArrE[0];
            int i38 = iArrE[1];
            boolean z9 = true;
            int i39 = 0;
            while (i37 < i35 && i38 < i36) {
                if (z9 != bVarA2.b(i37, i38)) {
                    int i40 = i39 + 1;
                    if (i40 == 5) {
                        break;
                    }
                    z9 = !z9;
                    i39 = i40;
                }
                i37++;
                i38++;
            }
            if (i37 == i35 || i38 == i36) {
                throw i.d;
            }
            int i41 = iArrE[0];
            float f26 = (i37 - i41) / 7.0f;
            int i42 = iArrE[1];
            int i43 = iArrC[1];
            int i44 = iArrC[0];
            if (i41 >= i44 || i42 >= i43) {
                throw i.d;
            }
            int i45 = i43 - i42;
            if (i45 != i44 - i41 && (i44 = i41 + i45) >= i35) {
                throw i.d;
            }
            int iRound = Math.round(((i44 - i41) + 1) / f26);
            int iRound2 = Math.round((i45 + 1) / f26);
            if (iRound <= 0 || iRound2 <= 0) {
                throw i.d;
            }
            if (iRound2 != iRound) {
                throw i.d;
            }
            int i46 = (int) (f26 / 2.0f);
            int i47 = i42 + i46;
            int i48 = i41 + i46;
            int i49 = (((int) ((iRound - 1) * f26)) + i48) - i44;
            if (i49 > 0) {
                if (i49 > i46) {
                    throw i.d;
                }
                i48 -= i49;
            }
            int i50 = (((int) ((iRound2 - 1) * f26)) + i47) - i43;
            if (i50 > 0) {
                if (i50 > i46) {
                    throw i.d;
                }
                i47 -= i50;
            }
            f6.b bVar2 = new f6.b(iRound, iRound2);
            for (int i51 = 0; i51 < iRound2; i51++) {
                int i52 = ((int) (i51 * f26)) + i47;
                for (int i53 = 0; i53 < iRound; i53++) {
                    if (bVarA2.b(((int) (i53 * f26)) + i48, i52)) {
                        bVar2.f(i53, i51);
                    }
                }
            }
            dVarD = cVar4.d(bVar2, map);
            oVarArr = f5529b;
            i10 = 3;
        }
        int i54 = dVarD.f2262b;
        if ((dVarD.f2264g instanceof w6.e) && oVarArr.length >= i10) {
            o oVar = oVarArr[0];
            oVarArr[0] = oVarArr[2];
            oVarArr[2] = oVar;
        }
        m mVar = new m(dVarD.f2261a, (byte[]) dVarD.d, oVarArr, z5.a.f6307m);
        List list = (List) dVarD.f2263f;
        if (list != null) {
            mVar.b(n.c, list);
        }
        String str = (String) dVarD.e;
        if (str != null) {
            mVar.b(n.d, str);
        }
        if (i54 >= 0 && (i12 = dVarD.c) >= 0) {
            mVar.b(n.f6336j, Integer.valueOf(i12));
            mVar.b(n.f6337k, Integer.valueOf(i54));
        }
        return mVar;
    }

    @Override // z5.k
    public final void reset() {
    }
}
