package w6;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f5929a = {2, 1, 4, 3};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean a(int i9, int i10, int i11) {
        switch (i9) {
            case 1:
                return ((i10 + i11) & 1) == 0;
            case 2:
                return (i10 & 1) == 0;
            case 3:
                return i11 % 3 == 0;
            case 4:
                return (i10 + i11) % 3 == 0;
            case 5:
                return (((i11 / 3) + (i10 / 2)) & 1) == 0;
            case 6:
                return (i10 * i11) % 6 == 0;
            case 7:
                return (i10 * i11) % 6 < 3;
            default:
                return ((((i10 * i11) % 3) + (i10 + i11)) & 1) == 0;
        }
    }
}
