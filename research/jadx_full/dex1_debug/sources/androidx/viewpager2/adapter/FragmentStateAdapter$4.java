package androidx.viewpager2.adapter;

import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentStateAdapter$4 implements LifecycleEventObserver {
    final /* synthetic */ FragmentStateAdapter this$0;
    final /* synthetic */ Handler val$handler;
    final /* synthetic */ Runnable val$runnable;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public FragmentStateAdapter$4(FragmentStateAdapter fragmentStateAdapter, Handler handler, Runnable runnable) {
        this.this$0 = fragmentStateAdapter;
        this.val$handler = handler;
        this.val$runnable = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle$Event lifecycle$Event) {
        if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
            this.val$handler.removeCallbacks(this.val$runnable);
            lifecycleOwner.getLifecycle().removeObserver(this);
        }
    }
}
