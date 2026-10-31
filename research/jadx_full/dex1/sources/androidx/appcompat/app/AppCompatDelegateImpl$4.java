package androidx.appcompat.app;

import android.graphics.Rect;
import androidx.appcompat.widget.FitWindowsViewGroup$OnFitSystemWindowsListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatDelegateImpl$4 implements FitWindowsViewGroup$OnFitSystemWindowsListener {
    final /* synthetic */ AppCompatDelegateImpl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatDelegateImpl$4(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.this$0 = appCompatDelegateImpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.FitWindowsViewGroup$OnFitSystemWindowsListener
    public void onFitSystemWindows(Rect rect) {
        rect.top = this.this$0.updateStatusGuard(null, rect);
    }
}
