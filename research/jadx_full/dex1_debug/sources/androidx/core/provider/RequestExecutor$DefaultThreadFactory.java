package androidx.core.provider;

import androidx.annotation.NonNull;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RequestExecutor$DefaultThreadFactory implements ThreadFactory {
    private int mPriority;
    private String mThreadName;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RequestExecutor$DefaultThreadFactory(@NonNull String str, int i9) {
        this.mThreadName = str;
        this.mPriority = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new RequestExecutor$DefaultThreadFactory$ProcessPriorityThread(runnable, this.mThreadName, this.mPriority);
    }
}
