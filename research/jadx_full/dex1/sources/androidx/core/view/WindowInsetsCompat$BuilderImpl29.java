package androidx.core.view;

import android.view.WindowInsets;
import android.view.WindowInsets$Builder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.graphics.Insets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(api = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS)
public class WindowInsetsCompat$BuilderImpl29 extends WindowInsetsCompat$BuilderImpl {
    final WindowInsets$Builder mPlatBuilder;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsCompat$BuilderImpl29(@NonNull WindowInsetsCompat windowInsetsCompat) {
        super(windowInsetsCompat);
        WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
        this.mPlatBuilder = windowInsets != null ? n.f(windowInsets) : n.e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$BuilderImpl
    @NonNull
    public WindowInsetsCompat build() {
        applyInsetTypes();
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(n.g(this.mPlatBuilder));
        windowInsetsCompat.setOverriddenInsets(this.mInsetsTypeMask);
        return windowInsetsCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$BuilderImpl
    public void setDisplayCutout(@Nullable DisplayCutoutCompat displayCutoutCompat) {
        n.r(this.mPlatBuilder, displayCutoutCompat != null ? displayCutoutCompat.unwrap() : null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$BuilderImpl
    public void setMandatorySystemGestureInsets(@NonNull Insets insets) {
        n.q(this.mPlatBuilder, insets.toPlatformInsets());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$BuilderImpl
    public void setStableInsets(@NonNull Insets insets) {
        androidx.appcompat.widget.d.j(this.mPlatBuilder, insets.toPlatformInsets());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$BuilderImpl
    public void setSystemGestureInsets(@NonNull Insets insets) {
        androidx.appcompat.widget.d.w(this.mPlatBuilder, insets.toPlatformInsets());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$BuilderImpl
    public void setSystemWindowInsets(@NonNull Insets insets) {
        androidx.appcompat.widget.d.f(this.mPlatBuilder, insets.toPlatformInsets());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$BuilderImpl
    public void setTappableElementInsets(@NonNull Insets insets) {
        n.z(this.mPlatBuilder, insets.toPlatformInsets());
    }

    public WindowInsetsCompat$BuilderImpl29() {
        this.mPlatBuilder = n.e();
    }
}
