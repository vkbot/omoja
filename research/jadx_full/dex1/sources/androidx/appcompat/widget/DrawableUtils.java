package androidx.appcompat.widget;

import android.R$attr;
import android.graphics.Insets;
import android.graphics.PorterDuff$Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;
import androidx.activity.k;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.graphics.drawable.DrawableCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public class DrawableUtils {
    private static final int[] CHECKED_STATE_SET = {R$attr.state_checked};
    private static final int[] EMPTY_STATE_SET = new int[0];
    public static final Rect INSETS_NONE = new Rect();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private DrawableUtils() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static boolean canSafelyMutateDrawable(@NonNull Drawable drawable) {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void fixDrawable(@NonNull Drawable drawable) {
        String name = drawable.getClass().getName();
        int i9 = Build$VERSION.SDK_INT;
        if (i9 < 29 || i9 >= 31 || !"android.graphics.drawable.ColorStateListDrawable".equals(name)) {
            return;
        }
        forceDrawableStateChange(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void forceDrawableStateChange(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(CHECKED_STATE_SET);
        } else {
            drawable.setState(EMPTY_STATE_SET);
        }
        drawable.setState(state);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static Rect getOpticalBounds(@NonNull Drawable drawable) {
        if (Build$VERSION.SDK_INT < 29) {
            return DrawableUtils$Api18Impl.getOpticalInsets(DrawableCompat.unwrap(drawable));
        }
        Insets opticalInsets = DrawableUtils$Api29Impl.getOpticalInsets(drawable);
        return new Rect(k.a(opticalInsets), k.n(opticalInsets), k.t(opticalInsets), k.w(opticalInsets));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static PorterDuff$Mode parseTintMode(int i9, PorterDuff$Mode porterDuff$Mode) {
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
