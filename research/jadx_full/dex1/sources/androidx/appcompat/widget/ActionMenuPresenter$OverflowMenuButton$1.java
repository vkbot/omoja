package androidx.appcompat.widget;

import android.view.View;
import androidx.appcompat.view.menu.ShowableListMenu;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActionMenuPresenter$OverflowMenuButton$1 extends ForwardingListener {
    final /* synthetic */ ActionMenuPresenter$OverflowMenuButton this$1;
    final /* synthetic */ ActionMenuPresenter val$this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionMenuPresenter$OverflowMenuButton$1(ActionMenuPresenter$OverflowMenuButton actionMenuPresenter$OverflowMenuButton, View view, ActionMenuPresenter actionMenuPresenter) {
        super(view);
        this.this$1 = actionMenuPresenter$OverflowMenuButton;
        this.val$this$0 = actionMenuPresenter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.ForwardingListener
    public ShowableListMenu getPopup() {
        ActionMenuPresenter$OverflowPopup actionMenuPresenter$OverflowPopup = this.this$1.this$0.mOverflowPopup;
        if (actionMenuPresenter$OverflowPopup == null) {
            return null;
        }
        return actionMenuPresenter$OverflowPopup.getPopup();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.ForwardingListener
    public boolean onForwardingStarted() {
        this.this$1.this$0.showOverflowMenu();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.ForwardingListener
    public boolean onForwardingStopped() {
        ActionMenuPresenter actionMenuPresenter = this.this$1.this$0;
        if (actionMenuPresenter.mPostedOpenRunnable != null) {
            return false;
        }
        actionMenuPresenter.hideOverflowMenu();
        return true;
    }
}
