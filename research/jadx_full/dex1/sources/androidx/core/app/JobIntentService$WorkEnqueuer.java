package androidx.core.app;

import android.content.ComponentName;
import android.content.Intent;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class JobIntentService$WorkEnqueuer {
    final ComponentName mComponentName;
    boolean mHasJobId;
    int mJobId;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public JobIntentService$WorkEnqueuer(ComponentName componentName) {
        this.mComponentName = componentName;
    }

    public abstract void enqueueWork(Intent intent);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void ensureJobId(int i9) {
        if (!this.mHasJobId) {
            this.mHasJobId = true;
            this.mJobId = i9;
        } else {
            if (this.mJobId == i9) {
                return;
            }
            StringBuilder sbQ = ai.onnxruntime.a.q(i9, "Given job ID ", " is different than previous ");
            sbQ.append(this.mJobId);
            throw new IllegalArgumentException(sbQ.toString());
        }
    }

    public void serviceProcessingFinished() {
    }

    public void serviceProcessingStarted() {
    }

    public void serviceStartReceived() {
    }
}
