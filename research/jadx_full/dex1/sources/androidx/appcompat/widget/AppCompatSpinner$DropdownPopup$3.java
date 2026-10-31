package androidx.appcompat.widget;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver$OnGlobalLayoutListener;
import android.widget.PopupWindow$OnDismissListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatSpinner$DropdownPopup$3 implements PopupWindow$OnDismissListener {
    final /* synthetic */ AppCompatSpinner$DropdownPopup this$1;
    final /* synthetic */ ViewTreeObserver$OnGlobalLayoutListener val$layoutListener;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public AppCompatSpinner$DropdownPopup$3(AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup, ViewTreeObserver$OnGlobalLayoutListener viewTreeObserver$OnGlobalLayoutListener) {
        this.this$1 = appCompatSpinner$DropdownPopup;
        this.val$layoutListener = viewTreeObserver$OnGlobalLayoutListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.PopupWindow$OnDismissListener
    public void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.this$1.this$0.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.val$layoutListener);
        }
    }
}
