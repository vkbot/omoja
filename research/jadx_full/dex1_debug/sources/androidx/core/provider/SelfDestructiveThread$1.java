package androidx.core.provider;

import android.os.Handler$Callback;
import android.os.Message;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SelfDestructiveThread$1 implements Handler$Callback {
    final /* synthetic */ SelfDestructiveThread this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SelfDestructiveThread$1(SelfDestructiveThread selfDestructiveThread) {
        this.this$0 = selfDestructiveThread;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Handler$Callback
    public boolean handleMessage(Message message) {
        int i9 = message.what;
        if (i9 == 0) {
            this.this$0.onDestruction();
            return true;
        }
        if (i9 != 1) {
            return true;
        }
        this.this$0.onInvokeRunnable((Runnable) message.obj);
        return true;
    }
}
