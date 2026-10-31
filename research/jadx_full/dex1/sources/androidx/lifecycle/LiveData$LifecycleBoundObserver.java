package androidx.lifecycle;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LiveData$LifecycleBoundObserver extends LiveData<T>.LiveData$ObserverWrapper implements LifecycleEventObserver {

    @NonNull
    final LifecycleOwner mOwner;
    final /* synthetic */ LiveData this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveData$LifecycleBoundObserver(@NonNull LiveData liveData, LifecycleOwner lifecycleOwner, Observer<? super T> observer) {
        super(liveData, observer);
        this.this$0 = liveData;
        this.mOwner = lifecycleOwner;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.LiveData$ObserverWrapper
    public void detachObserver() {
        this.mOwner.getLifecycle().removeObserver(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.LiveData$ObserverWrapper
    public boolean isAttachedTo(LifecycleOwner lifecycleOwner) {
        return this.mOwner == lifecycleOwner;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle$Event lifecycle$Event) {
        Lifecycle$State currentState = this.mOwner.getLifecycle().getState();
        if (currentState == Lifecycle$State.DESTROYED) {
            this.this$0.removeObserver(this.mObserver);
            return;
        }
        Lifecycle$State lifecycle$State = null;
        while (lifecycle$State != currentState) {
            activeStateChanged(shouldBeActive());
            lifecycle$State = currentState;
            currentState = this.mOwner.getLifecycle().getState();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.LiveData$ObserverWrapper
    public boolean shouldBeActive() {
        return this.mOwner.getLifecycle().getState().isAtLeast(Lifecycle$State.STARTED);
    }
}
