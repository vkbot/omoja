package androidx.appcompat.view.menu;

import android.view.MenuItem;
import android.view.MenuItem$OnMenuItemClickListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MenuItemWrapperICS$OnMenuItemClickListenerWrapper implements MenuItem$OnMenuItemClickListener {
    private final MenuItem$OnMenuItemClickListener mObject;
    final /* synthetic */ MenuItemWrapperICS this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MenuItemWrapperICS$OnMenuItemClickListenerWrapper(MenuItemWrapperICS menuItemWrapperICS, MenuItem$OnMenuItemClickListener menuItem$OnMenuItemClickListener) {
        this.this$0 = menuItemWrapperICS;
        this.mObject = menuItem$OnMenuItemClickListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.MenuItem$OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        return this.mObject.onMenuItemClick(this.this$0.getMenuItemWrapper(menuItem));
    }
}
