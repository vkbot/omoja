package androidx.fragment.app;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentManager$6 implements LifecycleEventObserver {
    final /* synthetic */ FragmentManager this$0;
    final /* synthetic */ Lifecycle val$lifecycle;
    final /* synthetic */ FragmentResultListener val$listener;
    final /* synthetic */ String val$requestKey;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public FragmentManager$6(FragmentManager fragmentManager, String str, FragmentResultListener fragmentResultListener, Lifecycle lifecycle) {
        this.this$0 = fragmentManager;
        this.val$requestKey = str;
        this.val$listener = fragmentResultListener;
        this.val$lifecycle = lifecycle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle$Event lifecycle$Event) {
        Bundle bundle;
        if (lifecycle$Event == Lifecycle$Event.ON_START && (bundle = (Bundle) FragmentManager.access$000(this.this$0).get(this.val$requestKey)) != null) {
            this.val$listener.onFragmentResult(this.val$requestKey, bundle);
            this.this$0.clearFragmentResult(this.val$requestKey);
        }
        if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
            this.val$lifecycle.removeObserver(this);
            FragmentManager.access$100(this.this$0).remove(this.val$requestKey);
        }
    }
}
