package o6;

import n6.h;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class a extends h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f4101b;
    public final int[] e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f4102f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f4100a = new int[4];
    public final float[] c = new float[4];
    public final float[] d = new float[4];

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a() {
        int[] iArr = new int[8];
        this.f4101b = iArr;
        this.e = new int[iArr.length / 2];
        this.f4102f = new int[iArr.length / 2];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void g(int[] iArr, float[] fArr) {
        int i9 = 0;
        float f8 = fArr[0];
        for (int i10 = 1; i10 < iArr.length; i10++) {
            float f9 = fArr[i10];
            if (f9 < f8) {
                i9 = i10;
                f8 = f9;
            }
        }
        iArr[i9] = iArr[i9] - 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void h(int[] iArr, float[] fArr) {
        int i9 = 0;
        float f8 = fArr[0];
        for (int i10 = 1; i10 < iArr.length; i10++) {
            float f9 = fArr[i10];
            if (f9 > f8) {
                i9 = i10;
                f8 = f9;
            }
        }
        iArr[i9] = iArr[i9] + 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean i(int[] iArr) {
        int i9 = iArr[0] + iArr[1];
        float f8 = i9 / ((iArr[2] + i9) + iArr[3]);
        if (f8 >= 0.7916667f && f8 <= 0.89285713f) {
            int i10 = Integer.MAX_VALUE;
            int i11 = Integer.MIN_VALUE;
            for (int i12 : iArr) {
                if (i12 > i11) {
                    i11 = i12;
                }
                if (i12 < i10) {
                    i10 = i12;
                }
            }
            if (i11 < i10 * 10) {
                return true;
            }
        }
        return false;
    }
}
