package androidx.core.provider;

import androidx.core.util.Consumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RequestExecutor$ReplyRunnable$1 implements Runnable {
    final /* synthetic */ RequestExecutor$ReplyRunnable this$0;
    final /* synthetic */ Consumer val$consumer;
    final /* synthetic */ Object val$result;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public RequestExecutor$ReplyRunnable$1(RequestExecutor$ReplyRunnable requestExecutor$ReplyRunnable, Consumer consumer, Object obj) {
        this.this$0 = requestExecutor$ReplyRunnable;
        this.val$consumer = consumer;
        this.val$result = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        this.val$consumer.accept(this.val$result);
    }
}
