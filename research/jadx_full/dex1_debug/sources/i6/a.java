package i6;

import android.support.v4.media.h;
import f6.d;
import f6.f;
import j6.c;
import java.util.List;
import java.util.Map;
import z5.b;
import z5.e;
import z5.i;
import z5.k;
import z5.m;
import z5.n;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final o[] f2664b = new o[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f2665a = new c(0);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:62:0x018d  */
    @Override // z5.k
    public final m a(b bVar, Map map) throws z5.c, e, i {
        d dVarC;
        o[] oVarArr;
        c cVar = this.f2665a;
        if (map == null || !map.containsKey(z5.d.c)) {
            f6.b bVarA = bVar.a();
            h hVar = new h(bVarA);
            o[] oVarArrB = ((g6.a) hVar.d).b();
            o oVar = oVarArrB[0];
            o oVar2 = oVarArrB[1];
            o oVar3 = oVarArrB[3];
            o oVar4 = oVarArrB[2];
            int iW = hVar.w(oVar, oVar2);
            int iW2 = hVar.w(oVar2, oVar3);
            int iW3 = hVar.w(oVar3, oVar4);
            int iW4 = hVar.w(oVar4, oVar);
            o[] oVarArr2 = {oVar4, oVar, oVar2, oVar3};
            if (iW > iW2) {
                oVarArr2[0] = oVar;
                oVarArr2[1] = oVar2;
                oVarArr2[2] = oVar3;
                oVarArr2[3] = oVar4;
                iW = iW2;
            }
            if (iW > iW3) {
                oVarArr2[0] = oVar2;
                oVarArr2[1] = oVar3;
                oVarArr2[2] = oVar4;
                oVarArr2[3] = oVar;
            } else {
                iW3 = iW;
            }
            if (iW3 > iW4) {
                oVarArr2[0] = oVar3;
                oVarArr2[1] = oVar4;
                oVarArr2[2] = oVar;
                oVarArr2[3] = oVar2;
            }
            o oVar5 = oVarArr2[0];
            o oVar6 = oVarArr2[1];
            o oVar7 = oVarArr2[2];
            o oVar8 = oVarArr2[3];
            int iW5 = (hVar.w(oVar5, oVar8) + 1) << 2;
            if (hVar.w(h.v(oVar6, oVar7, iW5), oVar5) < hVar.w(h.v(oVar7, oVar6, iW5), oVar8)) {
                oVarArr2[0] = oVar5;
                oVarArr2[1] = oVar6;
                oVarArr2[2] = oVar7;
                oVarArr2[3] = oVar8;
            } else {
                oVarArr2[0] = oVar6;
                oVarArr2[1] = oVar7;
                oVarArr2[2] = oVar8;
                oVarArr2[3] = oVar5;
            }
            o oVar9 = oVarArr2[0];
            o oVar10 = oVarArr2[1];
            o oVar11 = oVarArr2[2];
            o oVar12 = oVarArr2[3];
            int iW6 = hVar.w(oVar9, oVar12);
            o oVarV = h.v(oVar9, oVar10, (hVar.w(oVar10, oVar12) + 1) << 2);
            o oVarV2 = h.v(oVar11, oVar10, (iW6 + 1) << 2);
            int iW7 = hVar.w(oVarV, oVar12);
            int iW8 = hVar.w(oVarV2, oVar12);
            float f8 = oVar12.f6339a;
            float f9 = oVar11.f6339a;
            float f10 = oVar10.f6339a;
            float f11 = iW7 + 1;
            float f12 = oVar12.f6340b;
            float f13 = oVar11.f6340b;
            float f14 = oVar10.f6340b;
            o oVar13 = new o(((f9 - f10) / f11) + f8, ((f13 - f14) / f11) + f12);
            float f15 = oVar9.f6339a - f10;
            float f16 = iW8 + 1;
            o oVar14 = new o((f15 / f16) + f8, ((oVar9.f6340b - f14) / f16) + f12);
            if (hVar.m(oVar13)) {
                if (hVar.m(oVar14) && hVar.w(oVarV2, oVar13) + hVar.w(oVarV, oVar13) <= hVar.w(oVarV2, oVar14) + hVar.w(oVarV, oVar14)) {
                    oVar13 = oVar14;
                }
            } else if (hVar.m(oVar14)) {
                oVar13 = oVar14;
            } else {
                oVar13 = null;
            }
            oVarArr2[3] = oVar13;
            if (oVar13 == null) {
                throw i.d;
            }
            o oVar15 = oVarArr2[0];
            o oVar16 = oVarArr2[1];
            o oVar17 = oVarArr2[2];
            int iW9 = hVar.w(oVar15, oVar13) + 1;
            o oVarV3 = h.v(oVar15, oVar16, (hVar.w(oVar17, oVar13) + 1) << 2);
            o oVarV4 = h.v(oVar17, oVar16, iW9 << 2);
            int iW10 = hVar.w(oVarV3, oVar13);
            int i9 = iW10 + 1;
            int iW11 = hVar.w(oVarV4, oVar13);
            int i10 = iW11 + 1;
            if ((i9 & 1) == 1) {
                i9 = iW10 + 2;
            }
            if ((i10 & 1) == 1) {
                i10 = iW11 + 2;
            }
            float f17 = (((oVar15.f6339a + oVar16.f6339a) + oVar17.f6339a) + oVar13.f6339a) / 4.0f;
            float f18 = (((oVar15.f6340b + oVar16.f6340b) + oVar17.f6340b) + oVar13.f6340b) / 4.0f;
            o oVarN = h.n(oVar15, f17, f18);
            o oVarN2 = h.n(oVar16, f17, f18);
            o oVarN3 = h.n(oVar17, f17, f18);
            o oVarN4 = h.n(oVar13, f17, f18);
            int i11 = i10 << 2;
            int i12 = i9 << 2;
            o[] oVarArr3 = {h.v(h.v(oVarN, oVarN2, i11), oVarN4, i12), h.v(h.v(oVarN2, oVarN, i11), oVarN3, i12), h.v(h.v(oVarN3, oVarN4, i11), oVarN2, i12), h.v(h.v(oVarN4, oVarN3, i11), oVarN, i12)};
            o oVar18 = oVarArr3[0];
            o oVar19 = oVarArr3[1];
            o oVar20 = oVarArr3[2];
            o oVar21 = oVarArr3[3];
            int iW12 = hVar.w(oVar18, oVar21);
            int iMax = iW12 + 1;
            int iW13 = hVar.w(oVar20, oVar21);
            int i13 = iW13 + 1;
            if ((iMax & 1) == 1) {
                iMax = iW12 + 2;
            }
            if ((i13 & 1) == 1) {
                i13 = iW13 + 2;
            }
            if (iMax * 4 < i13 * 7 && i13 * 4 < iMax * 7) {
                iMax = Math.max(iMax, i13);
                i13 = iMax;
            }
            float f19 = iMax - 0.5f;
            float f20 = i13 - 0.5f;
            dVarC = cVar.c(y5.k.q(bVarA, iMax, i13, f.a(0.5f, 0.5f, f19, 0.5f, f19, f20, 0.5f, f20, oVar18.f6339a, oVar18.f6340b, oVar21.f6339a, oVar21.f6340b, oVar20.f6339a, oVar20.f6340b, oVar19.f6339a, oVar19.f6340b)));
            oVarArr = new o[]{oVar18, oVar19, oVar20, oVar21};
        } else {
            f6.b bVarA2 = bVar.a();
            int[] iArrE = bVarA2.e();
            int[] iArrC = bVarA2.c();
            if (iArrE == null || iArrC == null) {
                throw i.d;
            }
            int i14 = bVarA2.f2258b;
            int i15 = iArrE[0];
            int i16 = iArrE[1];
            while (i15 < i14 && bVarA2.b(i15, i16)) {
                i15++;
            }
            if (i15 == i14) {
                throw i.d;
            }
            int i17 = iArrE[0];
            int i18 = i15 - i17;
            if (i18 == 0) {
                throw i.d;
            }
            int i19 = iArrE[1];
            int i20 = iArrC[1];
            int i21 = ((iArrC[0] - i17) + 1) / i18;
            int i22 = ((i20 - i19) + 1) / i18;
            if (i21 <= 0 || i22 <= 0) {
                throw i.d;
            }
            int i23 = i18 / 2;
            int i24 = i19 + i23;
            int i25 = i17 + i23;
            f6.b bVar2 = new f6.b(i21, i22);
            for (int i26 = 0; i26 < i22; i26++) {
                int i27 = (i26 * i18) + i24;
                for (int i28 = 0; i28 < i21; i28++) {
                    if (bVarA2.b((i28 * i18) + i25, i27)) {
                        bVar2.f(i28, i26);
                    }
                }
            }
            dVarC = cVar.c(bVar2);
            oVarArr = f2664b;
        }
        m mVar = new m(dVarC.f2261a, (byte[]) dVarC.d, oVarArr, z5.a.f6301g);
        List list = (List) dVarC.f2263f;
        if (list != null) {
            mVar.b(n.c, list);
        }
        String str = (String) dVarC.e;
        if (str != null) {
            mVar.b(n.d, str);
        }
        return mVar;
    }

    @Override // z5.k
    public final void reset() {
    }
}
