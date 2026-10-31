package c7;

import android.graphics.Rect;
import android.util.Log;
import b7.u;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f538a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ k(int i9) {
        this.f538a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // c7.n
    public final float a(u uVar, u uVar2) {
        switch (this.f538a) {
            case 0:
                if (uVar.f389b <= 0 || uVar.c <= 0) {
                    return 0.0f;
                }
                u uVarA = uVar.a(uVar2);
                float f8 = uVarA.f389b * 1.0f;
                float fPow = f8 / uVar.f389b;
                if (fPow > 1.0f) {
                    fPow = (float) Math.pow(1.0f / fPow, 1.1d);
                }
                float f9 = ((uVarA.c * 1.0f) / uVar2.c) + (f8 / uVar2.f389b);
                return ((1.0f / f9) / f9) * fPow;
            case 1:
                if (uVar.f389b <= 0 || uVar.c <= 0) {
                    return 0.0f;
                }
                u uVarB = uVar.b(uVar2);
                float f10 = uVarB.f389b;
                float fPow2 = (f10 * 1.0f) / uVar.f389b;
                if (fPow2 > 1.0f) {
                    fPow2 = (float) Math.pow(1.0f / fPow2, 1.1d);
                }
                float f11 = ((uVar2.c * 1.0f) / uVarB.c) * ((uVar2.f389b * 1.0f) / f10);
                return (((1.0f / f11) / f11) / f11) * fPow2;
            default:
                int i9 = uVar.f389b;
                int i10 = uVar.c;
                if (i9 <= 0 || i10 <= 0) {
                    return 0.0f;
                }
                int i11 = uVar2.f389b;
                int i12 = uVar2.c;
                float f12 = (i9 * 1.0f) / i11;
                if (f12 < 1.0f) {
                    f12 = 1.0f / f12;
                }
                float f13 = i10;
                float f14 = i12;
                float f15 = (f13 * 1.0f) / f14;
                if (f15 < 1.0f) {
                    f15 = 1.0f / f15;
                }
                float f16 = (1.0f / f12) / f15;
                float f17 = ((i9 * 1.0f) / f13) / ((i11 * 1.0f) / f14);
                if (f17 < 1.0f) {
                    f17 = 1.0f / f17;
                }
                return (((1.0f / f17) / f17) / f17) * f16;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // c7.n
    public final Rect b(u uVar, u uVar2) {
        switch (this.f538a) {
            case 0:
                u uVarA = uVar.a(uVar2);
                Log.i("k", "Preview: " + uVar + "; Scaled: " + uVarA + "; Want: " + uVar2);
                int i9 = uVarA.f389b;
                int i10 = (i9 - uVar2.f389b) / 2;
                int i11 = uVarA.c;
                int i12 = (i11 - uVar2.c) / 2;
                return new Rect(-i10, -i12, i9 - i10, i11 - i12);
            case 1:
                u uVarB = uVar.b(uVar2);
                Log.i("k", "Preview: " + uVar + "; Scaled: " + uVarB + "; Want: " + uVar2);
                int i13 = uVarB.f389b;
                int i14 = (i13 - uVar2.f389b) / 2;
                int i15 = uVarB.c;
                int i16 = (i15 - uVar2.c) / 2;
                return new Rect(-i14, -i16, i13 - i14, i15 - i16);
            default:
                return new Rect(0, 0, uVar2.f389b, uVar2.c);
        }
    }
}
