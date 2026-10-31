package androidx.appcompat.app;

import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar$OnMenuItemClickListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ToolbarActionBar$2 implements Toolbar$OnMenuItemClickListener {
    final /* synthetic */ ToolbarActionBar this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ToolbarActionBar$2(ToolbarActionBar toolbarActionBar) {
        this.this$0 = toolbarActionBar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.Toolbar$OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        return this.this$0.mWindowCallback.onMenuItemSelected(0, menuItem);
    }
}
