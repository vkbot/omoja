package androidx.core.view;

import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(26)
public class WindowInsetsControllerCompat$Impl26 extends WindowInsetsControllerCompat$Impl23 {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsControllerCompat$Impl26(@NonNull Window window, @NonNull SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
        super(window, softwareKeyboardControllerCompat);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public boolean isAppearanceLightNavigationBars() {
        return (this.mWindow.getDecorView().getSystemUiVisibility() & 16) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public void setAppearanceLightNavigationBars(boolean z8) {
        if (!z8) {
            unsetSystemUiFlag(16);
            return;
        }
        unsetWindowFlag(134217728);
        setWindowFlag(Integer.MIN_VALUE);
        setSystemUiFlag(16);
    }
}
