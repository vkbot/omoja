package p156o6;

import p147n6.AbstractC2487h;

/* JADX INFO: renamed from: o6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2594a extends AbstractC2487h {

    /* JADX INFO: renamed from: b */
    public final int[] f7230b;

    /* JADX INFO: renamed from: e */
    public final int[] f7233e;

    /* JADX INFO: renamed from: f */
    public final int[] f7234f;

    /* JADX INFO: renamed from: a */
    public final int[] f7229a = new int[4];

    /* JADX INFO: renamed from: c */
    public final float[] f7231c = new float[4];

    /* JADX INFO: renamed from: d */
    public final float[] f7232d = new float[4];

    public AbstractC2594a() {
        int[] iArr = new int[8];
        this.f7230b = iArr;
        this.f7233e = new int[iArr.length / 2];
        this.f7234f = new int[iArr.length / 2];
    }

    /* JADX INFO: renamed from: g */
    public static void m4068g(int[] iArr, float[] fArr) {
        int i10 = 0;
        float f8 = fArr[0];
        for (int i11 = 1; i11 < iArr.length; i11++) {
            float f10 = fArr[i11];
            if (f10 < f8) {
                i10 = i11;
                f8 = f10;
            }
        }
        iArr[i10] = iArr[i10] - 1;
    }

    /* JADX INFO: renamed from: h */
    public static void m4069h(int[] iArr, float[] fArr) {
        int i10 = 0;
        float f8 = fArr[0];
        for (int i11 = 1; i11 < iArr.length; i11++) {
            float f10 = fArr[i11];
            if (f10 > f8) {
                i10 = i11;
                f8 = f10;
            }
        }
        iArr[i10] = iArr[i10] + 1;
    }

    /* JADX INFO: renamed from: i */
    public static boolean m4070i(int[] iArr) {
        int i10 = iArr[0] + iArr[1];
        float f8 = i10 / ((iArr[2] + i10) + iArr[3]);
        if (f8 >= 0.7916667f && f8 <= 0.89285713f) {
            int i11 = Integer.MAX_VALUE;
            int i12 = Integer.MIN_VALUE;
            for (int i13 : iArr) {
                if (i13 > i12) {
                    i12 = i13;
                }
                if (i13 < i11) {
                    i11 = i13;
                }
            }
            if (i12 < i11 * 10) {
                return true;
            }
        }
        return false;
    }
}
