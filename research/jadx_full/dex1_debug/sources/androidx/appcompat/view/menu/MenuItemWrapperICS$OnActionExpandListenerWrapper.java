package androidx.appcompat.view.menu;

import android.view.MenuItem;
import android.view.MenuItem$OnActionExpandListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MenuItemWrapperICS$OnActionExpandListenerWrapper implements MenuItem$OnActionExpandListener {
    private final MenuItem$OnActionExpandListener mObject;
    final /* synthetic */ MenuItemWrapperICS this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MenuItemWrapperICS$OnActionExpandListenerWrapper(MenuItemWrapperICS menuItemWrapperICS, MenuItem$OnActionExpandListener menuItem$OnActionExpandListener) {
        this.this$0 = menuItemWrapperICS;
        this.mObject = menuItem$OnActionExpandListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.MenuItem$OnActionExpandListener
    public boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.mObject.onMenuItemActionCollapse(this.this$0.getMenuItemWrapper(menuItem));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.MenuItem$OnActionExpandListener
    public boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.mObject.onMenuItemActionExpand(this.this$0.getMenuItemWrapper(menuItem));
    }
}
