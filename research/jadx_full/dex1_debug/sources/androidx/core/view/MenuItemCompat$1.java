package androidx.core.view;

import android.view.MenuItem;
import android.view.MenuItem$OnActionExpandListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MenuItemCompat$1 implements MenuItem$OnActionExpandListener {
    final /* synthetic */ MenuItemCompat$OnActionExpandListener val$listener;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public MenuItemCompat$1(MenuItemCompat$OnActionExpandListener menuItemCompat$OnActionExpandListener) {
        this.val$listener = menuItemCompat$OnActionExpandListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.MenuItem$OnActionExpandListener
    public boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.val$listener.onMenuItemActionCollapse(menuItem);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.MenuItem$OnActionExpandListener
    public boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.val$listener.onMenuItemActionExpand(menuItem);
    }
}
