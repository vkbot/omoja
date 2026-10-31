package androidx.appcompat.app;

import android.view.View;
import android.widget.PopupWindow;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1 extends ViewPropertyAnimatorListenerAdapter {
    final /* synthetic */ AppCompatDelegateImpl$ActionModeCallbackWrapperV9 this$1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1(AppCompatDelegateImpl$ActionModeCallbackWrapperV9 appCompatDelegateImpl$ActionModeCallbackWrapperV9) {
        this.this$1 = appCompatDelegateImpl$ActionModeCallbackWrapperV9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationEnd(View view) {
        this.this$1.this$0.mActionModeView.setVisibility(8);
        AppCompatDelegateImpl appCompatDelegateImpl = this.this$1.this$0;
        PopupWindow popupWindow = appCompatDelegateImpl.mActionModePopup;
        if (popupWindow != null) {
            popupWindow.dismiss();
        } else if (appCompatDelegateImpl.mActionModeView.getParent() instanceof View) {
            ViewCompat.requestApplyInsets((View) this.this$1.this$0.mActionModeView.getParent());
        }
        this.this$1.this$0.mActionModeView.killMode();
        this.this$1.this$0.mFadeAnim.setListener(null);
        AppCompatDelegateImpl appCompatDelegateImpl2 = this.this$1.this$0;
        appCompatDelegateImpl2.mFadeAnim = null;
        ViewCompat.requestApplyInsets(appCompatDelegateImpl2.mSubDecor);
    }
}
