package androidx.core.provider;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SelfDestructiveThread$2$1 implements Runnable {
    final /* synthetic */ SelfDestructiveThread$2 this$1;
    final /* synthetic */ Object val$result;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public SelfDestructiveThread$2$1(SelfDestructiveThread$2 selfDestructiveThread$2, Object obj) {
        this.this$1 = selfDestructiveThread$2;
        this.val$result = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        this.this$1.val$reply.onReply(this.val$result);
    }
}
