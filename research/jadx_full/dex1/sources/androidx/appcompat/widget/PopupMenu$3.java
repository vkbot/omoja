package androidx.appcompat.widget;

import android.view.View;
import androidx.appcompat.view.menu.ShowableListMenu;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class PopupMenu$3 extends ForwardingListener {
    final /* synthetic */ PopupMenu this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PopupMenu$3(PopupMenu popupMenu, View view) {
        super(view);
        this.this$0 = popupMenu;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.ForwardingListener
    public ShowableListMenu getPopup() {
        return this.this$0.mPopup.getPopup();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.ForwardingListener
    public boolean onForwardingStarted() {
        this.this$0.show();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.ForwardingListener
    public boolean onForwardingStopped() {
        this.this$0.dismiss();
        return true;
    }
}
