package androidx.core.provider;

import android.os.Process;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RequestExecutor$DefaultThreadFactory$ProcessPriorityThread extends Thread {
    private final int mPriority;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RequestExecutor$DefaultThreadFactory$ProcessPriorityThread(Runnable runnable, String str, int i9) {
        super(runnable, str);
        this.mPriority = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(this.mPriority);
        super.run();
    }
}
