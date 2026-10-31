package androidx.appcompat.widget;

import android.view.View;
import androidx.appcompat.view.menu.ShowableListMenu;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActivityChooserView$4 extends ForwardingListener {
    final /* synthetic */ ActivityChooserView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityChooserView$4(ActivityChooserView activityChooserView, View view) {
        super(view);
        this.this$0 = activityChooserView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.ForwardingListener
    public ShowableListMenu getPopup() {
        return this.this$0.getListPopupWindow();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.ForwardingListener
    public boolean onForwardingStarted() {
        this.this$0.showPopup();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.ForwardingListener
    public boolean onForwardingStopped() {
        this.this$0.dismissPopup();
        return true;
    }
}
