package androidx.core.view;

import android.view.View;
import android.view.WindowInsets;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.graphics.Insets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
public class WindowInsetsCompat$Impl30 extends WindowInsetsCompat$Impl29 {

    @NonNull
    static final WindowInsetsCompat CONSUMED = WindowInsetsCompat.toWindowInsetsCompat(m.e());

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsCompat$Impl30(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
        super(windowInsetsCompat, windowInsets);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl20, androidx.core.view.WindowInsetsCompat$Impl
    @NonNull
    public Insets getInsets(int i9) {
        return Insets.toCompatInsets(m.t(this.mPlatformInsets, WindowInsetsCompat$TypeImpl30.toPlatformType(i9)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl20, androidx.core.view.WindowInsetsCompat$Impl
    @NonNull
    public Insets getInsetsIgnoringVisibility(int i9) {
        return Insets.toCompatInsets(m.c(this.mPlatformInsets, WindowInsetsCompat$TypeImpl30.toPlatformType(i9)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl20, androidx.core.view.WindowInsetsCompat$Impl
    public boolean isVisible(int i9) {
        return m.p(this.mPlatformInsets, WindowInsetsCompat$TypeImpl30.toPlatformType(i9));
    }

    public WindowInsetsCompat$Impl30(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsetsCompat$Impl30 windowInsetsCompat$Impl30) {
        super(windowInsetsCompat, windowInsetsCompat$Impl30);
    }

    @Override // androidx.core.view.WindowInsetsCompat$Impl20, androidx.core.view.WindowInsetsCompat$Impl
    public final void copyRootViewBounds(@NonNull View view) {
    }
}
