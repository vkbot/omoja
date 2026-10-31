package androidx.appcompat.view.menu;

import android.view.MenuItem;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CascadingMenuPopup$3$1 implements Runnable {
    final /* synthetic */ CascadingMenuPopup$3 this$1;
    final /* synthetic */ MenuItem val$item;
    final /* synthetic */ MenuBuilder val$menu;
    final /* synthetic */ CascadingMenuPopup$CascadingMenuInfo val$nextInfo;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public CascadingMenuPopup$3$1(CascadingMenuPopup$3 cascadingMenuPopup$3, CascadingMenuPopup$CascadingMenuInfo cascadingMenuPopup$CascadingMenuInfo, MenuItem menuItem, MenuBuilder menuBuilder) {
        this.this$1 = cascadingMenuPopup$3;
        this.val$nextInfo = cascadingMenuPopup$CascadingMenuInfo;
        this.val$item = menuItem;
        this.val$menu = menuBuilder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        CascadingMenuPopup$CascadingMenuInfo cascadingMenuPopup$CascadingMenuInfo = this.val$nextInfo;
        if (cascadingMenuPopup$CascadingMenuInfo != null) {
            this.this$1.this$0.mShouldCloseImmediately = true;
            cascadingMenuPopup$CascadingMenuInfo.menu.close(false);
            this.this$1.this$0.mShouldCloseImmediately = false;
        }
        if (this.val$item.isEnabled() && this.val$item.hasSubMenu()) {
            this.val$menu.performItemAction(this.val$item, 4);
        }
    }
}
