package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Observer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DialogFragment$4 implements Observer<LifecycleOwner> {
    final /* synthetic */ DialogFragment this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DialogFragment$4(DialogFragment dialogFragment) {
        this.this$0 = dialogFragment;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: onChanged, reason: avoid collision after fix types in other method */
    public void onChanged2(LifecycleOwner lifecycleOwner) {
        if (lifecycleOwner == null || !DialogFragment.access$200(this.this$0)) {
            return;
        }
        View viewRequireView = this.this$0.requireView();
        if (viewRequireView.getParent() != null) {
            j1.i.l("DialogFragment can not be attached to a container view");
            return;
        }
        if (DialogFragment.access$000(this.this$0) != null) {
            if (FragmentManager.isLoggingEnabled(3)) {
                Log.d(FragmentManager.TAG, "DialogFragment " + this + " setting the content view on " + DialogFragment.access$000(this.this$0));
            }
            DialogFragment.access$000(this.this$0).setContentView(viewRequireView);
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // androidx.lifecycle.Observer
    public /* bridge */ /* synthetic */ void onChanged(LifecycleOwner lifecycleOwner) {
        onChanged2(lifecycleOwner);
    }
}
