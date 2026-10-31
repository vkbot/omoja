package androidx.core.os;

import android.os.UserHandle;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ProcessCompat$Api19Impl {
    private static Method sMethodUserHandleIsAppMethod;
    private static boolean sResolved;
    private static final Object sResolvedLock = new Object();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ProcessCompat$Api19Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isApplicationUid(int i9) {
        try {
            synchronized (sResolvedLock) {
                try {
                    if (!sResolved) {
                        sResolved = true;
                        sMethodUserHandleIsAppMethod = UserHandle.class.getDeclaredMethod("isApp", Integer.TYPE);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            Method method = sMethodUserHandleIsAppMethod;
            if (method != null) {
                Boolean bool = (Boolean) method.invoke(null, Integer.valueOf(i9));
                if (bool != null) {
                    return bool.booleanValue();
                }
                throw new NullPointerException();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
}
