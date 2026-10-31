package androidx.core.view;

import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.view.accessibility.AccessibilityEventCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(23)
public class WindowInsetsControllerCompat$Impl23 extends WindowInsetsControllerCompat$Impl20 {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsControllerCompat$Impl23(@NonNull Window window, @NonNull SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
        super(window, softwareKeyboardControllerCompat);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public boolean isAppearanceLightStatusBars() {
        return (this.mWindow.getDecorView().getSystemUiVisibility() & 8192) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public void setAppearanceLightStatusBars(boolean z8) {
        if (!z8) {
            unsetSystemUiFlag(8192);
            return;
        }
        unsetWindowFlag(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
        setWindowFlag(Integer.MIN_VALUE);
        setSystemUiFlag(8192);
    }
}
