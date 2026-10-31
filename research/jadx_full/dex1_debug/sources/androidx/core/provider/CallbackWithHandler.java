package androidx.core.provider;

import android.graphics.Typeface;
import android.os.Handler;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class CallbackWithHandler {

    @NonNull
    private final FontsContractCompat$FontRequestCallback mCallback;

    @NonNull
    private final Handler mCallbackHandler;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CallbackWithHandler(@NonNull FontsContractCompat$FontRequestCallback fontsContractCompat$FontRequestCallback) {
        this.mCallback = fontsContractCompat$FontRequestCallback;
        this.mCallbackHandler = CalleeHandler.create();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void onTypefaceRequestFailed(int i9) {
        this.mCallbackHandler.post(new CallbackWithHandler$2(this, this.mCallback, i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void onTypefaceRetrieved(@NonNull Typeface typeface) {
        this.mCallbackHandler.post(new CallbackWithHandler$1(this, this.mCallback, typeface));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onTypefaceResult(@NonNull FontRequestWorker$TypefaceResult fontRequestWorker$TypefaceResult) {
        if (fontRequestWorker$TypefaceResult.isSuccess()) {
            onTypefaceRetrieved(fontRequestWorker$TypefaceResult.mTypeface);
        } else {
            onTypefaceRequestFailed(fontRequestWorker$TypefaceResult.mResult);
        }
    }

    public CallbackWithHandler(@NonNull FontsContractCompat$FontRequestCallback fontsContractCompat$FontRequestCallback, @NonNull Handler handler) {
        this.mCallback = fontsContractCompat$FontRequestCallback;
        this.mCallbackHandler = handler;
    }
}
