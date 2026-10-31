package androidx.core.view;

import android.view.WindowInsets;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.graphics.Insets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS)
public class WindowInsetsCompat$Impl29 extends WindowInsetsCompat$Impl28 {
    private Insets mMandatorySystemGestureInsets;
    private Insets mSystemGestureInsets;
    private Insets mTappableElementInsets;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsCompat$Impl29(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
        super(windowInsetsCompat, windowInsets);
        this.mSystemGestureInsets = null;
        this.mMandatorySystemGestureInsets = null;
        this.mTappableElementInsets = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    @NonNull
    public Insets getMandatorySystemGestureInsets() {
        if (this.mMandatorySystemGestureInsets == null) {
            this.mMandatorySystemGestureInsets = Insets.toCompatInsets(n.w(this.mPlatformInsets));
        }
        return this.mMandatorySystemGestureInsets;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    @NonNull
    public Insets getSystemGestureInsets() {
        if (this.mSystemGestureInsets == null) {
            this.mSystemGestureInsets = Insets.toCompatInsets(n.A(this.mPlatformInsets));
        }
        return this.mSystemGestureInsets;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    @NonNull
    public Insets getTappableElementInsets() {
        if (this.mTappableElementInsets == null) {
            this.mTappableElementInsets = Insets.toCompatInsets(n.c(this.mPlatformInsets));
        }
        return this.mTappableElementInsets;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl20, androidx.core.view.WindowInsetsCompat$Impl
    @NonNull
    public WindowInsetsCompat inset(int i9, int i10, int i11, int i12) {
        return WindowInsetsCompat.toWindowInsetsCompat(n.h(this.mPlatformInsets, i9, i10, i11, i12));
    }

    public WindowInsetsCompat$Impl29(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsetsCompat$Impl29 windowInsetsCompat$Impl29) {
        super(windowInsetsCompat, windowInsetsCompat$Impl29);
        this.mSystemGestureInsets = null;
        this.mMandatorySystemGestureInsets = null;
        this.mTappableElementInsets = null;
    }

    @Override // androidx.core.view.WindowInsetsCompat$Impl21, androidx.core.view.WindowInsetsCompat$Impl
    public void setStableInsets(@Nullable Insets insets) {
    }
}
