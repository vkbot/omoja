package androidx.core.view;

import android.os.CancellationSignal;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class WindowInsetsControllerCompat$Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSystemBarsBehavior() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isAppearanceLightNavigationBars() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isAppearanceLightStatusBars() {
        return false;
    }

    public void addOnControllableInsetsChangedListener(WindowInsetsControllerCompat$OnControllableInsetsChangedListener windowInsetsControllerCompat$OnControllableInsetsChangedListener) {
    }

    public void hide(int i9) {
    }

    public void removeOnControllableInsetsChangedListener(@NonNull WindowInsetsControllerCompat$OnControllableInsetsChangedListener windowInsetsControllerCompat$OnControllableInsetsChangedListener) {
    }

    public void setAppearanceLightNavigationBars(boolean z8) {
    }

    public void setAppearanceLightStatusBars(boolean z8) {
    }

    public void setSystemBarsBehavior(int i9) {
    }

    public void show(int i9) {
    }

    public void controlWindowInsetsAnimation(int i9, long j9, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
    }
}
