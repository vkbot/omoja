package androidx.core.view;

import android.os.Build$VERSION;
import android.view.View;
import android.view.View$OnApplyWindowInsetsListener;
import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewCompat$Api21Impl$1 implements View$OnApplyWindowInsetsListener {
    WindowInsetsCompat mLastInsets = null;
    final /* synthetic */ OnApplyWindowInsetsListener val$listener;
    final /* synthetic */ View val$v;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public ViewCompat$Api21Impl$1(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        this.val$v = view;
        this.val$listener = onApplyWindowInsetsListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
        int i9 = Build$VERSION.SDK_INT;
        if (i9 < 30) {
            ViewCompat$Api21Impl.callCompatInsetAnimationCallback(windowInsets, this.val$v);
            if (windowInsetsCompat.equals(this.mLastInsets)) {
                return this.val$listener.onApplyWindowInsets(view, windowInsetsCompat).toWindowInsets();
            }
        }
        this.mLastInsets = windowInsetsCompat;
        WindowInsetsCompat windowInsetsCompatOnApplyWindowInsets = this.val$listener.onApplyWindowInsets(view, windowInsetsCompat);
        if (i9 >= 30) {
            return windowInsetsCompatOnApplyWindowInsets.toWindowInsets();
        }
        ViewCompat.requestApplyInsets(view);
        return windowInsetsCompatOnApplyWindowInsets.toWindowInsets();
    }
}
