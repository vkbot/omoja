package androidx.appcompat.widget;

import android.widget.PopupWindow$OnDismissListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class PopupMenu$2 implements PopupWindow$OnDismissListener {
    final /* synthetic */ PopupMenu this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PopupMenu$2(PopupMenu popupMenu) {
        this.this$0 = popupMenu;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.PopupWindow$OnDismissListener
    public void onDismiss() {
        PopupMenu popupMenu = this.this$0;
        PopupMenu$OnDismissListener popupMenu$OnDismissListener = popupMenu.mOnDismissListener;
        if (popupMenu$OnDismissListener != null) {
            popupMenu$OnDismissListener.onDismiss(popupMenu);
        }
    }
}
