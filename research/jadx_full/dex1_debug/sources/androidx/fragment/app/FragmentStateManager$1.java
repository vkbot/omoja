package androidx.fragment.app;

import android.view.View;
import android.view.View$OnAttachStateChangeListener;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentStateManager$1 implements View$OnAttachStateChangeListener {
    final /* synthetic */ FragmentStateManager this$0;
    final /* synthetic */ View val$fragmentView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public FragmentStateManager$1(FragmentStateManager fragmentStateManager, View view) {
        this.this$0 = fragmentStateManager;
        this.val$fragmentView = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.val$fragmentView.removeOnAttachStateChangeListener(this);
        ViewCompat.requestApplyInsets(this.val$fragmentView);
    }

    @Override // android.view.View$OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
    }
}
