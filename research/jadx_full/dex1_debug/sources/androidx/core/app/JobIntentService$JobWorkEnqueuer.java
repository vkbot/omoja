package androidx.core.app;

import android.app.job.JobInfo;
import android.app.job.JobInfo$Builder;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(26)
public final class JobIntentService$JobWorkEnqueuer extends JobIntentService$WorkEnqueuer {
    private final JobInfo mJobInfo;
    private final JobScheduler mJobScheduler;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public JobIntentService$JobWorkEnqueuer(Context context, ComponentName componentName, int i9) {
        super(componentName);
        ensureJobId(i9);
        this.mJobInfo = new JobInfo$Builder(i9, this.mComponentName).setOverrideDeadline(0L).build();
        this.mJobScheduler = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.JobIntentService$WorkEnqueuer
    public void enqueueWork(Intent intent) {
        ai.onnxruntime.c.x(this.mJobScheduler, this.mJobInfo, ai.onnxruntime.c.j(intent));
    }
}
