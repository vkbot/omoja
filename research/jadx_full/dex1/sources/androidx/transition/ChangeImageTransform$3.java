package androidx.transition;

import android.widget.ImageView$ScaleType;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public /* synthetic */ class ChangeImageTransform$3 {
    static final /* synthetic */ int[] $SwitchMap$android$widget$ImageView$ScaleType;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        int[] iArr = new int[ImageView$ScaleType.values().length];
        $SwitchMap$android$widget$ImageView$ScaleType = iArr;
        try {
            iArr[ImageView$ScaleType.FIT_XY.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            $SwitchMap$android$widget$ImageView$ScaleType[ImageView$ScaleType.CENTER_CROP.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
