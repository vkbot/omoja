package androidx.core.provider;

import android.graphics.Typeface;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CallbackWithHandler$1 implements Runnable {
    final /* synthetic */ CallbackWithHandler this$0;
    final /* synthetic */ FontsContractCompat$FontRequestCallback val$callback;
    final /* synthetic */ Typeface val$typeface;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public CallbackWithHandler$1(CallbackWithHandler callbackWithHandler, FontsContractCompat$FontRequestCallback fontsContractCompat$FontRequestCallback, Typeface typeface) {
        this.this$0 = callbackWithHandler;
        this.val$callback = fontsContractCompat$FontRequestCallback;
        this.val$typeface = typeface;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        this.val$callback.onTypefaceRetrieved(this.val$typeface);
    }
}
