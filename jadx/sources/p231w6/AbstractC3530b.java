package p231w6;

/* JADX INFO: renamed from: w6.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC3530b {

    /* JADX INFO: renamed from: a */
    public static final int[] f10482a = {2, 1, 4, 3};

    /* JADX INFO: renamed from: a */
    public static boolean m5634a(int i10, int i11, int i12) {
        switch (i10) {
            case 1:
                return ((i11 + i12) & 1) == 0;
            case 2:
                return (i11 & 1) == 0;
            case 3:
                return i12 % 3 == 0;
            case 4:
                return (i11 + i12) % 3 == 0;
            case 5:
                return (((i12 / 3) + (i11 / 2)) & 1) == 0;
            case 6:
                return (i11 * i12) % 6 == 0;
            case 7:
                return (i11 * i12) % 6 < 3;
            default:
                return ((((i11 * i12) % 3) + (i11 + i12)) & 1) == 0;
        }
    }
}
