package androidx.core.view;

import android.view.WindowInsetsAnimationController;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.graphics.Insets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
public class WindowInsetsAnimationControllerCompat$Impl30 extends WindowInsetsAnimationControllerCompat$Impl {
    private final WindowInsetsAnimationController mController;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsAnimationControllerCompat$Impl30(@NonNull WindowInsetsAnimationController windowInsetsAnimationController) {
        this.mController = windowInsetsAnimationController;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationControllerCompat$Impl
    public void finish(boolean z8) {
        androidx.core.content.pm.b.t(this.mController, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationControllerCompat$Impl
    public float getCurrentAlpha() {
        return androidx.core.content.pm.b.z(this.mController);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationControllerCompat$Impl
    public float getCurrentFraction() {
        return androidx.core.content.pm.b.b(this.mController);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationControllerCompat$Impl
    @NonNull
    public Insets getCurrentInsets() {
        return Insets.toCompatInsets(androidx.core.content.pm.b.B(this.mController));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationControllerCompat$Impl
    @NonNull
    public Insets getHiddenStateInsets() {
        return Insets.toCompatInsets(m.d(this.mController));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationControllerCompat$Impl
    @NonNull
    public Insets getShownStateInsets() {
        return Insets.toCompatInsets(androidx.core.content.pm.b.h(this.mController));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationControllerCompat$Impl
    public int getTypes() {
        return androidx.core.content.pm.b.e(this.mController);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationControllerCompat$Impl
    public boolean isCancelled() {
        return m.q(this.mController);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationControllerCompat$Impl
    public boolean isFinished() {
        return androidx.core.content.pm.b.x(this.mController);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationControllerCompat$Impl
    public void setInsetsAndAlpha(@Nullable Insets insets, float f8, float f9) {
        m.j(this.mController, insets == null ? null : insets.toPlatformInsets(), f8, f9);
    }
}
