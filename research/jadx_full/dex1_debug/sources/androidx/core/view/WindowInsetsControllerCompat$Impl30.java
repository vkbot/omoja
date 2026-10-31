package androidx.core.view;

import android.os.CancellationSignal;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
import android.view.WindowInsetsController$OnControllableInsetsChangedListener;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.collection.SimpleArrayMap;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
public class WindowInsetsControllerCompat$Impl30 extends WindowInsetsControllerCompat$Impl {
    final WindowInsetsControllerCompat mCompatController;
    final WindowInsetsController mInsetsController;
    private final SimpleArrayMap<WindowInsetsControllerCompat$OnControllableInsetsChangedListener, WindowInsetsController$OnControllableInsetsChangedListener> mListeners;
    final SoftwareKeyboardControllerCompat mSoftwareKeyboardControllerCompat;
    protected Window mWindow;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsControllerCompat$Impl30(@NonNull WindowInsetsController windowInsetsController, @NonNull WindowInsetsControllerCompat windowInsetsControllerCompat, @NonNull SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
        this.mListeners = new SimpleArrayMap<>();
        this.mInsetsController = windowInsetsController;
        this.mCompatController = windowInsetsControllerCompat;
        this.mSoftwareKeyboardControllerCompat = softwareKeyboardControllerCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(WindowInsetsControllerCompat$Impl30 windowInsetsControllerCompat$Impl30, WindowInsetsControllerCompat$OnControllableInsetsChangedListener windowInsetsControllerCompat$OnControllableInsetsChangedListener, WindowInsetsController windowInsetsController, int i9) {
        windowInsetsControllerCompat$Impl30.lambda$addOnControllableInsetsChangedListener$0(windowInsetsControllerCompat$OnControllableInsetsChangedListener, windowInsetsController, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$addOnControllableInsetsChangedListener$0(WindowInsetsControllerCompat$OnControllableInsetsChangedListener windowInsetsControllerCompat$OnControllableInsetsChangedListener, WindowInsetsController windowInsetsController, int i9) {
        if (this.mInsetsController == windowInsetsController) {
            windowInsetsControllerCompat$OnControllableInsetsChangedListener.onControllableInsetsChanged(this.mCompatController, i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public void addOnControllableInsetsChangedListener(@NonNull WindowInsetsControllerCompat$OnControllableInsetsChangedListener windowInsetsControllerCompat$OnControllableInsetsChangedListener) {
        if (this.mListeners.containsKey(windowInsetsControllerCompat$OnControllableInsetsChangedListener)) {
            return;
        }
        o oVar = new o(this, windowInsetsControllerCompat$OnControllableInsetsChangedListener);
        this.mListeners.put(windowInsetsControllerCompat$OnControllableInsetsChangedListener, oVar);
        m.o(this.mInsetsController, oVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public void controlWindowInsetsAnimation(int i9, long j9, @Nullable Interpolator interpolator, @Nullable CancellationSignal cancellationSignal, @NonNull WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        m.m(this.mInsetsController, i9, j9, interpolator, cancellationSignal, new WindowInsetsControllerCompat$Impl30$1(this, windowInsetsAnimationControlListenerCompat));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public int getSystemBarsBehavior() {
        return m.s(this.mInsetsController);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public void hide(int i9) {
        if ((i9 & 8) != 0) {
            this.mSoftwareKeyboardControllerCompat.hide();
        }
        androidx.core.content.pm.b.C(this.mInsetsController, i9 & (-9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public boolean isAppearanceLightNavigationBars() {
        m.z(this.mInsetsController);
        return (m.b(this.mInsetsController) & 16) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public boolean isAppearanceLightStatusBars() {
        m.z(this.mInsetsController);
        return (m.b(this.mInsetsController) & 8) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public void removeOnControllableInsetsChangedListener(@NonNull WindowInsetsControllerCompat$OnControllableInsetsChangedListener windowInsetsControllerCompat$OnControllableInsetsChangedListener) {
        WindowInsetsController$OnControllableInsetsChangedListener windowInsetsController$OnControllableInsetsChangedListenerF = m.f(this.mListeners.remove(windowInsetsControllerCompat$OnControllableInsetsChangedListener));
        if (windowInsetsController$OnControllableInsetsChangedListenerF != null) {
            m.n(this.mInsetsController, windowInsetsController$OnControllableInsetsChangedListenerF);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public void setAppearanceLightNavigationBars(boolean z8) {
        Window window = this.mWindow;
        if (z8) {
            if (window != null) {
                setSystemUiFlag(16);
            }
            m.v(this.mInsetsController);
        } else {
            if (window != null) {
                unsetSystemUiFlag(16);
            }
            m.x(this.mInsetsController);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public void setAppearanceLightStatusBars(boolean z8) {
        Window window = this.mWindow;
        if (z8) {
            if (window != null) {
                setSystemUiFlag(8192);
            }
            m.B(this.mInsetsController);
        } else {
            if (window != null) {
                unsetSystemUiFlag(8192);
            }
            m.k(this.mInsetsController);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public void setSystemBarsBehavior(int i9) {
        m.l(this.mInsetsController, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSystemUiFlag(int i9) {
        View decorView = this.mWindow.getDecorView();
        decorView.setSystemUiVisibility(i9 | decorView.getSystemUiVisibility());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl
    public void show(int i9) {
        if ((i9 & 8) != 0) {
            this.mSoftwareKeyboardControllerCompat.show();
        }
        androidx.core.content.pm.b.u(this.mInsetsController, i9 & (-9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unsetSystemUiFlag(int i9) {
        View decorView = this.mWindow.getDecorView();
        decorView.setSystemUiVisibility((~i9) & decorView.getSystemUiVisibility());
    }

    public WindowInsetsControllerCompat$Impl30(@NonNull Window window, @NonNull WindowInsetsControllerCompat windowInsetsControllerCompat, @NonNull SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
        this(m.g(window), windowInsetsControllerCompat, softwareKeyboardControllerCompat);
        this.mWindow = window;
    }
}
