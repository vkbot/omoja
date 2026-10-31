package androidx.core.view;

import android.os.Build$VERSION;
import android.view.View;
import android.view.WindowInsetsController;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class SoftwareKeyboardControllerCompat {
    private final SoftwareKeyboardControllerCompat$Impl mImpl;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SoftwareKeyboardControllerCompat(@NonNull View view) {
        if (Build$VERSION.SDK_INT >= 30) {
            this.mImpl = new SoftwareKeyboardControllerCompat$Impl30(view);
        } else {
            this.mImpl = new SoftwareKeyboardControllerCompat$Impl20(view);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void hide() {
        this.mImpl.hide();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void show() {
        this.mImpl.show();
    }

    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
    @Deprecated
    public SoftwareKeyboardControllerCompat(@NonNull WindowInsetsController windowInsetsController) {
        this.mImpl = new SoftwareKeyboardControllerCompat$Impl30(windowInsetsController);
    }
}
