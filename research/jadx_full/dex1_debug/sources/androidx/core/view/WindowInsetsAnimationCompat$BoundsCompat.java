package androidx.core.view;

import android.view.WindowInsetsAnimation$Bounds;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.graphics.Insets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class WindowInsetsAnimationCompat$BoundsCompat {
    private final Insets mLowerBound;
    private final Insets mUpperBound;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
    private WindowInsetsAnimationCompat$BoundsCompat(@NonNull WindowInsetsAnimation$Bounds windowInsetsAnimation$Bounds) {
        this.mLowerBound = WindowInsetsAnimationCompat$Impl30.getLowerBounds(windowInsetsAnimation$Bounds);
        this.mUpperBound = WindowInsetsAnimationCompat$Impl30.getHigherBounds(windowInsetsAnimation$Bounds);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
    public static WindowInsetsAnimationCompat$BoundsCompat toBoundsCompat(@NonNull WindowInsetsAnimation$Bounds windowInsetsAnimation$Bounds) {
        return new WindowInsetsAnimationCompat$BoundsCompat(windowInsetsAnimation$Bounds);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Insets getLowerBound() {
        return this.mLowerBound;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Insets getUpperBound() {
        return this.mUpperBound;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public WindowInsetsAnimationCompat$BoundsCompat inset(@NonNull Insets insets) {
        return new WindowInsetsAnimationCompat$BoundsCompat(WindowInsetsCompat.insetInsets(this.mLowerBound, insets.left, insets.top, insets.right, insets.bottom), WindowInsetsCompat.insetInsets(this.mUpperBound, insets.left, insets.top, insets.right, insets.bottom));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
    public WindowInsetsAnimation$Bounds toBounds() {
        return WindowInsetsAnimationCompat$Impl30.createPlatformBounds(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "Bounds{lower=" + this.mLowerBound + " upper=" + this.mUpperBound + "}";
    }

    public WindowInsetsAnimationCompat$BoundsCompat(@NonNull Insets insets, @NonNull Insets insets2) {
        this.mLowerBound = insets;
        this.mUpperBound = insets2;
    }
}
