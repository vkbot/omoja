package androidx.appcompat.app;

import android.view.Window$Callback;
import androidx.annotation.NonNull;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter$Callback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AppCompatDelegateImpl$PanelMenuPresenterCallback implements MenuPresenter$Callback {
    final /* synthetic */ AppCompatDelegateImpl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatDelegateImpl$PanelMenuPresenterCallback(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.this$0 = appCompatDelegateImpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuPresenter$Callback
    public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z8) {
        MenuBuilder rootMenu = menuBuilder.getRootMenu();
        boolean z9 = rootMenu != menuBuilder;
        AppCompatDelegateImpl appCompatDelegateImpl = this.this$0;
        if (z9) {
            menuBuilder = rootMenu;
        }
        AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureStateFindMenuPanel = appCompatDelegateImpl.findMenuPanel(menuBuilder);
        if (appCompatDelegateImpl$PanelFeatureStateFindMenuPanel != null) {
            AppCompatDelegateImpl appCompatDelegateImpl2 = this.this$0;
            if (!z9) {
                appCompatDelegateImpl2.closePanel(appCompatDelegateImpl$PanelFeatureStateFindMenuPanel, z8);
            } else {
                appCompatDelegateImpl2.callOnPanelClosed(appCompatDelegateImpl$PanelFeatureStateFindMenuPanel.featureId, appCompatDelegateImpl$PanelFeatureStateFindMenuPanel, rootMenu);
                this.this$0.closePanel(appCompatDelegateImpl$PanelFeatureStateFindMenuPanel, true);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuPresenter$Callback
    public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
        Window$Callback windowCallback;
        if (menuBuilder != menuBuilder.getRootMenu()) {
            return true;
        }
        AppCompatDelegateImpl appCompatDelegateImpl = this.this$0;
        if (!appCompatDelegateImpl.mHasActionBar || (windowCallback = appCompatDelegateImpl.getWindowCallback()) == null || this.this$0.mDestroyed) {
            return true;
        }
        windowCallback.onMenuOpened(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, menuBuilder);
        return true;
    }
}
