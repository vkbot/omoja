package androidx.transition;

import android.os.Build$VERSION;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class ViewGroupUtils {
    private static Method sGetChildDrawingOrderMethod = null;
    private static boolean sGetChildDrawingOrderMethodFetched = false;
    private static boolean sTryHiddenSuppressLayout = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ViewGroupUtils() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getChildDrawingOrder(@NonNull ViewGroup viewGroup, int i9) {
        if (Build$VERSION.SDK_INT >= 29) {
            return ViewGroupUtils$Api29Impl.getChildDrawingOrder(viewGroup, i9);
        }
        if (!sGetChildDrawingOrderMethodFetched) {
            try {
                Class cls = Integer.TYPE;
                Method declaredMethod = ViewGroup.class.getDeclaredMethod("getChildDrawingOrder", cls, cls);
                sGetChildDrawingOrderMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            sGetChildDrawingOrderMethodFetched = true;
        }
        Method method = sGetChildDrawingOrderMethod;
        if (method != null) {
            try {
                return ((Integer) method.invoke(viewGroup, Integer.valueOf(viewGroup.getChildCount()), Integer.valueOf(i9))).intValue();
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void hiddenSuppressLayout(@NonNull ViewGroup viewGroup, boolean z8) {
        if (sTryHiddenSuppressLayout) {
            try {
                ViewGroupUtils$Api29Impl.suppressLayout(viewGroup, z8);
            } catch (NoSuchMethodError unused) {
                sTryHiddenSuppressLayout = false;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void suppressLayout(@NonNull ViewGroup viewGroup, boolean z8) {
        if (Build$VERSION.SDK_INT >= 29) {
            ViewGroupUtils$Api29Impl.suppressLayout(viewGroup, z8);
        } else {
            hiddenSuppressLayout(viewGroup, z8);
        }
    }
}
