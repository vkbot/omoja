package androidx.core.app;

import android.app.job.JobParameters;
import android.app.job.JobWorkItem;
import android.content.Intent;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class JobIntentService$JobServiceEngineImpl$WrapperWorkItem implements JobIntentService$GenericWorkItem {
    final JobWorkItem mJobWork;
    final /* synthetic */ JobIntentService$JobServiceEngineImpl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public JobIntentService$JobServiceEngineImpl$WrapperWorkItem(JobIntentService$JobServiceEngineImpl jobIntentService$JobServiceEngineImpl, JobWorkItem jobWorkItem) {
        this.this$0 = jobIntentService$JobServiceEngineImpl;
        this.mJobWork = jobWorkItem;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.JobIntentService$GenericWorkItem
    public void complete() {
        synchronized (this.this$0.mLock) {
            try {
                JobParameters jobParameters = this.this$0.mParams;
                if (jobParameters != null) {
                    ai.onnxruntime.c.w(jobParameters, this.mJobWork);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.JobIntentService$GenericWorkItem
    public Intent getIntent() {
        return ai.onnxruntime.c.k(this.mJobWork);
    }
}
