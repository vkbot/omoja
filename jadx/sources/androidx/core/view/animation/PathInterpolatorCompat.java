package androidx.core.view.animation;

import android.graphics.Path;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class PathInterpolatorCompat {
    private PathInterpolatorCompat() {
    }

    @NonNull
    public static Interpolator create(@NonNull Path path) {
        return Api21Impl.createPathInterpolator(path);
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @RequiresApi(21)
    public static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        public static Interpolator createPathInterpolator(Path path) {
            return new PathInterpolator(path);
        }

        @DoNotInline
        public static Interpolator createPathInterpolator(float f8, float f10) {
            return new PathInterpolator(f8, f10);
        }

        @DoNotInline
        public static Interpolator createPathInterpolator(float f8, float f10, float f11, float f12) {
            return new PathInterpolator(f8, f10, f11, f12);
        }
    }

    @NonNull
    public static Interpolator create(float f8, float f10) {
        return Api21Impl.createPathInterpolator(f8, f10);
    }

    @NonNull
    public static Interpolator create(float f8, float f10, float f11, float f12) {
        return Api21Impl.createPathInterpolator(f8, f10, f11, f12);
    }
}
