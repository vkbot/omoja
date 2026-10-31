package androidx.fragment.app;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Fragment$6 implements LifecycleEventObserver {
    final /* synthetic */ Fragment this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Fragment$6(Fragment fragment) {
        this.this$0 = fragment;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle$Event lifecycle$Event) {
        View view;
        if (lifecycle$Event != Lifecycle$Event.ON_STOP || (view = this.this$0.mView) == null) {
            return;
        }
        Fragment$Api19Impl.cancelPendingInputEvents(view);
    }
}
