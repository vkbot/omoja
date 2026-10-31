package androidx.appcompat.widget;

import android.view.View;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ToolbarWidgetWrapper$2 extends ViewPropertyAnimatorListenerAdapter {
    private boolean mCanceled = false;
    final /* synthetic */ ToolbarWidgetWrapper this$0;
    final /* synthetic */ int val$visibility;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ToolbarWidgetWrapper$2(ToolbarWidgetWrapper toolbarWidgetWrapper, int i9) {
        this.this$0 = toolbarWidgetWrapper;
        this.val$visibility = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationCancel(View view) {
        this.mCanceled = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationEnd(View view) {
        if (this.mCanceled) {
            return;
        }
        this.this$0.mToolbar.setVisibility(this.val$visibility);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationStart(View view) {
        this.this$0.mToolbar.setVisibility(0);
    }
}
