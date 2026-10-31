package androidx.viewpager2.adapter;

import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentStateAdapter$1 implements LifecycleEventObserver {
    final /* synthetic */ FragmentStateAdapter this$0;
    final /* synthetic */ FragmentViewHolder val$holder;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public FragmentStateAdapter$1(FragmentStateAdapter fragmentStateAdapter, FragmentViewHolder fragmentViewHolder) {
        this.this$0 = fragmentStateAdapter;
        this.val$holder = fragmentViewHolder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle$Event lifecycle$Event) {
        if (this.this$0.shouldDelayFragmentTransactions()) {
            return;
        }
        lifecycleOwner.getLifecycle().removeObserver(this);
        if (ViewCompat.isAttachedToWindow(this.val$holder.getContainer())) {
            this.this$0.placeFragmentInViewHolder(this.val$holder);
        }
    }
}
