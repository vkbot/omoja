package p032c7;

import android.graphics.Rect;
import android.util.Log;
import p022b7.C0925u;

/* JADX INFO: renamed from: c7.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1007k extends AbstractC1010n {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1006a;

    @Override // p032c7.AbstractC1010n
    /* JADX INFO: renamed from: a */
    public final float mo1211a(C0925u c0925u, C0925u c0925u2) {
        switch (this.f1006a) {
            case 0:
                if (c0925u.f777b <= 0 || c0925u.f778c <= 0) {
                    return 0.0f;
                }
                C0925u c0925uM1062a = c0925u.m1062a(c0925u2);
                float f8 = c0925uM1062a.f777b * 1.0f;
                float fPow = f8 / c0925u.f777b;
                if (fPow > 1.0f) {
                    fPow = (float) Math.pow(1.0f / fPow, 1.1d);
                }
                float f10 = ((c0925uM1062a.f778c * 1.0f) / c0925u2.f778c) + (f8 / c0925u2.f777b);
                return ((1.0f / f10) / f10) * fPow;
            case 1:
                if (c0925u.f777b <= 0 || c0925u.f778c <= 0) {
                    return 0.0f;
                }
                C0925u c0925uM1063b = c0925u.m1063b(c0925u2);
                float f11 = c0925uM1063b.f777b;
                float fPow2 = (f11 * 1.0f) / c0925u.f777b;
                if (fPow2 > 1.0f) {
                    fPow2 = (float) Math.pow(1.0f / fPow2, 1.1d);
                }
                float f12 = ((c0925u2.f778c * 1.0f) / c0925uM1063b.f778c) * ((c0925u2.f777b * 1.0f) / f11);
                return (((1.0f / f12) / f12) / f12) * fPow2;
            default:
                int i10 = c0925u.f777b;
                int i11 = c0925u.f778c;
                if (i10 <= 0 || i11 <= 0) {
                    return 0.0f;
                }
                int i12 = c0925u2.f777b;
                int i13 = c0925u2.f778c;
                float f13 = (i10 * 1.0f) / i12;
                if (f13 < 1.0f) {
                    f13 = 1.0f / f13;
                }
                float f14 = i11;
                float f15 = i13;
                float f16 = (f14 * 1.0f) / f15;
                if (f16 < 1.0f) {
                    f16 = 1.0f / f16;
                }
                float f17 = (1.0f / f13) / f16;
                float f18 = ((i10 * 1.0f) / f14) / ((i12 * 1.0f) / f15);
                if (f18 < 1.0f) {
                    f18 = 1.0f / f18;
                }
                return (((1.0f / f18) / f18) / f18) * f17;
        }
    }

    @Override // p032c7.AbstractC1010n
    /* JADX INFO: renamed from: b */
    public final Rect mo1212b(C0925u c0925u, C0925u c0925u2) {
        switch (this.f1006a) {
            case 0:
                C0925u c0925uM1062a = c0925u.m1062a(c0925u2);
                Log.i("k", "Preview: " + c0925u + "; Scaled: " + c0925uM1062a + "; Want: " + c0925u2);
                int i10 = c0925uM1062a.f777b;
                int i11 = (i10 - c0925u2.f777b) / 2;
                int i12 = c0925uM1062a.f778c;
                int i13 = (i12 - c0925u2.f778c) / 2;
                return new Rect(-i11, -i13, i10 - i11, i12 - i13);
            case 1:
                C0925u c0925uM1063b = c0925u.m1063b(c0925u2);
                Log.i("k", "Preview: " + c0925u + "; Scaled: " + c0925uM1063b + "; Want: " + c0925u2);
                int i14 = c0925uM1063b.f777b;
                int i15 = (i14 - c0925u2.f777b) / 2;
                int i16 = c0925uM1063b.f778c;
                int i17 = (i16 - c0925u2.f778c) / 2;
                return new Rect(-i15, -i17, i14 - i15, i16 - i17);
            default:
                return new Rect(0, 0, c0925u2.f777b, c0925u2.f778c);
        }
    }
}
