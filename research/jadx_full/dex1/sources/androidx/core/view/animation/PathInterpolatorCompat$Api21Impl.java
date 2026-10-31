package androidx.core.view.animation;

import android.graphics.Path;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(21)
public class PathInterpolatorCompat$Api21Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private PathInterpolatorCompat$Api21Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Interpolator createPathInterpolator(Path path) {
        return new PathInterpolator(path);
    }

    @DoNotInline
    public static Interpolator createPathInterpolator(float f8, float f9) {
        return new PathInterpolator(f8, f9);
    }

    @DoNotInline
    public static Interpolator createPathInterpolator(float f8, float f9, float f10, float f11) {
        return new PathInterpolator(f8, f9, f10, f11);
    }
}
