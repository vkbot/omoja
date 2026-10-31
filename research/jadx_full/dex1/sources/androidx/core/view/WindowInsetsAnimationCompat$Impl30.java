package androidx.core.view;

import android.view.View;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Bounds;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.graphics.Insets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
public class WindowInsetsAnimationCompat$Impl30 extends WindowInsetsAnimationCompat$Impl {

    @NonNull
    private final WindowInsetsAnimation mWrapped;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsAnimationCompat$Impl30(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
        super(0, null, 0L);
        this.mWrapped = windowInsetsAnimation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static WindowInsetsAnimation$Bounds createPlatformBounds(@NonNull WindowInsetsAnimationCompat$BoundsCompat windowInsetsAnimationCompat$BoundsCompat) {
        androidx.core.content.pm.b.o();
        return androidx.core.content.pm.b.i(windowInsetsAnimationCompat$BoundsCompat.getLowerBound().toPlatformInsets(), windowInsetsAnimationCompat$BoundsCompat.getUpperBound().toPlatformInsets());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static Insets getHigherBounds(@NonNull WindowInsetsAnimation$Bounds windowInsetsAnimation$Bounds) {
        return Insets.toCompatInsets(androidx.core.content.pm.b.g(windowInsetsAnimation$Bounds));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static Insets getLowerBounds(@NonNull WindowInsetsAnimation$Bounds windowInsetsAnimation$Bounds) {
        return Insets.toCompatInsets(androidx.core.content.pm.b.A(windowInsetsAnimation$Bounds));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setCallback(@NonNull View view, @Nullable WindowInsetsAnimationCompat$Callback windowInsetsAnimationCompat$Callback) {
        androidx.core.content.pm.b.r(view, windowInsetsAnimationCompat$Callback != null ? new WindowInsetsAnimationCompat$Impl30$ProxyCallback(windowInsetsAnimationCompat$Callback) : null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationCompat$Impl
    public long getDurationMillis() {
        return androidx.core.content.pm.b.f(this.mWrapped);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationCompat$Impl
    public float getFraction() {
        return androidx.core.content.pm.b.a(this.mWrapped);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationCompat$Impl
    public float getInterpolatedFraction() {
        return androidx.core.content.pm.b.y(this.mWrapped);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationCompat$Impl
    @Nullable
    public Interpolator getInterpolator() {
        return androidx.core.content.pm.b.m(this.mWrapped);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationCompat$Impl
    public int getTypeMask() {
        return androidx.core.content.pm.b.d(this.mWrapped);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationCompat$Impl
    public void setFraction(float f8) {
        androidx.core.content.pm.b.s(this.mWrapped, f8);
    }

    public WindowInsetsAnimationCompat$Impl30(int i9, Interpolator interpolator, long j9) {
        this(androidx.core.content.pm.b.j(i9, interpolator, j9));
    }
}
