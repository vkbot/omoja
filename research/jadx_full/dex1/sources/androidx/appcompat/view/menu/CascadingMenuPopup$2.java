package androidx.appcompat.view.menu;

import android.view.View;
import android.view.View$OnAttachStateChangeListener;
import android.view.ViewTreeObserver;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CascadingMenuPopup$2 implements View$OnAttachStateChangeListener {
    final /* synthetic */ CascadingMenuPopup this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CascadingMenuPopup$2(CascadingMenuPopup cascadingMenuPopup) {
        this.this$0 = cascadingMenuPopup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        ViewTreeObserver viewTreeObserver = this.this$0.mTreeObserver;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.this$0.mTreeObserver = view.getViewTreeObserver();
            }
            CascadingMenuPopup cascadingMenuPopup = this.this$0;
            cascadingMenuPopup.mTreeObserver.removeGlobalOnLayoutListener(cascadingMenuPopup.mGlobalLayoutListener);
        }
        view.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.View$OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }
}
