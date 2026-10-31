package androidx.appcompat.widget;

import androidx.appcompat.view.menu.ActionMenuItemView$PopupCallback;
import androidx.appcompat.view.menu.ShowableListMenu;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActionMenuPresenter$ActionMenuPopupCallback extends ActionMenuItemView$PopupCallback {
    final /* synthetic */ ActionMenuPresenter this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActionMenuPresenter$ActionMenuPopupCallback(ActionMenuPresenter actionMenuPresenter) {
        this.this$0 = actionMenuPresenter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.ActionMenuItemView$PopupCallback
    public ShowableListMenu getPopup() {
        ActionMenuPresenter$ActionButtonSubmenu actionMenuPresenter$ActionButtonSubmenu = this.this$0.mActionButtonPopup;
        if (actionMenuPresenter$ActionButtonSubmenu != null) {
            return actionMenuPresenter$ActionButtonSubmenu.getPopup();
        }
        return null;
    }
}
