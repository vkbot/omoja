package androidx.core.view;

import android.view.WindowInsets;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.Insets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(21)
public class WindowInsetsCompat$Impl21 extends WindowInsetsCompat$Impl20 {
    private Insets mStableInsets;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsCompat$Impl21(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsetsCompat$Impl21 windowInsetsCompat$Impl21) {
        super(windowInsetsCompat, windowInsetsCompat$Impl21);
        this.mStableInsets = null;
        this.mStableInsets = windowInsetsCompat$Impl21.mStableInsets;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    @NonNull
    public WindowInsetsCompat consumeStableInsets() {
        return WindowInsetsCompat.toWindowInsetsCompat(this.mPlatformInsets.consumeStableInsets());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    @NonNull
    public WindowInsetsCompat consumeSystemWindowInsets() {
        return WindowInsetsCompat.toWindowInsetsCompat(this.mPlatformInsets.consumeSystemWindowInsets());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    @NonNull
    public final Insets getStableInsets() {
        if (this.mStableInsets == null) {
            this.mStableInsets = Insets.of(this.mPlatformInsets.getStableInsetLeft(), this.mPlatformInsets.getStableInsetTop(), this.mPlatformInsets.getStableInsetRight(), this.mPlatformInsets.getStableInsetBottom());
        }
        return this.mStableInsets;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    public boolean isConsumed() {
        return this.mPlatformInsets.isConsumed();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    public void setStableInsets(@Nullable Insets insets) {
        this.mStableInsets = insets;
    }

    public WindowInsetsCompat$Impl21(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
        super(windowInsetsCompat, windowInsets);
        this.mStableInsets = null;
    }
}
