package androidx.core.content.res;

import android.content.res.Resources$Theme;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(23)
public class ResourcesCompat$ThemeCompat$Api23Impl {
    private static Method sRebaseMethod;
    private static boolean sRebaseMethodFetched;
    private static final Object sRebaseMethodLock = new Object();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ResourcesCompat$ThemeCompat$Api23Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:31:0x0027 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void rebase(@NonNull Resources$Theme resources$Theme) {
        Method method;
        synchronized (sRebaseMethodLock) {
            if (sRebaseMethodFetched) {
                method = sRebaseMethod;
                if (method != null) {
                    method.invoke(resources$Theme, null);
                }
            } else {
                try {
                    Method declaredMethod = Resources$Theme.class.getDeclaredMethod("rebase", null);
                    sRebaseMethod = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e);
                }
                sRebaseMethodFetched = true;
                method = sRebaseMethod;
                if (method != null) {
                    try {
                        method.invoke(resources$Theme, null);
                    } catch (IllegalAccessException | InvocationTargetException e6) {
                        Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e6);
                        sRebaseMethod = null;
                    }
                }
            }
            throw th;
        }
    }
}
