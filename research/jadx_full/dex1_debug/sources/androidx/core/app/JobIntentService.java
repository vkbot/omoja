package androidx.core.app;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build$VERSION;
import android.os.IBinder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j1.i;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Deprecated
public abstract class JobIntentService extends Service {
    static final boolean DEBUG = false;
    static final String TAG = "JobIntentService";
    final ArrayList<JobIntentService$CompatWorkItem> mCompatQueue;
    JobIntentService$WorkEnqueuer mCompatWorkEnqueuer;
    JobIntentService$CommandProcessor mCurProcessor;
    JobIntentService$CompatJobEngine mJobImpl;
    static final Object sLock = new Object();
    static final HashMap<ComponentName, JobIntentService$WorkEnqueuer> sClassWorkEnqueuer = new HashMap<>();
    boolean mInterruptIfStopped = false;
    boolean mStopped = false;
    boolean mDestroyed = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public JobIntentService() {
        if (Build$VERSION.SDK_INT >= 26) {
            this.mCompatQueue = null;
        } else {
            this.mCompatQueue = new ArrayList<>();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void enqueueWork(@NonNull Context context, @NonNull ComponentName componentName, int i9, @NonNull Intent intent) {
        if (intent == null) {
            i.k("work must not be null");
            return;
        }
        synchronized (sLock) {
            JobIntentService$WorkEnqueuer workEnqueuer = getWorkEnqueuer(context, componentName, true, i9);
            workEnqueuer.ensureJobId(i9);
            workEnqueuer.enqueueWork(intent);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static JobIntentService$WorkEnqueuer getWorkEnqueuer(Context context, ComponentName componentName, boolean z8, int i9) {
        JobIntentService$WorkEnqueuer jobIntentService$CompatWorkEnqueuer;
        HashMap<ComponentName, JobIntentService$WorkEnqueuer> map = sClassWorkEnqueuer;
        JobIntentService$WorkEnqueuer jobIntentService$WorkEnqueuer = map.get(componentName);
        if (jobIntentService$WorkEnqueuer != null) {
            return jobIntentService$WorkEnqueuer;
        }
        if (Build$VERSION.SDK_INT < 26) {
            jobIntentService$CompatWorkEnqueuer = new JobIntentService$CompatWorkEnqueuer(context, componentName);
        } else {
            if (!z8) {
                i.k("Can't be here without a job id");
                return null;
            }
            jobIntentService$CompatWorkEnqueuer = new JobIntentService$JobWorkEnqueuer(context, componentName, i9);
        }
        map.put(componentName, jobIntentService$CompatWorkEnqueuer);
        return jobIntentService$CompatWorkEnqueuer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public JobIntentService$GenericWorkItem dequeueWork() {
        JobIntentService$CompatJobEngine jobIntentService$CompatJobEngine = this.mJobImpl;
        if (jobIntentService$CompatJobEngine != null) {
            return jobIntentService$CompatJobEngine.dequeueWork();
        }
        synchronized (this.mCompatQueue) {
            try {
                if (this.mCompatQueue.size() <= 0) {
                    return null;
                }
                return this.mCompatQueue.remove(0);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean doStopCurrentWork() {
        JobIntentService$CommandProcessor jobIntentService$CommandProcessor = this.mCurProcessor;
        if (jobIntentService$CommandProcessor != null) {
            jobIntentService$CommandProcessor.cancel(this.mInterruptIfStopped);
        }
        this.mStopped = true;
        return onStopCurrentWork();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void ensureProcessorRunningLocked(boolean z8) {
        if (this.mCurProcessor == null) {
            this.mCurProcessor = new JobIntentService$CommandProcessor(this);
            JobIntentService$WorkEnqueuer jobIntentService$WorkEnqueuer = this.mCompatWorkEnqueuer;
            if (jobIntentService$WorkEnqueuer != null && z8) {
                jobIntentService$WorkEnqueuer.serviceProcessingStarted();
            }
            this.mCurProcessor.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isStopped() {
        return this.mStopped;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public IBinder onBind(@NonNull Intent intent) {
        JobIntentService$CompatJobEngine jobIntentService$CompatJobEngine = this.mJobImpl;
        if (jobIntentService$CompatJobEngine != null) {
            return jobIntentService$CompatJobEngine.compatGetBinder();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build$VERSION.SDK_INT >= 26) {
            this.mJobImpl = new JobIntentService$JobServiceEngineImpl(this);
            this.mCompatWorkEnqueuer = null;
        } else {
            this.mJobImpl = null;
            this.mCompatWorkEnqueuer = getWorkEnqueuer(this, new ComponentName(this, getClass()), false, 0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<JobIntentService$CompatWorkItem> arrayList = this.mCompatQueue;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.mDestroyed = true;
                this.mCompatWorkEnqueuer.serviceProcessingFinished();
            }
        }
    }

    public abstract void onHandleWork(@NonNull Intent intent);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int i9, int i10) {
        if (this.mCompatQueue == null) {
            return 2;
        }
        this.mCompatWorkEnqueuer.serviceStartReceived();
        synchronized (this.mCompatQueue) {
            ArrayList<JobIntentService$CompatWorkItem> arrayList = this.mCompatQueue;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new JobIntentService$CompatWorkItem(this, intent, i10));
            ensureProcessorRunningLocked(true);
        }
        return 3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onStopCurrentWork() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void processorFinished() {
        ArrayList<JobIntentService$CompatWorkItem> arrayList = this.mCompatQueue;
        if (arrayList != null) {
            synchronized (arrayList) {
                try {
                    this.mCurProcessor = null;
                    ArrayList<JobIntentService$CompatWorkItem> arrayList2 = this.mCompatQueue;
                    if (arrayList2 != null && arrayList2.size() > 0) {
                        ensureProcessorRunningLocked(false);
                    } else if (!this.mDestroyed) {
                        this.mCompatWorkEnqueuer.serviceProcessingFinished();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInterruptIfStopped(boolean z8) {
        this.mInterruptIfStopped = z8;
    }

    public static void enqueueWork(@NonNull Context context, @NonNull Class<?> cls, int i9, @NonNull Intent intent) {
        enqueueWork(context, new ComponentName(context, cls), i9, intent);
    }
}
