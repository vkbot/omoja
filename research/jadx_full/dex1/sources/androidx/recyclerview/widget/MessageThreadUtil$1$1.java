package androidx.recyclerview.widget;

import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MessageThreadUtil$1$1 implements Runnable {
    final /* synthetic */ MessageThreadUtil$1 this$1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MessageThreadUtil$1$1(MessageThreadUtil$1 messageThreadUtil$1) {
        this.this$1 = messageThreadUtil$1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        MessageThreadUtil$SyncQueueItem next = this.this$1.mQueue.next();
        while (next != null) {
            int i9 = next.what;
            if (i9 == 1) {
                this.this$1.val$callback.updateItemCount(next.arg1, next.arg2);
            } else if (i9 == 2) {
                this.this$1.val$callback.addTile(next.arg1, (TileList$Tile) next.data);
            } else if (i9 != 3) {
                Log.e("ThreadUtil", "Unsupported message, what=" + next.what);
            } else {
                this.this$1.val$callback.removeTile(next.arg1, next.arg2);
            }
            next = this.this$1.mQueue.next();
        }
    }
}
