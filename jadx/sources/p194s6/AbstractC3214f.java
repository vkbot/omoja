package p194s6;

import java.lang.reflect.Array;
import p185r6.AbstractC3106a;

/* JADX INFO: renamed from: s6.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3214f {

    /* JADX INFO: renamed from: a */
    public static final float[][] f9396a = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 2787, 8);

    static {
        int i10;
        for (int i11 = 0; i11 < 2787; i11++) {
            int i12 = AbstractC3106a.f8869b[i11];
            int i13 = i12 & 1;
            int i14 = 0;
            while (i14 < 8) {
                float f8 = 0.0f;
                while (true) {
                    i10 = i12 & 1;
                    if (i10 == i13) {
                        f8 += 1.0f;
                        i12 >>= 1;
                    }
                }
                f9396a[i11][7 - i14] = f8 / 17.0f;
                i14++;
                i13 = i10;
            }
        }
    }
}
