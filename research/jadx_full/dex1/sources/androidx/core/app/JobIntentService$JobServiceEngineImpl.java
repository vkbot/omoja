package androidx.core.app;

import android.app.job.JobParameters;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.os.IBinder;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(26)
public final class JobIntentService$JobServiceEngineImpl extends JobServiceEngine implements JobIntentService$CompatJobEngine {
    static final boolean DEBUG = false;
    static final String TAG = "JobServiceEngineImpl";
    final Object mLock;
    JobParameters mParams;
    final JobIntentService mService;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public JobIntentService$JobServiceEngineImpl(JobIntentService jobIntentService) {
        super(jobIntentService);
        this.mLock = new Object();
        this.mService = jobIntentService;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.JobIntentService$CompatJobEngine
    public IBinder compatGetBinder() {
        return ai.onnxruntime.c.q(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.JobIntentService$CompatJobEngine
    public JobIntentService$GenericWorkItem dequeueWork() {
        synchronized (this.mLock) {
            try {
                JobParameters jobParameters = this.mParams;
                if (jobParameters == null) {
                    return null;
                }
                JobWorkItem jobWorkItemI = ai.onnxruntime.c.i(jobParameters);
                if (jobWorkItemI == null) {
                    return null;
                }
                ai.onnxruntime.c.k(jobWorkItemI).setExtrasClassLoader(this.mService.getClassLoader());
                return new JobIntentService$JobServiceEngineImpl$WrapperWorkItem(this, jobWorkItemI);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onStartJob(JobParameters jobParameters) {
        this.mParams = jobParameters;
        this.mService.ensureProcessorRunningLocked(false);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onStopJob(JobParameters jobParameters) {
        boolean zDoStopCurrentWork = this.mService.doStopCurrentWork();
        synchronized (this.mLock) {
            this.mParams = null;
        }
        return zDoStopCurrentWork;
    }
}
