package androidx.appcompat.widget;

import android.R$id;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.Window$Callback;
import androidx.appcompat.view.menu.ActionMenuItem;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ToolbarWidgetWrapper$1 implements View$OnClickListener {
    final ActionMenuItem mNavItem;
    final /* synthetic */ ToolbarWidgetWrapper this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ToolbarWidgetWrapper$1(ToolbarWidgetWrapper toolbarWidgetWrapper) {
        this.this$0 = toolbarWidgetWrapper;
        this.mNavItem = new ActionMenuItem(toolbarWidgetWrapper.mToolbar.getContext(), 0, R$id.home, 0, 0, toolbarWidgetWrapper.mTitle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        ToolbarWidgetWrapper toolbarWidgetWrapper = this.this$0;
        Window$Callback window$Callback = toolbarWidgetWrapper.mWindowCallback;
        if (window$Callback == null || !toolbarWidgetWrapper.mMenuPrepared) {
            return;
        }
        window$Callback.onMenuItemSelected(0, this.mNavItem);
    }
}
