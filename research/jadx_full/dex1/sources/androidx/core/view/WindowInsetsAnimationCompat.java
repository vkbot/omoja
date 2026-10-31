package androidx.core.view;

import android.os.Build$VERSION;
import android.view.View;
import android.view.WindowInsetsAnimation;
import android.view.animation.Interpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class WindowInsetsAnimationCompat {
    private static final boolean DEBUG = false;
    private static final String TAG = "WindowInsetsAnimCompat";
    private WindowInsetsAnimationCompat$Impl mImpl;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsAnimationCompat(int i9, @Nullable Interpolator interpolator, long j9) {
        if (Build$VERSION.SDK_INT >= 30) {
            this.mImpl = new WindowInsetsAnimationCompat$Impl30(i9, interpolator, j9);
        } else {
            this.mImpl = new WindowInsetsAnimationCompat$Impl21(i9, interpolator, j9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setCallback(@NonNull View view, @Nullable WindowInsetsAnimationCompat$Callback windowInsetsAnimationCompat$Callback) {
        if (Build$VERSION.SDK_INT >= 30) {
            WindowInsetsAnimationCompat$Impl30.setCallback(view, windowInsetsAnimationCompat$Callback);
        } else {
            WindowInsetsAnimationCompat$Impl21.setCallback(view, windowInsetsAnimationCompat$Callback);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
    public static WindowInsetsAnimationCompat toWindowInsetsAnimationCompat(WindowInsetsAnimation windowInsetsAnimation) {
        return new WindowInsetsAnimationCompat(windowInsetsAnimation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @FloatRange(from = 0.0d, to = 1.0d)
    public float getAlpha() {
        return this.mImpl.getAlpha();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getDurationMillis() {
        return this.mImpl.getDurationMillis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @FloatRange(from = 0.0d, to = 1.0d)
    public float getFraction() {
        return this.mImpl.getFraction();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getInterpolatedFraction() {
        return this.mImpl.getInterpolatedFraction();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Interpolator getInterpolator() {
        return this.mImpl.getInterpolator();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTypeMask() {
        return this.mImpl.getTypeMask();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAlpha(@FloatRange(from = 0.0d, to = 1.0d) float f8) {
        this.mImpl.setAlpha(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFraction(@FloatRange(from = 0.0d, to = 1.0d) float f8) {
        this.mImpl.setFraction(f8);
    }

    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
    private WindowInsetsAnimationCompat(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
        this(0, null, 0L);
        if (Build$VERSION.SDK_INT >= 30) {
            this.mImpl = new WindowInsetsAnimationCompat$Impl30(windowInsetsAnimation);
        }
    }
}
