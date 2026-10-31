package androidx.appcompat.widget;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver$OnGlobalLayoutListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatSpinner$2 implements ViewTreeObserver$OnGlobalLayoutListener {
    final /* synthetic */ AppCompatSpinner this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatSpinner$2(AppCompatSpinner appCompatSpinner) {
        this.this$0 = appCompatSpinner;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewTreeObserver$OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (!this.this$0.getInternalPopup().isShowing()) {
            this.this$0.showPopup();
        }
        ViewTreeObserver viewTreeObserver = this.this$0.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeOnGlobalLayoutListener(this);
        }
    }
}
