package androidx.appcompat.widget;

import android.view.View;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AbsActionBarView$VisibilityAnimListener implements ViewPropertyAnimatorListener {
    private boolean mCanceled = false;
    int mFinalVisibility;
    final /* synthetic */ AbsActionBarView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbsActionBarView$VisibilityAnimListener(AbsActionBarView absActionBarView) {
        this.this$0 = absActionBarView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationCancel(View view) {
        this.mCanceled = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationEnd(View view) {
        if (this.mCanceled) {
            return;
        }
        AbsActionBarView absActionBarView = this.this$0;
        absActionBarView.mVisibilityAnim = null;
        AbsActionBarView.access$101(absActionBarView, this.mFinalVisibility);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationStart(View view) {
        AbsActionBarView.access$001(this.this$0, 0);
        this.mCanceled = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbsActionBarView$VisibilityAnimListener withFinalVisibility(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, int i9) {
        this.this$0.mVisibilityAnim = viewPropertyAnimatorCompat;
        this.mFinalVisibility = i9;
        return this;
    }
}
