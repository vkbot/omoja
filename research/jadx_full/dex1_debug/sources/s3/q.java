package s3;

import android.content.Context;
import android.graphics.PorterDuff$Mode;
import android.util.TypedValue;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class q {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float a(int i9, Context context) {
        return TypedValue.applyDimension(1, i9, context.getResources().getDisplayMetrics());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static PorterDuff$Mode b(int i9, PorterDuff$Mode porterDuff$Mode) {
        if (i9 == 3) {
            return PorterDuff$Mode.SRC_OVER;
        }
        if (i9 == 5) {
            return PorterDuff$Mode.SRC_IN;
        }
        if (i9 == 9) {
            return PorterDuff$Mode.SRC_ATOP;
        }
        switch (i9) {
            case 14:
                return PorterDuff$Mode.MULTIPLY;
            case 15:
                return PorterDuff$Mode.SCREEN;
            case 16:
                return PorterDuff$Mode.ADD;
            default:
                return porterDuff$Mode;
        }
    }
}
