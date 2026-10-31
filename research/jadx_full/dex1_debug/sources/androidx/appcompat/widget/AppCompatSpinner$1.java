package androidx.appcompat.widget;

import android.view.View;
import androidx.appcompat.view.menu.ShowableListMenu;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatSpinner$1 extends ForwardingListener {
    final /* synthetic */ AppCompatSpinner this$0;
    final /* synthetic */ AppCompatSpinner$DropdownPopup val$popup;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatSpinner$1(AppCompatSpinner appCompatSpinner, View view, AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup) {
        super(view);
        this.this$0 = appCompatSpinner;
        this.val$popup = appCompatSpinner$DropdownPopup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.ForwardingListener
    public ShowableListMenu getPopup() {
        return this.val$popup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.ForwardingListener
    public boolean onForwardingStarted() {
        if (this.this$0.getInternalPopup().isShowing()) {
            return true;
        }
        this.this$0.showPopup();
        return true;
    }
}
