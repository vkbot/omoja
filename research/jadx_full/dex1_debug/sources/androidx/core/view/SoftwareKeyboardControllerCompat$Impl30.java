package androidx.core.view;

import android.os.Build$VERSION;
import android.view.View;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
public class SoftwareKeyboardControllerCompat$Impl30 extends SoftwareKeyboardControllerCompat$Impl20 {

    @Nullable
    private View mView;

    @Nullable
    private WindowInsetsController mWindowInsetsController;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SoftwareKeyboardControllerCompat$Impl30(@Nullable WindowInsetsController windowInsetsController) {
        super(null);
        this.mWindowInsetsController = windowInsetsController;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(AtomicBoolean atomicBoolean, WindowInsetsController windowInsetsController, int i9) {
        lambda$hide$0(atomicBoolean, windowInsetsController, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$hide$0(AtomicBoolean atomicBoolean, WindowInsetsController windowInsetsController, int i9) {
        atomicBoolean.set((i9 & 8) != 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.SoftwareKeyboardControllerCompat$Impl20, androidx.core.view.SoftwareKeyboardControllerCompat$Impl
    public void hide() {
        View view;
        WindowInsetsController windowInsetsControllerL = this.mWindowInsetsController;
        if (windowInsetsControllerL == null) {
            View view2 = this.mView;
            windowInsetsControllerL = view2 != null ? androidx.core.content.pm.b.l(view2) : null;
        }
        if (windowInsetsControllerL == null) {
            super.hide();
            return;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        h hVar = new h(atomicBoolean);
        androidx.core.content.pm.b.v(windowInsetsControllerL, hVar);
        if (!atomicBoolean.get() && (view = this.mView) != null) {
            ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.mView.getWindowToken(), 0);
        }
        androidx.core.content.pm.b.D(windowInsetsControllerL, hVar);
        androidx.core.content.pm.b.C(windowInsetsControllerL, androidx.core.content.pm.b.c());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.SoftwareKeyboardControllerCompat$Impl20, androidx.core.view.SoftwareKeyboardControllerCompat$Impl
    public void show() {
        View view = this.mView;
        if (view != null && Build$VERSION.SDK_INT < 33) {
            ((InputMethodManager) view.getContext().getSystemService("input_method")).isActive();
        }
        WindowInsetsController windowInsetsControllerL = this.mWindowInsetsController;
        if (windowInsetsControllerL == null) {
            View view2 = this.mView;
            windowInsetsControllerL = view2 != null ? androidx.core.content.pm.b.l(view2) : null;
        }
        if (windowInsetsControllerL != null) {
            androidx.core.content.pm.b.u(windowInsetsControllerL, androidx.core.content.pm.b.c());
        } else {
            super.show();
        }
    }

    public SoftwareKeyboardControllerCompat$Impl30(@NonNull View view) {
        super(view);
        this.mView = view;
    }
}
