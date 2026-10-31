package androidx.appcompat.app;

import android.view.Window$Callback;
import androidx.annotation.NonNull;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter$Callback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AppCompatDelegateImpl$ActionMenuPresenterCallback implements MenuPresenter$Callback {
    final /* synthetic */ AppCompatDelegateImpl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatDelegateImpl$ActionMenuPresenterCallback(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.this$0 = appCompatDelegateImpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuPresenter$Callback
    public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z8) {
        this.this$0.checkCloseActionMenu(menuBuilder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuPresenter$Callback
    public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
        Window$Callback windowCallback = this.this$0.getWindowCallback();
        if (windowCallback == null) {
            return true;
        }
        windowCallback.onMenuOpened(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, menuBuilder);
        return true;
    }
}
