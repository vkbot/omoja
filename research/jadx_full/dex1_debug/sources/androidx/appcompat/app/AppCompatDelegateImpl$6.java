package androidx.appcompat.app;

import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatDelegateImpl$6 implements Runnable {
    final /* synthetic */ AppCompatDelegateImpl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatDelegateImpl$6(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.this$0 = appCompatDelegateImpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        AppCompatDelegateImpl appCompatDelegateImpl = this.this$0;
        appCompatDelegateImpl.mActionModePopup.showAtLocation(appCompatDelegateImpl.mActionModeView, 55, 0, 0);
        this.this$0.endOnGoingFadeAnimation();
        boolean zShouldAnimateActionModeView = this.this$0.shouldAnimateActionModeView();
        AppCompatDelegateImpl appCompatDelegateImpl2 = this.this$0;
        if (!zShouldAnimateActionModeView) {
            appCompatDelegateImpl2.mActionModeView.setAlpha(1.0f);
            this.this$0.mActionModeView.setVisibility(0);
        } else {
            appCompatDelegateImpl2.mActionModeView.setAlpha(0.0f);
            AppCompatDelegateImpl appCompatDelegateImpl3 = this.this$0;
            appCompatDelegateImpl3.mFadeAnim = ViewCompat.animate(appCompatDelegateImpl3.mActionModeView).alpha(1.0f);
            this.this$0.mFadeAnim.setListener(new AppCompatDelegateImpl$6$1(this));
        }
    }
}
