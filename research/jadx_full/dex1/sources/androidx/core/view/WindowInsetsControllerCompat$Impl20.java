package androidx.core.view;

import android.os.CancellationSignal;
import android.view.View;
import android.view.Window;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(20)
public class WindowInsetsControllerCompat$Impl20 extends WindowInsetsControllerCompat$Impl {

    @NonNull
    private final SoftwareKeyboardControllerCompat mSoftwareKeyboardControllerCompat;

    @NonNull
    protected final Window mWindow;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsControllerCompat$Impl20(@NonNull Window window, @NonNull SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
        this.mWindow = window;
        this.mSoftwareKeyboardControllerCompat = softwareKeyboardControllerCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void hideForType(int i9) {
        if (i9 == 1) {
            setSystemUiFlag(4);
        } else if (i9 == 2) {
            setSystemUiFlag(2);
        } else {
            if (i9 != 8) {
                return;
            }
            this.mSoftwareKeyboardControllerCompat.hide();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void showForType(int i9) {
        if (i9 == 1) {
            unsetSystemUiFlag(4);
            unsetWindowFlag(1024);
        } else if (i9 == 2) {
            unsetSystemUiFlag(2);
        } else {
            if (i9 != 8) {
                return;
            }
            this.mSoftwareKeyboardControllerCompat.show();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public int getSystemBarsBehavior() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public void hide(int i9) {
        for (int i10 = 1; i10 <= 256; i10 <<= 1) {
            if ((i9 & i10) != 0) {
                hideForType(i10);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public void setSystemBarsBehavior(int i9) {
        if (i9 == 0) {
            unsetSystemUiFlag(6144);
            return;
        }
        if (i9 == 1) {
            unsetSystemUiFlag(4096);
            setSystemUiFlag(2048);
        } else {
            if (i9 != 2) {
                return;
            }
            unsetSystemUiFlag(2048);
            setSystemUiFlag(4096);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSystemUiFlag(int i9) {
        View decorView = this.mWindow.getDecorView();
        decorView.setSystemUiVisibility(i9 | decorView.getSystemUiVisibility());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWindowFlag(int i9) {
        this.mWindow.addFlags(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public void show(int i9) {
        for (int i10 = 1; i10 <= 256; i10 <<= 1) {
            if ((i9 & i10) != 0) {
                showForType(i10);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unsetSystemUiFlag(int i9) {
        View decorView = this.mWindow.getDecorView();
        decorView.setSystemUiVisibility((~i9) & decorView.getSystemUiVisibility());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unsetWindowFlag(int i9) {
        this.mWindow.clearFlags(i9);
    }

    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public void addOnControllableInsetsChangedListener(WindowInsetsControllerCompat$OnControllableInsetsChangedListener windowInsetsControllerCompat$OnControllableInsetsChangedListener) {
    }

    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public void removeOnControllableInsetsChangedListener(@NonNull WindowInsetsControllerCompat$OnControllableInsetsChangedListener windowInsetsControllerCompat$OnControllableInsetsChangedListener) {
    }

    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public void controlWindowInsetsAnimation(int i9, long j9, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
    }
}
