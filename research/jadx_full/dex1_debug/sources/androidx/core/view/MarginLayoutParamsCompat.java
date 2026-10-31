package androidx.core.view;

import android.view.ViewGroup$MarginLayoutParams;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Deprecated
public final class MarginLayoutParamsCompat {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private MarginLayoutParamsCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static int getLayoutDirection(@NonNull ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        int layoutDirection = viewGroup$MarginLayoutParams.getLayoutDirection();
        if (layoutDirection == 0 || layoutDirection == 1) {
            return layoutDirection;
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static int getMarginEnd(@NonNull ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        return viewGroup$MarginLayoutParams.getMarginEnd();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static int getMarginStart(@NonNull ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        return viewGroup$MarginLayoutParams.getMarginStart();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static boolean isMarginRelative(@NonNull ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        return viewGroup$MarginLayoutParams.isMarginRelative();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static void resolveLayoutDirection(@NonNull ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams, int i9) {
        viewGroup$MarginLayoutParams.resolveLayoutDirection(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static void setLayoutDirection(@NonNull ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams, int i9) {
        viewGroup$MarginLayoutParams.setLayoutDirection(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static void setMarginEnd(@NonNull ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams, int i9) {
        viewGroup$MarginLayoutParams.setMarginEnd(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static void setMarginStart(@NonNull ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams, int i9) {
        viewGroup$MarginLayoutParams.setMarginStart(i9);
    }
}
