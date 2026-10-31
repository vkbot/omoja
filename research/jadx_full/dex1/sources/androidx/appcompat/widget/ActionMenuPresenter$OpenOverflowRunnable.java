package androidx.appcompat.widget;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActionMenuPresenter$OpenOverflowRunnable implements Runnable {
    private ActionMenuPresenter$OverflowPopup mPopup;
    final /* synthetic */ ActionMenuPresenter this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActionMenuPresenter$OpenOverflowRunnable(ActionMenuPresenter actionMenuPresenter, ActionMenuPresenter$OverflowPopup actionMenuPresenter$OverflowPopup) {
        this.this$0 = actionMenuPresenter;
        this.mPopup = actionMenuPresenter$OverflowPopup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        if (ActionMenuPresenter.access$400(this.this$0) != null) {
            ActionMenuPresenter.access$500(this.this$0).changeMenuMode();
        }
        View view = (View) ActionMenuPresenter.access$600(this.this$0);
        if (view != null && view.getWindowToken() != null && this.mPopup.tryShow()) {
            this.this$0.mOverflowPopup = this.mPopup;
        }
        this.this$0.mPostedOpenRunnable = null;
    }
}
