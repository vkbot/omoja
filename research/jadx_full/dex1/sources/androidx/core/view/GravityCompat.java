package androidx.core.view;

import android.graphics.Rect;
import android.view.Gravity;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class GravityCompat {
    public static final int END = 8388613;
    public static final int RELATIVE_HORIZONTAL_GRAVITY_MASK = 8388615;
    public static final int RELATIVE_LAYOUT_DIRECTION = 8388608;
    public static final int START = 8388611;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private GravityCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void apply(int i9, int i10, int i11, @NonNull Rect rect, @NonNull Rect rect2, int i12) {
        Gravity.apply(i9, i10, i11, rect, rect2, i12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void applyDisplay(int i9, @NonNull Rect rect, @NonNull Rect rect2, int i10) {
        Gravity.applyDisplay(i9, rect, rect2, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getAbsoluteGravity(int i9, int i10) {
        return Gravity.getAbsoluteGravity(i9, i10);
    }

    public static void apply(int i9, int i10, int i11, @NonNull Rect rect, int i12, int i13, @NonNull Rect rect2, int i14) {
        Gravity.apply(i9, i10, i11, rect, i12, i13, rect2, i14);
    }
}
