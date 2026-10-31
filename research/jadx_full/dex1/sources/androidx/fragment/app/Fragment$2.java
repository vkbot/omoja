package androidx.fragment.app;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandleSupport;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Fragment$2 extends Fragment$OnPreAttachedListener {
    final /* synthetic */ Fragment this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Fragment$2(Fragment fragment) {
        super(null);
        this.this$0 = fragment;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment$OnPreAttachedListener
    public void onPreAttached() {
        this.this$0.mSavedStateRegistryController.performAttach();
        SavedStateHandleSupport.enableSavedStateHandles(this.this$0);
        Bundle bundle = this.this$0.mSavedFragmentState;
        this.this$0.mSavedStateRegistryController.performRestore(bundle != null ? bundle.getBundle("registryState") : null);
    }
}
