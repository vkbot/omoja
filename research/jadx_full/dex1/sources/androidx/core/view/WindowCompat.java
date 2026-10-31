package androidx.core.view;

import android.os.Build$VERSION;
import android.view.View;
import android.view.Window;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class WindowCompat {
    public static final int FEATURE_ACTION_BAR = 8;
    public static final int FEATURE_ACTION_BAR_OVERLAY = 9;
    public static final int FEATURE_ACTION_MODE_OVERLAY = 10;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private WindowCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static WindowInsetsControllerCompat getInsetsController(@NonNull Window window, @NonNull View view) {
        return new WindowInsetsControllerCompat(window, view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static <T extends View> T requireViewById(@NonNull Window window, @IdRes int i9) {
        if (Build$VERSION.SDK_INT >= 28) {
            return (T) WindowCompat$Api28Impl.requireViewById(window, i9);
        }
        T t = (T) window.findViewById(i9);
        if (t != null) {
            return t;
        }
        j1.i.k("ID does not reference a View inside this Window");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setDecorFitsSystemWindows(@NonNull Window window, boolean z8) {
        if (Build$VERSION.SDK_INT >= 30) {
            WindowCompat$Api30Impl.setDecorFitsSystemWindows(window, z8);
        } else {
            WindowCompat$Api16Impl.setDecorFitsSystemWindows(window, z8);
        }
    }
}
