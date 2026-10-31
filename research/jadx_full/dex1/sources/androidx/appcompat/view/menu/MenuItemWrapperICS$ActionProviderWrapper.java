package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.ActionProvider$VisibilityListener;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.view.ActionProvider;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MenuItemWrapperICS$ActionProviderWrapper extends ActionProvider implements ActionProvider$VisibilityListener {
    private final android.view.ActionProvider mInner;
    private androidx.core.view.ActionProvider$VisibilityListener mListener;
    final /* synthetic */ MenuItemWrapperICS this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MenuItemWrapperICS$ActionProviderWrapper(MenuItemWrapperICS menuItemWrapperICS, Context context, android.view.ActionProvider actionProvider) {
        super(context);
        this.this$0 = menuItemWrapperICS;
        this.mInner = actionProvider;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ android.view.ActionProvider access$000(MenuItemWrapperICS$ActionProviderWrapper menuItemWrapperICS$ActionProviderWrapper) {
        return menuItemWrapperICS$ActionProviderWrapper.mInner;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ActionProvider
    public boolean hasSubMenu() {
        return this.mInner.hasSubMenu();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ActionProvider
    public boolean isVisible() {
        return this.mInner.isVisible();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ActionProvider$VisibilityListener
    public void onActionProviderVisibilityChanged(boolean z8) {
        androidx.core.view.ActionProvider$VisibilityListener actionProvider$VisibilityListener = this.mListener;
        if (actionProvider$VisibilityListener != null) {
            actionProvider$VisibilityListener.onActionProviderVisibilityChanged(z8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ActionProvider
    public View onCreateActionView(MenuItem menuItem) {
        return this.mInner.onCreateActionView(menuItem);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ActionProvider
    public boolean onPerformDefaultAction() {
        return this.mInner.onPerformDefaultAction();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ActionProvider
    public void onPrepareSubMenu(SubMenu subMenu) {
        this.mInner.onPrepareSubMenu(this.this$0.getSubMenuWrapper(subMenu));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ActionProvider
    public boolean overridesItemVisibility() {
        return this.mInner.overridesItemVisibility();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ActionProvider
    public void refreshVisibility() {
        this.mInner.refreshVisibility();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ActionProvider
    public void setVisibilityListener(androidx.core.view.ActionProvider$VisibilityListener actionProvider$VisibilityListener) {
        this.mListener = actionProvider$VisibilityListener;
        this.mInner.setVisibilityListener(actionProvider$VisibilityListener != null ? this : null);
    }

    @Override // androidx.core.view.ActionProvider
    @NonNull
    public View onCreateActionView() {
        return this.mInner.onCreateActionView();
    }
}
