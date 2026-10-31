package androidx.appcompat.widget;

import android.view.MenuItem;
import androidx.annotation.NonNull;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuBuilder$Callback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Toolbar$3 implements MenuBuilder$Callback {
    final /* synthetic */ Toolbar this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Toolbar$3(Toolbar toolbar) {
        this.this$0 = toolbar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuBuilder$Callback
    public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        MenuBuilder$Callback menuBuilder$Callback = this.this$0.mMenuBuilderCallback;
        return menuBuilder$Callback != null && menuBuilder$Callback.onMenuItemSelected(menuBuilder, menuItem);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuBuilder$Callback
    public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) {
        if (!this.this$0.mMenuView.isOverflowMenuShowing()) {
            this.this$0.mMenuHostHelper.onPrepareMenu(menuBuilder);
        }
        MenuBuilder$Callback menuBuilder$Callback = this.this$0.mMenuBuilderCallback;
        if (menuBuilder$Callback != null) {
            menuBuilder$Callback.onMenuModeChange(menuBuilder);
        }
    }
}
