package androidx.lifecycle;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LiveData$AlwaysActiveObserver extends LiveData<T>.LiveData$ObserverWrapper {
    final /* synthetic */ LiveData this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveData$AlwaysActiveObserver(LiveData liveData, Observer<? super T> observer) {
        super(liveData, observer);
        this.this$0 = liveData;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.LiveData$ObserverWrapper
    public boolean shouldBeActive() {
        return true;
    }
}
