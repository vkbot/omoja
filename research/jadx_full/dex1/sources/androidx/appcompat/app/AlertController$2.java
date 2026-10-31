package androidx.appcompat.app;

import android.view.View;
import androidx.core.widget.NestedScrollView;
import androidx.core.widget.NestedScrollView$OnScrollChangeListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AlertController$2 implements NestedScrollView$OnScrollChangeListener {
    final /* synthetic */ AlertController this$0;
    final /* synthetic */ View val$bottom;
    final /* synthetic */ View val$top;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public AlertController$2(AlertController alertController, View view, View view2) {
        this.this$0 = alertController;
        this.val$top = view;
        this.val$bottom = view2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.widget.NestedScrollView$OnScrollChangeListener
    public void onScrollChange(NestedScrollView nestedScrollView, int i9, int i10, int i11, int i12) {
        AlertController.manageScrollIndicators(nestedScrollView, this.val$top, this.val$bottom);
    }
}
