package e0;

import com.example.navistart.cores.ColorText;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f1860a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        int[] iArr = new int[ColorText.values().length];
        f1860a = iArr;
        try {
            iArr[ColorText.BLACK.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f1860a[ColorText.RED.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f1860a[ColorText.GREEN.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
