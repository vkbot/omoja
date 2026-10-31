package p077h;

import com.bumptech.glide.load.ImageHeaderParser$ImageType;

/* JADX INFO: renamed from: h.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC1641c {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f4175a;

    static {
        int[] iArr = new int[ImageHeaderParser$ImageType.values().length];
        f4175a = iArr;
        try {
            iArr[ImageHeaderParser$ImageType.WEBP.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f4175a[ImageHeaderParser$ImageType.WEBP_A.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f4175a[ImageHeaderParser$ImageType.ANIMATED_WEBP.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
