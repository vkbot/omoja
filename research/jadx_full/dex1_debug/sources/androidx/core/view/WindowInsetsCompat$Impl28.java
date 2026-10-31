package androidx.core.view;

import android.view.WindowInsets;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(28)
public class WindowInsetsCompat$Impl28 extends WindowInsetsCompat$Impl21 {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsCompat$Impl28(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
        super(windowInsetsCompat, windowInsets);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    @NonNull
    public WindowInsetsCompat consumeDisplayCutout() {
        return WindowInsetsCompat.toWindowInsetsCompat(androidx.activity.j.t(this.mPlatformInsets));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl20, androidx.core.view.WindowInsetsCompat$Impl
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WindowInsetsCompat$Impl28)) {
            return false;
        }
        WindowInsetsCompat$Impl28 windowInsetsCompat$Impl28 = (WindowInsetsCompat$Impl28) obj;
        return Objects.equals(this.mPlatformInsets, windowInsetsCompat$Impl28.mPlatformInsets) && Objects.equals(this.mRootViewVisibleInsets, windowInsetsCompat$Impl28.mRootViewVisibleInsets);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    @Nullable
    public DisplayCutoutCompat getDisplayCutout() {
        return DisplayCutoutCompat.wrap(androidx.activity.j.s(this.mPlatformInsets));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    public int hashCode() {
        return this.mPlatformInsets.hashCode();
    }

    public WindowInsetsCompat$Impl28(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsetsCompat$Impl28 windowInsetsCompat$Impl28) {
        super(windowInsetsCompat, windowInsetsCompat$Impl28);
    }
}
