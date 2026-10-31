package androidx.appcompat.widget;

import android.view.MenuItem;
import androidx.annotation.NonNull;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuBuilder$Callback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class PopupMenu$1 implements MenuBuilder$Callback {
    final /* synthetic */ PopupMenu this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PopupMenu$1(PopupMenu popupMenu) {
        this.this$0 = popupMenu;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuBuilder$Callback
    public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        PopupMenu$OnMenuItemClickListener popupMenu$OnMenuItemClickListener = this.this$0.mMenuItemClickListener;
        if (popupMenu$OnMenuItemClickListener != null) {
            return popupMenu$OnMenuItemClickListener.onMenuItemClick(menuItem);
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder$Callback
    public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) {
    }
}
