package androidx.core.app;

import android.app.Application;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActivityRecreator$2 implements Runnable {
    final /* synthetic */ Application val$application;
    final /* synthetic */ ActivityRecreator$LifecycleCheckCallbacks val$callbacks;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public ActivityRecreator$2(Application application, ActivityRecreator$LifecycleCheckCallbacks activityRecreator$LifecycleCheckCallbacks) {
        this.val$application = application;
        this.val$callbacks = activityRecreator$LifecycleCheckCallbacks;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        this.val$application.unregisterActivityLifecycleCallbacks(this.val$callbacks);
    }
}
