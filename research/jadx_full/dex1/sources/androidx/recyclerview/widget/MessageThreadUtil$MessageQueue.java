package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MessageThreadUtil$MessageQueue {
    private final Object mLock = new Object();
    private MessageThreadUtil$SyncQueueItem mRoot;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MessageThreadUtil$SyncQueueItem next() {
        synchronized (this.mLock) {
            try {
                MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem = this.mRoot;
                if (messageThreadUtil$SyncQueueItem == null) {
                    return null;
                }
                this.mRoot = messageThreadUtil$SyncQueueItem.next;
                return messageThreadUtil$SyncQueueItem;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeMessages(int i9) {
        MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem;
        synchronized (this.mLock) {
            while (true) {
                try {
                    messageThreadUtil$SyncQueueItem = this.mRoot;
                    if (messageThreadUtil$SyncQueueItem == null || messageThreadUtil$SyncQueueItem.what != i9) {
                        break;
                    }
                    this.mRoot = messageThreadUtil$SyncQueueItem.next;
                    messageThreadUtil$SyncQueueItem.recycle();
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (messageThreadUtil$SyncQueueItem != null) {
                MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem2 = messageThreadUtil$SyncQueueItem.next;
                while (messageThreadUtil$SyncQueueItem2 != null) {
                    MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem3 = messageThreadUtil$SyncQueueItem2.next;
                    if (messageThreadUtil$SyncQueueItem2.what == i9) {
                        messageThreadUtil$SyncQueueItem.next = messageThreadUtil$SyncQueueItem3;
                        messageThreadUtil$SyncQueueItem2.recycle();
                    } else {
                        messageThreadUtil$SyncQueueItem = messageThreadUtil$SyncQueueItem2;
                    }
                    messageThreadUtil$SyncQueueItem2 = messageThreadUtil$SyncQueueItem3;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void sendMessage(MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem) {
        synchronized (this.mLock) {
            try {
                MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem2 = this.mRoot;
                if (messageThreadUtil$SyncQueueItem2 == null) {
                    this.mRoot = messageThreadUtil$SyncQueueItem;
                    return;
                }
                while (true) {
                    MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem3 = messageThreadUtil$SyncQueueItem2.next;
                    if (messageThreadUtil$SyncQueueItem3 == null) {
                        messageThreadUtil$SyncQueueItem2.next = messageThreadUtil$SyncQueueItem;
                        return;
                    }
                    messageThreadUtil$SyncQueueItem2 = messageThreadUtil$SyncQueueItem3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void sendMessageAtFrontOfQueue(MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem) {
        synchronized (this.mLock) {
            messageThreadUtil$SyncQueueItem.next = this.mRoot;
            this.mRoot = messageThreadUtil$SyncQueueItem;
        }
    }
}
