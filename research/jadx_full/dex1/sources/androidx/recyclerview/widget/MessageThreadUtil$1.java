package androidx.recyclerview.widget;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MessageThreadUtil$1<T> implements ThreadUtil$MainThreadCallback<T> {
    static final int ADD_TILE = 2;
    static final int REMOVE_TILE = 3;
    static final int UPDATE_ITEM_COUNT = 1;
    final /* synthetic */ MessageThreadUtil this$0;
    final /* synthetic */ ThreadUtil$MainThreadCallback val$callback;
    final MessageThreadUtil$MessageQueue mQueue = new MessageThreadUtil$MessageQueue();
    private final Handler mMainThreadHandler = new Handler(Looper.getMainLooper());
    private Runnable mMainThreadRunnable = new MessageThreadUtil$1$1(this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public MessageThreadUtil$1(MessageThreadUtil messageThreadUtil, ThreadUtil$MainThreadCallback threadUtil$MainThreadCallback) {
        this.this$0 = messageThreadUtil;
        this.val$callback = threadUtil$MainThreadCallback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void sendMessage(MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem) {
        this.mQueue.sendMessage(messageThreadUtil$SyncQueueItem);
        this.mMainThreadHandler.post(this.mMainThreadRunnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ThreadUtil$MainThreadCallback
    public void addTile(int i9, TileList$Tile<T> tileList$Tile) {
        sendMessage(MessageThreadUtil$SyncQueueItem.obtainMessage(2, i9, tileList$Tile));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ThreadUtil$MainThreadCallback
    public void removeTile(int i9, int i10) {
        sendMessage(MessageThreadUtil$SyncQueueItem.obtainMessage(3, i9, i10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ThreadUtil$MainThreadCallback
    public void updateItemCount(int i9, int i10) {
        sendMessage(MessageThreadUtil$SyncQueueItem.obtainMessage(1, i9, i10));
    }
}
