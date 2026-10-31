package androidx.core.location;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LocationRequestCompat$Api19Impl {
    private static Method sCreateFromDeprecatedProviderMethod;
    private static Class<?> sLocationRequestClass;
    private static Method sSetExpireInMethod;
    private static Method sSetFastestIntervalMethod;
    private static Method sSetNumUpdatesMethod;
    private static Method sSetQualityMethod;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private LocationRequestCompat$Api19Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Object toLocationRequest(LocationRequestCompat locationRequestCompat, String str) {
        try {
            if (sLocationRequestClass == null) {
                sLocationRequestClass = Class.forName("android.location.LocationRequest");
            }
            Method method = sCreateFromDeprecatedProviderMethod;
            Class cls = Long.TYPE;
            if (method == null) {
                Method declaredMethod = sLocationRequestClass.getDeclaredMethod("createFromDeprecatedProvider", String.class, cls, Float.TYPE, Boolean.TYPE);
                sCreateFromDeprecatedProviderMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            Object objInvoke = sCreateFromDeprecatedProviderMethod.invoke(null, str, Long.valueOf(locationRequestCompat.getIntervalMillis()), Float.valueOf(locationRequestCompat.getMinUpdateDistanceMeters()), Boolean.FALSE);
            if (objInvoke == null) {
                return null;
            }
            Method method2 = sSetQualityMethod;
            Class cls2 = Integer.TYPE;
            if (method2 == null) {
                Method declaredMethod2 = sLocationRequestClass.getDeclaredMethod("setQuality", cls2);
                sSetQualityMethod = declaredMethod2;
                declaredMethod2.setAccessible(true);
            }
            sSetQualityMethod.invoke(objInvoke, Integer.valueOf(locationRequestCompat.getQuality()));
            if (sSetFastestIntervalMethod == null) {
                Method declaredMethod3 = sLocationRequestClass.getDeclaredMethod("setFastestInterval", cls);
                sSetFastestIntervalMethod = declaredMethod3;
                declaredMethod3.setAccessible(true);
            }
            sSetFastestIntervalMethod.invoke(objInvoke, Long.valueOf(locationRequestCompat.getMinUpdateIntervalMillis()));
            if (locationRequestCompat.getMaxUpdates() < Integer.MAX_VALUE) {
                if (sSetNumUpdatesMethod == null) {
                    Method declaredMethod4 = sLocationRequestClass.getDeclaredMethod("setNumUpdates", cls2);
                    sSetNumUpdatesMethod = declaredMethod4;
                    declaredMethod4.setAccessible(true);
                }
                sSetNumUpdatesMethod.invoke(objInvoke, Integer.valueOf(locationRequestCompat.getMaxUpdates()));
            }
            if (locationRequestCompat.getDurationMillis() < Long.MAX_VALUE) {
                if (sSetExpireInMethod == null) {
                    Method declaredMethod5 = sLocationRequestClass.getDeclaredMethod("setExpireIn", cls);
                    sSetExpireInMethod = declaredMethod5;
                    declaredMethod5.setAccessible(true);
                }
                sSetExpireInMethod.invoke(objInvoke, Long.valueOf(locationRequestCompat.getDurationMillis()));
            }
            return objInvoke;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }
}
