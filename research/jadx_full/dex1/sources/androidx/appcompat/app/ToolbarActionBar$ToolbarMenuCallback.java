package androidx.appcompat.app;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ToolbarActionBar$ToolbarMenuCallback implements AppCompatDelegateImpl$ActionBarMenuCallback {
    final /* synthetic */ ToolbarActionBar this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ToolbarActionBar$ToolbarMenuCallback(ToolbarActionBar toolbarActionBar) {
        this.this$0 = toolbarActionBar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegateImpl$ActionBarMenuCallback
    public View onCreatePanelView(int i9) {
        if (i9 == 0) {
            return new View(this.this$0.mDecorToolbar.getContext());
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegateImpl$ActionBarMenuCallback
    public boolean onPreparePanel(int i9) {
        if (i9 != 0) {
            return false;
        }
        ToolbarActionBar toolbarActionBar = this.this$0;
        if (toolbarActionBar.mToolbarMenuPrepared) {
            return false;
        }
        toolbarActionBar.mDecorToolbar.setMenuPrepared();
        this.this$0.mToolbarMenuPrepared = true;
        return false;
    }
}
