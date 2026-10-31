package androidx.core.app;

import android.os.AsyncTask;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class JobIntentService$CommandProcessor extends AsyncTask<Void, Void, Void> {
    final /* synthetic */ JobIntentService this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public JobIntentService$CommandProcessor(JobIntentService jobIntentService) {
        this.this$0 = jobIntentService;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
    public Void doInBackground2(Void... voidArr) {
        while (true) {
            JobIntentService$GenericWorkItem jobIntentService$GenericWorkItemDequeueWork = this.this$0.dequeueWork();
            if (jobIntentService$GenericWorkItemDequeueWork == null) {
                return null;
            }
            this.this$0.onHandleWork(jobIntentService$GenericWorkItemDequeueWork.getIntent());
            jobIntentService$GenericWorkItemDequeueWork.complete();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ void onCancelled(Void r1) {
        onCancelled2(r1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ void onPostExecute(Void r1) {
        onPostExecute2(r1);
    }

    /* JADX INFO: renamed from: onCancelled, reason: avoid collision after fix types in other method */
    public void onCancelled2(Void r1) {
        this.this$0.processorFinished();
    }

    /* JADX INFO: renamed from: onPostExecute, reason: avoid collision after fix types in other method */
    public void onPostExecute2(Void r1) {
        this.this$0.processorFinished();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object[]] */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ Void doInBackground(Void[] voidArr) {
        return doInBackground2(voidArr);
    }
}
