package androidx.appcompat.widget;

import android.view.MenuItem;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Toolbar$1 implements ActionMenuView$OnMenuItemClickListener {
    final /* synthetic */ Toolbar this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Toolbar$1(Toolbar toolbar) {
        this.this$0 = toolbar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.ActionMenuView$OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        if (this.this$0.mMenuHostHelper.onMenuItemSelected(menuItem)) {
            return true;
        }
        Toolbar$OnMenuItemClickListener toolbar$OnMenuItemClickListener = this.this$0.mOnMenuItemClickListener;
        if (toolbar$OnMenuItemClickListener != null) {
            return toolbar$OnMenuItemClickListener.onMenuItemClick(menuItem);
        }
        return false;
    }
}
