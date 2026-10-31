package androidx.lifecycle;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class LiveData$ObserverWrapper {
    boolean mActive;
    int mLastVersion = -1;
    final Observer<? super T> mObserver;
    final /* synthetic */ LiveData this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LiveData$ObserverWrapper(LiveData liveData, Observer<? super T> observer) {
        this.this$0 = liveData;
        this.mObserver = observer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void activeStateChanged(boolean z8) {
        if (z8 == this.mActive) {
            return;
        }
        this.mActive = z8;
        this.this$0.changeActiveCounter(z8 ? 1 : -1);
        if (this.mActive) {
            this.this$0.dispatchingValue(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isAttachedTo(LifecycleOwner lifecycleOwner) {
        return false;
    }

    public abstract boolean shouldBeActive();

    public void detachObserver() {
    }
}
