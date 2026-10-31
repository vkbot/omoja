package androidx.core.provider;

import android.os.Handler;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SelfDestructiveThread$2 implements Runnable {
    final /* synthetic */ SelfDestructiveThread this$0;
    final /* synthetic */ Callable val$callable;
    final /* synthetic */ Handler val$calleeHandler;
    final /* synthetic */ SelfDestructiveThread$ReplyCallback val$reply;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public SelfDestructiveThread$2(SelfDestructiveThread selfDestructiveThread, Callable callable, Handler handler, SelfDestructiveThread$ReplyCallback selfDestructiveThread$ReplyCallback) {
        this.this$0 = selfDestructiveThread;
        this.val$callable = callable;
        this.val$calleeHandler = handler;
        this.val$reply = selfDestructiveThread$ReplyCallback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        Object objCall;
        try {
            objCall = this.val$callable.call();
        } catch (Exception unused) {
            objCall = null;
        }
        this.val$calleeHandler.post(new SelfDestructiveThread$2$1(this, objCall));
    }
}
