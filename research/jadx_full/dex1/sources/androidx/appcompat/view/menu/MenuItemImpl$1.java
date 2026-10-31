package androidx.appcompat.view.menu;

import androidx.core.view.ActionProvider$VisibilityListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MenuItemImpl$1 implements ActionProvider$VisibilityListener {
    final /* synthetic */ MenuItemImpl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MenuItemImpl$1(MenuItemImpl menuItemImpl) {
        this.this$0 = menuItemImpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ActionProvider$VisibilityListener
    public void onActionProviderVisibilityChanged(boolean z8) {
        MenuItemImpl menuItemImpl = this.this$0;
        menuItemImpl.mMenu.onItemVisibleChanged(menuItemImpl);
    }
}
