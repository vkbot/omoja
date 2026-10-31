package androidx.core.app;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActivityRecreator$1 implements Runnable {
    final /* synthetic */ ActivityRecreator$LifecycleCheckCallbacks val$callbacks;
    final /* synthetic */ Object val$token;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public ActivityRecreator$1(ActivityRecreator$LifecycleCheckCallbacks activityRecreator$LifecycleCheckCallbacks, Object obj) {
        this.val$callbacks = activityRecreator$LifecycleCheckCallbacks;
        this.val$token = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        this.val$callbacks.currentlyRecreatingToken = this.val$token;
    }
}
