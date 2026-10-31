package androidx.appcompat.widget;

import android.view.MenuItem;
import androidx.annotation.NonNull;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuBuilder$Callback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActionMenuView$MenuBuilderCallback implements MenuBuilder$Callback {
    final /* synthetic */ ActionMenuView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActionMenuView$MenuBuilderCallback(ActionMenuView actionMenuView) {
        this.this$0 = actionMenuView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuBuilder$Callback
    public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        ActionMenuView$OnMenuItemClickListener actionMenuView$OnMenuItemClickListener = this.this$0.mOnMenuItemClickListener;
        return actionMenuView$OnMenuItemClickListener != null && actionMenuView$OnMenuItemClickListener.onMenuItemClick(menuItem);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuBuilder$Callback
    public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) {
        MenuBuilder$Callback menuBuilder$Callback = this.this$0.mMenuBuilderCallback;
        if (menuBuilder$Callback != null) {
            menuBuilder$Callback.onMenuModeChange(menuBuilder);
        }
    }
}
