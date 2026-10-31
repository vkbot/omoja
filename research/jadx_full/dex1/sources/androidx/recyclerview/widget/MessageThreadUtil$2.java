package androidx.recyclerview.widget;

import android.os.AsyncTask;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MessageThreadUtil$2<T> implements ThreadUtil$BackgroundCallback<T> {
    static final int LOAD_TILE = 3;
    static final int RECYCLE_TILE = 4;
    static final int REFRESH = 1;
    static final int UPDATE_RANGE = 2;
    final /* synthetic */ MessageThreadUtil this$0;
    final /* synthetic */ ThreadUtil$BackgroundCallback val$callback;
    final MessageThreadUtil$MessageQueue mQueue = new MessageThreadUtil$MessageQueue();
    private final Executor mExecutor = AsyncTask.THREAD_POOL_EXECUTOR;
    AtomicBoolean mBackgroundRunning = new AtomicBoolean(false);
    private Runnable mBackgroundRunnable = new MessageThreadUtil$2$1(this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public MessageThreadUtil$2(MessageThreadUtil messageThreadUtil, ThreadUtil$BackgroundCallback threadUtil$BackgroundCallback) {
        this.this$0 = messageThreadUtil;
        this.val$callback = threadUtil$BackgroundCallback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void maybeExecuteBackgroundRunnable() {
        if (this.mBackgroundRunning.compareAndSet(false, true)) {
            this.mExecutor.execute(this.mBackgroundRunnable);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void sendMessage(MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem) {
        this.mQueue.sendMessage(messageThreadUtil$SyncQueueItem);
        maybeExecuteBackgroundRunnable();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void sendMessageAtFrontOfQueue(MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem) {
        this.mQueue.sendMessageAtFrontOfQueue(messageThreadUtil$SyncQueueItem);
        maybeExecuteBackgroundRunnable();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ThreadUtil$BackgroundCallback
    public void loadTile(int i9, int i10) {
        sendMessage(MessageThreadUtil$SyncQueueItem.obtainMessage(3, i9, i10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ThreadUtil$BackgroundCallback
    public void recycleTile(TileList$Tile<T> tileList$Tile) {
        sendMessage(MessageThreadUtil$SyncQueueItem.obtainMessage(4, 0, tileList$Tile));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ThreadUtil$BackgroundCallback
    public void refresh(int i9) {
        sendMessageAtFrontOfQueue(MessageThreadUtil$SyncQueueItem.obtainMessage(1, i9, (Object) null));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ThreadUtil$BackgroundCallback
    public void updateRange(int i9, int i10, int i11, int i12, int i13) {
        sendMessageAtFrontOfQueue(MessageThreadUtil$SyncQueueItem.obtainMessage(2, i9, i10, i11, i12, i13, null));
    }
}
