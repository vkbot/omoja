package androidx.loader.content;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ModernAsyncTask$InternalHandler extends Handler {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ModernAsyncTask$InternalHandler() {
        super(Looper.getMainLooper());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Handler
    public void handleMessage(Message message) {
        ModernAsyncTask$AsyncTaskResult modernAsyncTask$AsyncTaskResult = (ModernAsyncTask$AsyncTaskResult) message.obj;
        int i9 = message.what;
        if (i9 == 1) {
            modernAsyncTask$AsyncTaskResult.mTask.finish(modernAsyncTask$AsyncTaskResult.mData[0]);
        } else {
            if (i9 != 2) {
                return;
            }
            modernAsyncTask$AsyncTaskResult.mTask.onProgressUpdate(modernAsyncTask$AsyncTaskResult.mData);
        }
    }
}
