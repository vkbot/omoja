package androidx.core.view;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MenuHostHelper$LifecycleContainer {
    final Lifecycle mLifecycle;
    private LifecycleEventObserver mObserver;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MenuHostHelper$LifecycleContainer(@NonNull Lifecycle lifecycle, @NonNull LifecycleEventObserver lifecycleEventObserver) {
        this.mLifecycle = lifecycle;
        this.mObserver = lifecycleEventObserver;
        lifecycle.addObserver(lifecycleEventObserver);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clearObservers() {
        this.mLifecycle.removeObserver(this.mObserver);
        this.mObserver = null;
    }
}
