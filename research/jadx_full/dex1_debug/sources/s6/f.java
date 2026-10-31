package s6;

import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float[][] f5312a = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 2787, 8);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        int i9;
        for (int i10 = 0; i10 < 2787; i10++) {
            int i11 = r6.a.f4989b[i10];
            int i12 = i11 & 1;
            int i13 = 0;
            while (i13 < 8) {
                float f8 = 0.0f;
                while (true) {
                    i9 = i11 & 1;
                    if (i9 == i12) {
                        f8 += 1.0f;
                        i11 >>= 1;
                    }
                }
                f5312a[i10][7 - i13] = f8 / 17.0f;
                i13++;
                i12 = i9;
            }
        }
    }
}
