package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MessageThreadUtil$SyncQueueItem {
    private static MessageThreadUtil$SyncQueueItem sPool;
    private static final Object sPoolLock = new Object();
    public int arg1;
    public int arg2;
    public int arg3;
    public int arg4;
    public int arg5;
    public Object data;
    MessageThreadUtil$SyncQueueItem next;
    public int what;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static MessageThreadUtil$SyncQueueItem obtainMessage(int i9, int i10, int i11, int i12, int i13, int i14, Object obj) {
        MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem;
        synchronized (sPoolLock) {
            try {
                messageThreadUtil$SyncQueueItem = sPool;
                if (messageThreadUtil$SyncQueueItem == null) {
                    messageThreadUtil$SyncQueueItem = new MessageThreadUtil$SyncQueueItem();
                } else {
                    sPool = messageThreadUtil$SyncQueueItem.next;
                    messageThreadUtil$SyncQueueItem.next = null;
                }
                messageThreadUtil$SyncQueueItem.what = i9;
                messageThreadUtil$SyncQueueItem.arg1 = i10;
                messageThreadUtil$SyncQueueItem.arg2 = i11;
                messageThreadUtil$SyncQueueItem.arg3 = i12;
                messageThreadUtil$SyncQueueItem.arg4 = i13;
                messageThreadUtil$SyncQueueItem.arg5 = i14;
                messageThreadUtil$SyncQueueItem.data = obj;
            } catch (Throwable th) {
                throw th;
            }
        }
        return messageThreadUtil$SyncQueueItem;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void recycle() {
        this.next = null;
        this.arg5 = 0;
        this.arg4 = 0;
        this.arg3 = 0;
        this.arg2 = 0;
        this.arg1 = 0;
        this.what = 0;
        this.data = null;
        synchronized (sPoolLock) {
            try {
                MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem = sPool;
                if (messageThreadUtil$SyncQueueItem != null) {
                    this.next = messageThreadUtil$SyncQueueItem;
                }
                sPool = this;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static MessageThreadUtil$SyncQueueItem obtainMessage(int i9, int i10, int i11) {
        return obtainMessage(i9, i10, i11, 0, 0, 0, null);
    }

    public static MessageThreadUtil$SyncQueueItem obtainMessage(int i9, int i10, Object obj) {
        return obtainMessage(i9, i10, 0, 0, 0, 0, obj);
    }
}
