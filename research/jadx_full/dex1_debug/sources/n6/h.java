package n6;

import java.util.Arrays;
import java.util.EnumMap;
import java.util.Map;
import z5.l;
import z5.m;
import z5.n;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class h implements z5.k {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float d(int[] iArr, int[] iArr2, float f8) {
        int length = iArr.length;
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            i9 += iArr[i11];
            i10 += iArr2[i11];
        }
        if (i9 < i10) {
            return Float.POSITIVE_INFINITY;
        }
        float f9 = i9;
        float f10 = f9 / i10;
        float f11 = f8 * f10;
        float f12 = 0.0f;
        for (int i12 = 0; i12 < length; i12++) {
            int i13 = iArr[i12];
            float f13 = iArr2[i12] * f10;
            float f14 = i13;
            float f15 = f14 > f13 ? f14 - f13 : f13 - f14;
            if (f15 > f11) {
                return Float.POSITIVE_INFINITY;
            }
            f12 += f15;
        }
        return f12 / f9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void e(int i9, f6.a aVar, int[] iArr) throws z5.i {
        int length = iArr.length;
        int i10 = 0;
        Arrays.fill(iArr, 0, length, 0);
        int i11 = aVar.c;
        if (i9 >= i11) {
            throw z5.i.d;
        }
        boolean z8 = !aVar.d(i9);
        while (i9 < i11) {
            if (aVar.d(i9) == z8) {
                i10++;
                if (i10 == length) {
                    break;
                }
                iArr[i10] = 1;
                z8 = !z8;
            } else {
                iArr[i10] = iArr[i10] + 1;
            }
            i9++;
        }
        if (i10 != length) {
            if (i10 != length - 1 || i9 != i11) {
                throw z5.i.d;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void f(int i9, f6.a aVar, int[] iArr) throws z5.i {
        int length = iArr.length;
        boolean zD = aVar.d(i9);
        while (i9 > 0 && length >= 0) {
            i9--;
            if (aVar.d(i9) != zD) {
                length--;
                zD = !zD;
            }
        }
        if (length >= 0) {
            throw z5.i.d;
        }
        e(i9 + 1, aVar, iArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z5.k
    public m a(z5.b bVar, Map map) throws z5.i {
        try {
            return c(bVar, map);
        } catch (z5.i e) {
            if (map == null || !map.containsKey(z5.d.e) || !bVar.f6313a.f2265a.c()) {
                throw e;
            }
            z5.g gVarD = bVar.f6313a.f2265a.d();
            m mVarC = c(new z5.b(new f6.e(gVarD)), map);
            Map map2 = mVarC.e;
            n nVar = n.f6331b;
            int iIntValue = 270;
            if (map2 != null && map2.containsKey(nVar)) {
                iIntValue = (((Integer) map2.get(nVar)).intValue() + 270) % 360;
            }
            mVarC.b(nVar, Integer.valueOf(iIntValue));
            o[] oVarArr = mVarC.c;
            if (oVarArr != null) {
                int i9 = gVarD.f6325b;
                for (int i10 = 0; i10 < oVarArr.length; i10++) {
                    o oVar = oVarArr[i10];
                    oVarArr[i10] = new o((i9 - oVar.f6340b) - 1.0f, oVar.f6339a);
                }
            }
            return mVarC;
        }
    }

    public abstract m b(int i9, f6.a aVar, Map map);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final m c(z5.b bVar, Map map) throws z5.i {
        int i9;
        z5.b bVar2 = bVar;
        Map map2 = map;
        z5.g gVar = bVar2.f6313a.f2265a;
        int i10 = gVar.f6324a;
        int i11 = gVar.f6325b;
        f6.a aVar = new f6.a(i10);
        int i12 = 1;
        boolean z8 = map2 != null && map2.containsKey(z5.d.e);
        int iMax = Math.max(1, i11 >> (z8 ? 8 : 5));
        int i13 = z8 ? i11 : 15;
        int i14 = i11 / 2;
        int i15 = 0;
        while (i15 < i13) {
            int i16 = i15 + 1;
            int i17 = i16 / 2;
            if ((i15 & 1) != 0) {
                i17 = -i17;
            }
            int i18 = (i17 * iMax) + i14;
            if (i18 < 0 || i18 >= i11) {
                break;
            }
            try {
                aVar = bVar2.b(aVar, i18);
                int i19 = 0;
                while (i19 < 2) {
                    if (i19 == i12) {
                        aVar.i();
                        if (map2 != null) {
                            Object obj = z5.d.f6320k;
                            if (map2.containsKey(obj)) {
                                EnumMap enumMap = new EnumMap(z5.d.class);
                                enumMap.putAll(map2);
                                enumMap.remove(obj);
                                map2 = enumMap;
                            }
                        }
                    }
                    try {
                        m mVarB = b(i18, aVar, map2);
                        if (i19 == i12) {
                            try {
                                mVarB.b(n.f6331b, 180);
                                o[] oVarArr = mVarB.c;
                                if (oVarArr != null) {
                                    i9 = i12;
                                    float f8 = i10;
                                    try {
                                        o oVar = oVarArr[0];
                                        try {
                                            oVarArr[0] = new o((f8 - oVar.f6339a) - 1.0f, oVar.f6340b);
                                            o oVar2 = oVarArr[i9];
                                            oVarArr[i9] = new o((f8 - oVar2.f6339a) - 1.0f, oVar2.f6340b);
                                        } catch (l unused) {
                                            continue;
                                            i19++;
                                            map2 = map2;
                                            i12 = i9;
                                        }
                                    } catch (l unused2) {
                                    }
                                }
                            } catch (l unused3) {
                                i9 = i12;
                            }
                        }
                        return mVarB;
                    } catch (l unused4) {
                        i9 = i12;
                    }
                }
            } catch (z5.i unused5) {
            }
            bVar2 = bVar;
            i15 = i16;
            i12 = i12;
        }
        throw z5.i.d;
    }

    @Override // z5.k
    public void reset() {
    }
}
