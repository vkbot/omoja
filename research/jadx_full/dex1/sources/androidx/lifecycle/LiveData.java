package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.arch.core.internal.SafeIterableMap$IteratorWithAdditions;
import j1.i;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class LiveData<T> {
    static final Object NOT_SET = new Object();
    static final int START_VERSION = -1;
    int mActiveCount;
    private boolean mChangingActiveState;
    private volatile Object mData;
    final Object mDataLock;
    private boolean mDispatchInvalidated;
    private boolean mDispatchingValue;
    private SafeIterableMap<Observer<? super T>, LiveData<T>.LiveData$ObserverWrapper> mObservers;
    volatile Object mPendingData;
    private final Runnable mPostValueRunnable;
    private int mVersion;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LiveData() {
        this.mDataLock = new Object();
        this.mObservers = new SafeIterableMap<>();
        this.mActiveCount = 0;
        Object obj = NOT_SET;
        this.mPendingData = obj;
        this.mPostValueRunnable = new LiveData$1(this);
        this.mData = obj;
        this.mVersion = -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void assertMainThread(String str) {
        if (ArchTaskExecutor.getInstance().isMainThread()) {
            return;
        }
        i.l(ai.onnxruntime.a.m("Cannot invoke ", str, " on a background thread"));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Incorrect inner types in method signature: (Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;)V */
    private void considerNotify(LiveData$ObserverWrapper liveData$ObserverWrapper) {
        if (liveData$ObserverWrapper.mActive) {
            if (!liveData$ObserverWrapper.shouldBeActive()) {
                liveData$ObserverWrapper.activeStateChanged(false);
                return;
            }
            int i9 = liveData$ObserverWrapper.mLastVersion;
            int i10 = this.mVersion;
            if (i9 >= i10) {
                return;
            }
            liveData$ObserverWrapper.mLastVersion = i10;
            liveData$ObserverWrapper.mObserver.onChanged((Object) this.mData);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void changeActiveCounter(int i9) {
        int i10 = this.mActiveCount;
        this.mActiveCount = i9 + i10;
        if (this.mChangingActiveState) {
            return;
        }
        this.mChangingActiveState = true;
        while (true) {
            try {
                int i11 = this.mActiveCount;
                if (i10 == i11) {
                    this.mChangingActiveState = false;
                    return;
                }
                boolean z8 = i10 == 0 && i11 > 0;
                boolean z9 = i10 > 0 && i11 == 0;
                if (z8) {
                    onActive();
                } else if (z9) {
                    onInactive();
                }
                i10 = i11;
            } catch (Throwable th) {
                this.mChangingActiveState = false;
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Incorrect inner types in method signature: (Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;)V */
    public void dispatchingValue(@Nullable LiveData$ObserverWrapper liveData$ObserverWrapper) {
        if (this.mDispatchingValue) {
            this.mDispatchInvalidated = true;
            return;
        }
        this.mDispatchingValue = true;
        do {
            this.mDispatchInvalidated = false;
            if (liveData$ObserverWrapper != null) {
                considerNotify(liveData$ObserverWrapper);
                liveData$ObserverWrapper = null;
            } else {
                SafeIterableMap$IteratorWithAdditions safeIterableMap$IteratorWithAdditionsIteratorWithAdditions = this.mObservers.iteratorWithAdditions();
                while (safeIterableMap$IteratorWithAdditionsIteratorWithAdditions.hasNext()) {
                    considerNotify((LiveData$ObserverWrapper) safeIterableMap$IteratorWithAdditionsIteratorWithAdditions.next().getValue());
                    if (this.mDispatchInvalidated) {
                        break;
                    }
                }
            }
        } while (this.mDispatchInvalidated);
        this.mDispatchingValue = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public T getValue() {
        T t = (T) this.mData;
        if (t != NOT_SET) {
            return t;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getVersion() {
        return this.mVersion;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasActiveObservers() {
        return this.mActiveCount > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasObservers() {
        return this.mObservers.size() > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isInitialized() {
        return this.mData != NOT_SET;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void observe(@NonNull LifecycleOwner lifecycleOwner, @NonNull Observer<? super T> observer) {
        assertMainThread("observe");
        if (lifecycleOwner.getLifecycle().getCurrentState() == Lifecycle$State.DESTROYED) {
            return;
        }
        LiveData$LifecycleBoundObserver liveData$LifecycleBoundObserver = new LiveData$LifecycleBoundObserver(this, lifecycleOwner, observer);
        LiveData<T>.LiveData$ObserverWrapper liveData$ObserverWrapperPutIfAbsent = this.mObservers.putIfAbsent(observer, liveData$LifecycleBoundObserver);
        if (liveData$ObserverWrapperPutIfAbsent != null && !liveData$ObserverWrapperPutIfAbsent.isAttachedTo(lifecycleOwner)) {
            i.k("Cannot add the same observer with different lifecycles");
        } else {
            if (liveData$ObserverWrapperPutIfAbsent != null) {
                return;
            }
            lifecycleOwner.getLifecycle().addObserver(liveData$LifecycleBoundObserver);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void observeForever(@NonNull Observer<? super T> observer) {
        assertMainThread("observeForever");
        LiveData$AlwaysActiveObserver liveData$AlwaysActiveObserver = new LiveData$AlwaysActiveObserver(this, observer);
        LiveData<T>.LiveData$ObserverWrapper liveData$ObserverWrapperPutIfAbsent = this.mObservers.putIfAbsent(observer, liveData$AlwaysActiveObserver);
        if (liveData$ObserverWrapperPutIfAbsent instanceof LiveData$LifecycleBoundObserver) {
            i.k("Cannot add the same observer with different lifecycles");
        } else {
            if (liveData$ObserverWrapperPutIfAbsent != null) {
                return;
            }
            liveData$AlwaysActiveObserver.activeStateChanged(true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void postValue(T t) {
        boolean z8;
        synchronized (this.mDataLock) {
            z8 = this.mPendingData == NOT_SET;
            this.mPendingData = t;
        }
        if (z8) {
            ArchTaskExecutor.getInstance().postToMainThread(this.mPostValueRunnable);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void removeObserver(@NonNull Observer<? super T> observer) {
        assertMainThread("removeObserver");
        LiveData<T>.LiveData$ObserverWrapper liveData$ObserverWrapperRemove = this.mObservers.remove(observer);
        if (liveData$ObserverWrapperRemove == null) {
            return;
        }
        liveData$ObserverWrapperRemove.detachObserver();
        liveData$ObserverWrapperRemove.activeStateChanged(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void removeObservers(@NonNull LifecycleOwner lifecycleOwner) {
        assertMainThread("removeObservers");
        for (Map$Entry<Observer<? super T>, LiveData<T>.LiveData$ObserverWrapper> map$Entry : this.mObservers) {
            if (map$Entry.getValue().isAttachedTo(lifecycleOwner)) {
                removeObserver(map$Entry.getKey());
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void setValue(T t) {
        assertMainThread("setValue");
        this.mVersion++;
        this.mData = t;
        dispatchingValue(null);
    }

    public void onActive() {
    }

    public void onInactive() {
    }

    public LiveData(T t) {
        this.mDataLock = new Object();
        this.mObservers = new SafeIterableMap<>();
        this.mActiveCount = 0;
        this.mPendingData = NOT_SET;
        this.mPostValueRunnable = new LiveData$1(this);
        this.mData = t;
        this.mVersion = 0;
    }
}
