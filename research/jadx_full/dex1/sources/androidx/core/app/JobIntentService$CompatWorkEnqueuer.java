package androidx.core.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.PowerManager$WakeLock;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class JobIntentService$CompatWorkEnqueuer extends JobIntentService$WorkEnqueuer {
    private final Context mContext;
    private final PowerManager$WakeLock mLaunchWakeLock;
    boolean mLaunchingService;
    private final PowerManager$WakeLock mRunWakeLock;
    boolean mServiceProcessing;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public JobIntentService$CompatWorkEnqueuer(Context context, ComponentName componentName) {
        super(componentName);
        this.mContext = context.getApplicationContext();
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        PowerManager$WakeLock powerManager$WakeLockNewWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
        this.mLaunchWakeLock = powerManager$WakeLockNewWakeLock;
        powerManager$WakeLockNewWakeLock.setReferenceCounted(false);
        PowerManager$WakeLock powerManager$WakeLockNewWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
        this.mRunWakeLock = powerManager$WakeLockNewWakeLock2;
        powerManager$WakeLockNewWakeLock2.setReferenceCounted(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.JobIntentService$WorkEnqueuer
    public void enqueueWork(Intent intent) {
        Intent intent2 = new Intent(intent);
        intent2.setComponent(this.mComponentName);
        if (this.mContext.startService(intent2) != null) {
            synchronized (this) {
                try {
                    if (!this.mLaunchingService) {
                        this.mLaunchingService = true;
                        if (!this.mServiceProcessing) {
                            this.mLaunchWakeLock.acquire(60000L);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.JobIntentService$WorkEnqueuer
    public void serviceProcessingFinished() {
        synchronized (this) {
            try {
                if (this.mServiceProcessing) {
                    if (this.mLaunchingService) {
                        this.mLaunchWakeLock.acquire(60000L);
                    }
                    this.mServiceProcessing = false;
                    this.mRunWakeLock.release();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.JobIntentService$WorkEnqueuer
    public void serviceProcessingStarted() {
        synchronized (this) {
            try {
                if (!this.mServiceProcessing) {
                    this.mServiceProcessing = true;
                    this.mRunWakeLock.acquire(600000L);
                    this.mLaunchWakeLock.release();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.JobIntentService$WorkEnqueuer
    public void serviceStartReceived() {
        synchronized (this) {
            this.mLaunchingService = false;
        }
    }
}
