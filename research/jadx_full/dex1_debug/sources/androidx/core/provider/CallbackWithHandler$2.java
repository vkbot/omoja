package androidx.core.provider;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CallbackWithHandler$2 implements Runnable {
    final /* synthetic */ CallbackWithHandler this$0;
    final /* synthetic */ FontsContractCompat$FontRequestCallback val$callback;
    final /* synthetic */ int val$reason;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public CallbackWithHandler$2(CallbackWithHandler callbackWithHandler, FontsContractCompat$FontRequestCallback fontsContractCompat$FontRequestCallback, int i9) {
        this.this$0 = callbackWithHandler;
        this.val$callback = fontsContractCompat$FontRequestCallback;
        this.val$reason = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        this.val$callback.onTypefaceRequestFailed(this.val$reason);
    }
}
