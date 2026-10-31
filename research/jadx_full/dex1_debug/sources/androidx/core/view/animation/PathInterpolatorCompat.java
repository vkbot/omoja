package androidx.core.view.animation;

import android.graphics.Path;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class PathInterpolatorCompat {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private PathInterpolatorCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static Interpolator create(@NonNull Path path) {
        return PathInterpolatorCompat$Api21Impl.createPathInterpolator(path);
    }

    @NonNull
    public static Interpolator create(float f8, float f9) {
        return PathInterpolatorCompat$Api21Impl.createPathInterpolator(f8, f9);
    }

    @NonNull
    public static Interpolator create(float f8, float f9, float f10, float f11) {
        return PathInterpolatorCompat$Api21Impl.createPathInterpolator(f8, f9, f10, f11);
    }
}
