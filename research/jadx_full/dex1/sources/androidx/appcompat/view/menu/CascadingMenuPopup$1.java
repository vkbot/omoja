package androidx.appcompat.view.menu;

import android.view.View;
import android.view.ViewTreeObserver$OnGlobalLayoutListener;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CascadingMenuPopup$1 implements ViewTreeObserver$OnGlobalLayoutListener {
    final /* synthetic */ CascadingMenuPopup this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CascadingMenuPopup$1(CascadingMenuPopup cascadingMenuPopup) {
        this.this$0 = cascadingMenuPopup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewTreeObserver$OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (!this.this$0.isShowing() || this.this$0.mShowingMenus.size() <= 0 || this.this$0.mShowingMenus.get(0).window.isModal()) {
            return;
        }
        View view = this.this$0.mShownAnchorView;
        if (view == null || !view.isShown()) {
            this.this$0.dismiss();
            return;
        }
        Iterator<CascadingMenuPopup$CascadingMenuInfo> it = this.this$0.mShowingMenus.iterator();
        while (it.hasNext()) {
            it.next().window.show();
        }
    }
}
