package androidx.transition;

import android.graphics.Canvas;
import android.os.Build$VERSION;
import androidx.annotation.NonNull;
import j1.i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class CanvasUtils {
    private static Method sInorderBarrierMethod;
    private static boolean sOrderMethodsFetched;
    private static Method sReorderBarrierMethod;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private CanvasUtils() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void enableZ(@NonNull Canvas canvas, boolean z8) {
        Method method;
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 29) {
            if (z8) {
                CanvasUtils$Api29Impl.enableZ(canvas);
                return;
            } else {
                CanvasUtils$Api29Impl.disableZ(canvas);
                return;
            }
        }
        if (i9 == 28) {
            i.l("This method doesn't work on Pie!");
            return;
        }
        if (!sOrderMethodsFetched) {
            try {
                Method declaredMethod = Canvas.class.getDeclaredMethod("insertReorderBarrier", null);
                sReorderBarrierMethod = declaredMethod;
                declaredMethod.setAccessible(true);
                Method declaredMethod2 = Canvas.class.getDeclaredMethod("insertInorderBarrier", null);
                sInorderBarrierMethod = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            sOrderMethodsFetched = true;
        }
        if (z8) {
            try {
                Method method2 = sReorderBarrierMethod;
                if (method2 != null) {
                    method2.invoke(canvas, null);
                }
            } catch (IllegalAccessException unused2) {
                return;
            } catch (InvocationTargetException e) {
                n0.b.w(e.getCause());
                return;
            }
        }
        if (z8 || (method = sInorderBarrierMethod) == null) {
            return;
        }
        method.invoke(canvas, null);
    }
}
