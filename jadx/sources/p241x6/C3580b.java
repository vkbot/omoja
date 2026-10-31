package p241x6;

import java.util.ArrayList;
import p063f6.C1578b;
import p260z5.InterfaceC3760p;

/* JADX INFO: renamed from: x6.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3580b {

    /* JADX INFO: renamed from: a */
    public final C1578b f10636a;

    /* JADX INFO: renamed from: c */
    public final int f10638c;

    /* JADX INFO: renamed from: d */
    public final int f10639d;

    /* JADX INFO: renamed from: e */
    public final int f10640e;

    /* JADX INFO: renamed from: f */
    public final int f10641f;

    /* JADX INFO: renamed from: g */
    public final float f10642g;

    /* JADX INFO: renamed from: i */
    public final InterfaceC3760p f10644i;

    /* JADX INFO: renamed from: b */
    public final ArrayList f10637b = new ArrayList(5);

    /* JADX INFO: renamed from: h */
    public final int[] f10643h = new int[3];

    public C3580b(C1578b c1578b, int i10, int i11, int i12, int i13, float f8, InterfaceC3760p interfaceC3760p) {
        this.f10636a = c1578b;
        this.f10638c = i10;
        this.f10639d = i11;
        this.f10640e = i12;
        this.f10641f = i13;
        this.f10642g = f8;
        this.f10644i = interfaceC3760p;
    }

    /* JADX INFO: renamed from: a */
    public final boolean m5705a(int[] iArr) {
        float f8 = this.f10642g;
        float f10 = f8 / 2.0f;
        for (int i10 = 0; i10 < 3; i10++) {
            if (Math.abs(f8 - iArr[i10]) >= f10) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: b */
    public final C3579a m5706b(int i10, int i11, int[] iArr) {
        int i12 = 0;
        int i13 = iArr[0];
        int i14 = iArr[1];
        int i15 = iArr[2];
        int i16 = i13 + i14 + i15;
        float f8 = (i11 - i15) - (i14 / 2.0f);
        int i17 = (int) f8;
        int i18 = i14 * 2;
        C1578b c1578b = this.f10636a;
        int i19 = c1578b.f3901c;
        int[] iArr2 = this.f10643h;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        int i20 = i10;
        while (i20 >= 0 && c1578b.m2658b(i17, i20)) {
            int i21 = iArr2[1];
            if (i21 > i18) {
                break;
            }
            iArr2[1] = i21 + 1;
            i20--;
        }
        float f10 = Float.NaN;
        if (i20 >= 0 && iArr2[1] <= i18) {
            while (i20 >= 0 && !c1578b.m2658b(i17, i20)) {
                int i22 = iArr2[0];
                if (i22 > i18) {
                    break;
                }
                iArr2[0] = i22 + 1;
                i20--;
            }
            if (iArr2[0] <= i18) {
                int i23 = i10 + 1;
                while (i23 < i19 && c1578b.m2658b(i17, i23)) {
                    int i24 = iArr2[1];
                    if (i24 > i18) {
                        break;
                    }
                    iArr2[1] = i24 + 1;
                    i23++;
                }
                if (i23 != i19 && iArr2[1] <= i18) {
                    while (i23 < i19 && !c1578b.m2658b(i17, i23)) {
                        int i25 = iArr2[2];
                        if (i25 > i18) {
                            break;
                        }
                        iArr2[2] = i25 + 1;
                        i23++;
                    }
                    int i26 = iArr2[2];
                    if (i26 <= i18 && Math.abs(((iArr2[0] + iArr2[1]) + i26) - i16) * 5 < i16 * 2 && m5705a(iArr2)) {
                        f10 = (i23 - iArr2[2]) - (iArr2[1] / 2.0f);
                    }
                }
            }
        }
        if (Float.isNaN(f10)) {
            return null;
        }
        float f11 = ((iArr[0] + iArr[1]) + iArr[2]) / 3.0f;
        ArrayList arrayList = this.f10637b;
        int size = arrayList.size();
        while (i12 < size) {
            Object obj = arrayList.get(i12);
            i12++;
            C3579a c3579a = (C3579a) obj;
            float f12 = c3579a.f10635c;
            float f13 = c3579a.f11214a;
            float f14 = c3579a.f11215b;
            if (Math.abs(f10 - f14) <= f11 && Math.abs(f8 - f13) <= f11) {
                float fAbs = Math.abs(f11 - f12);
                if (fAbs <= 1.0f || fAbs <= f12) {
                    return new C3579a((f13 + f8) / 2.0f, (f14 + f10) / 2.0f, (c3579a.f10635c + f11) / 2.0f);
                }
            }
        }
        C3579a c3579a2 = new C3579a(f8, f10, f11);
        arrayList.add(c3579a2);
        InterfaceC3760p interfaceC3760p = this.f10644i;
        if (interfaceC3760p == null) {
            return null;
        }
        interfaceC3760p.mo1052a(c3579a2);
        return null;
    }
}
