package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AsyncListDiffer<T> {
    private static final Executor sMainThreadExecutor = new AsyncListDiffer$MainThreadExecutor();
    final AsyncDifferConfig<T> mConfig;

    @Nullable
    private List<T> mList;
    private final List<AsyncListDiffer$ListListener<T>> mListeners;
    Executor mMainThreadExecutor;
    int mMaxScheduledGeneration;

    @NonNull
    private List<T> mReadOnlyList;
    private final ListUpdateCallback mUpdateCallback;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AsyncListDiffer(@NonNull ListUpdateCallback listUpdateCallback, @NonNull AsyncDifferConfig<T> asyncDifferConfig) {
        this.mListeners = new CopyOnWriteArrayList();
        this.mReadOnlyList = Collections.EMPTY_LIST;
        this.mUpdateCallback = listUpdateCallback;
        this.mConfig = asyncDifferConfig;
        if (asyncDifferConfig.getMainThreadExecutor() != null) {
            this.mMainThreadExecutor = asyncDifferConfig.getMainThreadExecutor();
        } else {
            this.mMainThreadExecutor = sMainThreadExecutor;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void onCurrentListChanged(@NonNull List<T> list, @Nullable Runnable runnable) {
        Iterator<AsyncListDiffer$ListListener<T>> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onCurrentListChanged(list, this.mReadOnlyList);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addListListener(@NonNull AsyncListDiffer$ListListener<T> asyncListDiffer$ListListener) {
        this.mListeners.add(asyncListDiffer$ListListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public List<T> getCurrentList() {
        return this.mReadOnlyList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void latchList(@NonNull List<T> list, @NonNull DiffUtil$DiffResult diffUtil$DiffResult, @Nullable Runnable runnable) {
        List<T> list2 = this.mReadOnlyList;
        this.mList = list;
        this.mReadOnlyList = Collections.unmodifiableList(list);
        diffUtil$DiffResult.dispatchUpdatesTo(this.mUpdateCallback);
        onCurrentListChanged(list2, runnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeListListener(@NonNull AsyncListDiffer$ListListener<T> asyncListDiffer$ListListener) {
        this.mListeners.remove(asyncListDiffer$ListListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void submitList(@Nullable List<T> list, @Nullable Runnable runnable) {
        int i9 = this.mMaxScheduledGeneration + 1;
        this.mMaxScheduledGeneration = i9;
        List<T> list2 = this.mList;
        if (list == list2) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        List<T> list3 = this.mReadOnlyList;
        if (list == null) {
            int size = list2.size();
            this.mList = null;
            this.mReadOnlyList = Collections.EMPTY_LIST;
            this.mUpdateCallback.onRemoved(0, size);
            onCurrentListChanged(list3, runnable);
            return;
        }
        if (list2 != null) {
            this.mConfig.getBackgroundThreadExecutor().execute(new AsyncListDiffer$1(this, list2, list, i9, runnable));
            return;
        }
        this.mList = list;
        this.mReadOnlyList = Collections.unmodifiableList(list);
        this.mUpdateCallback.onInserted(0, list.size());
        onCurrentListChanged(list3, runnable);
    }

    public AsyncListDiffer(@NonNull RecyclerView$Adapter recyclerView$Adapter, @NonNull DiffUtil$ItemCallback<T> diffUtil$ItemCallback) {
        this(new AdapterListUpdateCallback(recyclerView$Adapter), new AsyncDifferConfig$Builder(diffUtil$ItemCallback).build());
    }

    public void submitList(@Nullable List<T> list) {
        submitList(list, null);
    }
}
