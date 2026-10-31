package androidx.core.view;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.graphics.Insets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
public class WindowInsetsCompat$BuilderImpl30 extends WindowInsetsCompat$BuilderImpl29 {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsCompat$BuilderImpl30() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$BuilderImpl
    public void setInsets(int i9, @NonNull Insets insets) {
        m.h(this.mPlatBuilder, WindowInsetsCompat$TypeImpl30.toPlatformType(i9), insets.toPlatformInsets());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$BuilderImpl
    public void setInsetsIgnoringVisibility(int i9, @NonNull Insets insets) {
        m.u(this.mPlatBuilder, WindowInsetsCompat$TypeImpl30.toPlatformType(i9), insets.toPlatformInsets());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$BuilderImpl
    public void setVisible(int i9, boolean z8) {
        m.i(this.mPlatBuilder, WindowInsetsCompat$TypeImpl30.toPlatformType(i9), z8);
    }

    public WindowInsetsCompat$BuilderImpl30(@NonNull WindowInsetsCompat windowInsetsCompat) {
        super(windowInsetsCompat);
    }
}
