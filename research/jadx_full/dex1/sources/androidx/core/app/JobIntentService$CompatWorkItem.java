package androidx.core.app;

import android.content.Intent;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class JobIntentService$CompatWorkItem implements JobIntentService$GenericWorkItem {
    final Intent mIntent;
    final int mStartId;
    final /* synthetic */ JobIntentService this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public JobIntentService$CompatWorkItem(JobIntentService jobIntentService, Intent intent, int i9) {
        this.this$0 = jobIntentService;
        this.mIntent = intent;
        this.mStartId = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.JobIntentService$GenericWorkItem
    public void complete() {
        this.this$0.stopSelf(this.mStartId);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.JobIntentService$GenericWorkItem
    public Intent getIntent() {
        return this.mIntent;
    }
}
