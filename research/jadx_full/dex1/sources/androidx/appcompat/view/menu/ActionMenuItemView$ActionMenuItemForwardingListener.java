package androidx.appcompat.view.menu;

import androidx.appcompat.widget.ForwardingListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActionMenuItemView$ActionMenuItemForwardingListener extends ForwardingListener {
    final /* synthetic */ ActionMenuItemView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionMenuItemView$ActionMenuItemForwardingListener(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.this$0 = actionMenuItemView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.ForwardingListener
    public ShowableListMenu getPopup() {
        ActionMenuItemView$PopupCallback actionMenuItemView$PopupCallback = this.this$0.mPopupCallback;
        if (actionMenuItemView$PopupCallback != null) {
            return actionMenuItemView$PopupCallback.getPopup();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.ForwardingListener
    public boolean onForwardingStarted() {
        ShowableListMenu popup;
        ActionMenuItemView actionMenuItemView = this.this$0;
        MenuBuilder$ItemInvoker menuBuilder$ItemInvoker = actionMenuItemView.mItemInvoker;
        return menuBuilder$ItemInvoker != null && menuBuilder$ItemInvoker.invokeItem(actionMenuItemView.mItemData) && (popup = getPopup()) != null && popup.isShowing();
    }
}
