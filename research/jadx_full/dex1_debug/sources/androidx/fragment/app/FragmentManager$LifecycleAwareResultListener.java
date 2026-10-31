package androidx.fragment.app;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleEventObserver;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentManager$LifecycleAwareResultListener implements FragmentResultListener {
    private final Lifecycle mLifecycle;
    private final FragmentResultListener mListener;
    private final LifecycleEventObserver mObserver;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentManager$LifecycleAwareResultListener(@NonNull Lifecycle lifecycle, @NonNull FragmentResultListener fragmentResultListener, @NonNull LifecycleEventObserver lifecycleEventObserver) {
        this.mLifecycle = lifecycle;
        this.mListener = fragmentResultListener;
        this.mObserver = lifecycleEventObserver;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isAtLeast(Lifecycle$State lifecycle$State) {
        return this.mLifecycle.getState().isAtLeast(lifecycle$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentResultListener
    public void onFragmentResult(@NonNull String str, @NonNull Bundle bundle) {
        this.mListener.onFragmentResult(str, bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeObserver() {
        this.mLifecycle.removeObserver(this.mObserver);
    }
}
