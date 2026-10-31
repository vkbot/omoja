package androidx.appcompat.view.menu;

import android.os.SystemClock;
import android.view.MenuItem;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.MenuItemHoverListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CascadingMenuPopup$3 implements MenuItemHoverListener {
    final /* synthetic */ CascadingMenuPopup this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CascadingMenuPopup$3(CascadingMenuPopup cascadingMenuPopup) {
        this.this$0 = cascadingMenuPopup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.MenuItemHoverListener
    public void onItemHoverEnter(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        this.this$0.mSubMenuHoverHandler.removeCallbacksAndMessages(null);
        int size = this.this$0.mShowingMenus.size();
        int i9 = 0;
        while (true) {
            if (i9 >= size) {
                i9 = -1;
                break;
            } else if (menuBuilder == this.this$0.mShowingMenus.get(i9).menu) {
                break;
            } else {
                i9++;
            }
        }
        if (i9 == -1) {
            return;
        }
        int i10 = i9 + 1;
        this.this$0.mSubMenuHoverHandler.postAtTime(new CascadingMenuPopup$3$1(this, i10 < this.this$0.mShowingMenus.size() ? this.this$0.mShowingMenus.get(i10) : null, menuItem, menuBuilder), menuBuilder, SystemClock.uptimeMillis() + 200);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.MenuItemHoverListener
    public void onItemHoverExit(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        this.this$0.mSubMenuHoverHandler.removeCallbacksAndMessages(menuBuilder);
    }
}
