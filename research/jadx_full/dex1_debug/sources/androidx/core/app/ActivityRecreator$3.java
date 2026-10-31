package androidx.core.app;

import android.util.Log;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActivityRecreator$3 implements Runnable {
    final /* synthetic */ Object val$activityThread;
    final /* synthetic */ Object val$token;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public ActivityRecreator$3(Object obj, Object obj2) {
        this.val$activityThread = obj;
        this.val$token = obj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        try {
            Method method = ActivityRecreator.performStopActivity3ParamsMethod;
            if (method != null) {
                method.invoke(this.val$activityThread, this.val$token, Boolean.FALSE, "AppCompat recreation");
            } else {
                ActivityRecreator.performStopActivity2ParamsMethod.invoke(this.val$activityThread, this.val$token, Boolean.FALSE);
            }
        } catch (RuntimeException e) {
            if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                throw e;
            }
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
        }
    }
}
