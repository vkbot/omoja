package x6;

import java.util.ArrayList;
import z5.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f6.b f6031a;
    public final int c;
    public final int d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f6033f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f6034g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final p f6036i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f6032b = new ArrayList(5);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f6035h = new int[3];

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(f6.b bVar, int i9, int i10, int i11, int i12, float f8, p pVar) {
        this.f6031a = bVar;
        this.c = i9;
        this.d = i10;
        this.e = i11;
        this.f6033f = i12;
        this.f6034g = f8;
        this.f6036i = pVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean a(int[] iArr) {
        float f8 = this.f6034g;
        float f9 = f8 / 2.0f;
        for (int i9 = 0; i9 < 3; i9++) {
            if (Math.abs(f8 - iArr[i9]) >= f9) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a b(int i9, int i10, int[] iArr) {
        int i11 = 0;
        int i12 = iArr[0];
        int i13 = iArr[1];
        int i14 = iArr[2];
        int i15 = i12 + i13 + i14;
        float f8 = (i10 - i14) - (i13 / 2.0f);
        int i16 = (int) f8;
        int i17 = i13 * 2;
        f6.b bVar = this.f6031a;
        int i18 = bVar.c;
        int[] iArr2 = this.f6035h;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        int i19 = i9;
        while (i19 >= 0 && bVar.b(i16, i19)) {
            int i20 = iArr2[1];
            if (i20 > i17) {
                break;
            }
            iArr2[1] = i20 + 1;
            i19--;
        }
        float f9 = Float.NaN;
        if (i19 >= 0 && iArr2[1] <= i17) {
            while (i19 >= 0 && !bVar.b(i16, i19)) {
                int i21 = iArr2[0];
                if (i21 > i17) {
                    break;
                }
                iArr2[0] = i21 + 1;
                i19--;
            }
            if (iArr2[0] <= i17) {
                int i22 = i9 + 1;
                while (i22 < i18 && bVar.b(i16, i22)) {
                    int i23 = iArr2[1];
                    if (i23 > i17) {
                        break;
                    }
                    iArr2[1] = i23 + 1;
                    i22++;
                }
                if (i22 != i18 && iArr2[1] <= i17) {
                    while (i22 < i18 && !bVar.b(i16, i22)) {
                        int i24 = iArr2[2];
                        if (i24 > i17) {
                            break;
                        }
                        iArr2[2] = i24 + 1;
                        i22++;
                    }
                    int i25 = iArr2[2];
                    if (i25 <= i17 && Math.abs(((iArr2[0] + iArr2[1]) + i25) - i15) * 5 < i15 * 2 && a(iArr2)) {
                        f9 = (i22 - iArr2[2]) - (iArr2[1] / 2.0f);
                    }
                }
            }
        }
        if (Float.isNaN(f9)) {
            return null;
        }
        float f10 = ((iArr[0] + iArr[1]) + iArr[2]) / 3.0f;
        ArrayList arrayList = this.f6032b;
        int size = arrayList.size();
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            a aVar = (a) obj;
            float f11 = aVar.c;
            float f12 = aVar.f6339a;
            float f13 = aVar.f6340b;
            if (Math.abs(f9 - f13) <= f10 && Math.abs(f8 - f12) <= f10) {
                float fAbs = Math.abs(f10 - f11);
                if (fAbs <= 1.0f || fAbs <= f11) {
                    return new a((f12 + f8) / 2.0f, (f13 + f9) / 2.0f, (aVar.c + f10) / 2.0f);
                }
            }
        }
        a aVar2 = new a(f8, f9, f10);
        arrayList.add(aVar2);
        p pVar = this.f6036i;
        if (pVar == null) {
            return null;
        }
        pVar.a(aVar2);
        return null;
    }
}
