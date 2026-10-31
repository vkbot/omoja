package androidx.recyclerview.widget;

import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MessageThreadUtil$2$1 implements Runnable {
    final /* synthetic */ MessageThreadUtil$2 this$1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MessageThreadUtil$2$1(MessageThreadUtil$2 messageThreadUtil$2) {
        this.this$1 = messageThreadUtil$2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            MessageThreadUtil$SyncQueueItem next = this.this$1.mQueue.next();
            if (next == null) {
                this.this$1.mBackgroundRunning.set(false);
                return;
            }
            int i9 = next.what;
            if (i9 == 1) {
                this.this$1.mQueue.removeMessages(1);
                this.this$1.val$callback.refresh(next.arg1);
            } else if (i9 == 2) {
                this.this$1.mQueue.removeMessages(2);
                this.this$1.mQueue.removeMessages(3);
                this.this$1.val$callback.updateRange(next.arg1, next.arg2, next.arg3, next.arg4, next.arg5);
            } else if (i9 == 3) {
                this.this$1.val$callback.loadTile(next.arg1, next.arg2);
            } else if (i9 != 4) {
                Log.e("ThreadUtil", "Unsupported message, what=" + next.what);
            } else {
                this.this$1.val$callback.recycleTile((TileList$Tile) next.data);
            }
        }
    }
}
