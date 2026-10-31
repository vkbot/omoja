package androidx.appcompat.view.menu;

import android.widget.PopupWindow$OnDismissListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MenuPopupHelper$1 implements PopupWindow$OnDismissListener {
    final /* synthetic */ MenuPopupHelper this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MenuPopupHelper$1(MenuPopupHelper menuPopupHelper) {
        this.this$0 = menuPopupHelper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.PopupWindow$OnDismissListener
    public void onDismiss() {
        this.this$0.onDismiss();
    }
}
