package androidx.lifecycle;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediatorLiveData$Source<V> implements Observer<V> {
    final LiveData<V> mLiveData;
    final Observer<? super V> mObserver;
    int mVersion = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MediatorLiveData$Source(LiveData<V> liveData, Observer<? super V> observer) {
        this.mLiveData = liveData;
        this.mObserver = observer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.Observer
    public void onChanged(@Nullable V v8) {
        if (this.mVersion != this.mLiveData.getVersion()) {
            this.mVersion = this.mLiveData.getVersion();
            this.mObserver.onChanged(v8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void plug() {
        this.mLiveData.observeForever(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unplug() {
        this.mLiveData.removeObserver(this);
    }
}
