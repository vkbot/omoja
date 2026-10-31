package androidx.appcompat.widget;

import androidx.annotation.NonNull;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter$Callback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActionMenuView$ActionMenuPresenterCallback implements MenuPresenter$Callback {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuPresenter$Callback
    public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter$Callback
    public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z8) {
    }
}
