package androidx.appcompat.widget;

import android.view.ViewTreeObserver$OnGlobalLayoutListener;
import androidx.core.view.ActionProvider;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActivityChooserView$2 implements ViewTreeObserver$OnGlobalLayoutListener {
    final /* synthetic */ ActivityChooserView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActivityChooserView$2(ActivityChooserView activityChooserView) {
        this.this$0 = activityChooserView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewTreeObserver$OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (this.this$0.isShowingPopup()) {
            boolean zIsShown = this.this$0.isShown();
            ActivityChooserView activityChooserView = this.this$0;
            if (!zIsShown) {
                activityChooserView.getListPopupWindow().dismiss();
                return;
            }
            activityChooserView.getListPopupWindow().show();
            ActionProvider actionProvider = this.this$0.mProvider;
            if (actionProvider != null) {
                actionProvider.subUiVisibilityChanged(true);
            }
        }
    }
}
