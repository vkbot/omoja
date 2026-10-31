package androidx.appcompat.widget;

import androidx.annotation.NonNull;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter$Callback;
import androidx.appcompat.view.menu.SubMenuBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActionMenuPresenter$PopupPresenterCallback implements MenuPresenter$Callback {
    final /* synthetic */ ActionMenuPresenter this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActionMenuPresenter$PopupPresenterCallback(ActionMenuPresenter actionMenuPresenter) {
        this.this$0 = actionMenuPresenter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuPresenter$Callback
    public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z8) {
        if (menuBuilder instanceof SubMenuBuilder) {
            menuBuilder.getRootMenu().close(false);
        }
        MenuPresenter$Callback callback = this.this$0.getCallback();
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuPresenter$Callback
    public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
        if (menuBuilder == ActionMenuPresenter.access$300(this.this$0)) {
            return false;
        }
        this.this$0.mOpenSubMenuId = ((SubMenuBuilder) menuBuilder).getItem().getItemId();
        MenuPresenter$Callback callback = this.this$0.getCallback();
        if (callback != null) {
            return callback.onOpenSubMenu(menuBuilder);
        }
        return false;
    }
}
