package androidx.lifecycle;

import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.arch.core.internal.SafeIterableMap;
import j1.i;
import java.util.Iterator;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediatorLiveData<T> extends MutableLiveData<T> {
    private SafeIterableMap<LiveData<?>, MediatorLiveData$Source<?>> mSources;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MediatorLiveData() {
        this.mSources = new SafeIterableMap<>();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public <S> void addSource(@NonNull LiveData<S> liveData, @NonNull Observer<? super S> observer) {
        if (liveData == null) {
            n0.b.n("source cannot be null");
            return;
        }
        MediatorLiveData$Source<?> mediatorLiveData$Source = new MediatorLiveData$Source<>(liveData, observer);
        MediatorLiveData$Source<?> mediatorLiveData$SourcePutIfAbsent = this.mSources.putIfAbsent(liveData, mediatorLiveData$Source);
        if (mediatorLiveData$SourcePutIfAbsent != null && mediatorLiveData$SourcePutIfAbsent.mObserver != observer) {
            i.k("This source was already added with the different observer");
        } else if (mediatorLiveData$SourcePutIfAbsent == null && hasActiveObservers()) {
            mediatorLiveData$Source.plug();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.LiveData
    @CallSuper
    public void onActive() {
        Iterator<Map$Entry<LiveData<?>, MediatorLiveData$Source<?>>> it = this.mSources.iterator();
        while (it.hasNext()) {
            it.next().getValue().plug();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.LiveData
    @CallSuper
    public void onInactive() {
        Iterator<Map$Entry<LiveData<?>, MediatorLiveData$Source<?>>> it = this.mSources.iterator();
        while (it.hasNext()) {
            it.next().getValue().unplug();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public <S> void removeSource(@NonNull LiveData<S> liveData) {
        MediatorLiveData$Source<?> mediatorLiveData$SourceRemove = this.mSources.remove(liveData);
        if (mediatorLiveData$SourceRemove != null) {
            mediatorLiveData$SourceRemove.unplug();
        }
    }

    public MediatorLiveData(T t) {
        super(t);
        this.mSources = new SafeIterableMap<>();
    }
}
