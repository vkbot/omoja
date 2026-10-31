package androidx.core.location;

import android.location.Location;
import android.os.Build$VERSION;
import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class LocationCompat {
    public static final String EXTRA_BEARING_ACCURACY = "bearingAccuracy";
    public static final String EXTRA_IS_MOCK = "mockLocation";
    public static final String EXTRA_MSL_ALTITUDE = "androidx.core.location.extra.MSL_ALTITUDE";
    public static final String EXTRA_MSL_ALTITUDE_ACCURACY = "androidx.core.location.extra.MSL_ALTITUDE_ACCURACY";
    public static final String EXTRA_SPEED_ACCURACY = "speedAccuracy";
    public static final String EXTRA_VERTICAL_ACCURACY = "verticalAccuracy";

    @Nullable
    private static Field sFieldsMaskField;

    @Nullable
    private static Integer sHasBearingAccuracyMask;

    @Nullable
    private static Integer sHasSpeedAccuracyMask;

    @Nullable
    private static Integer sHasVerticalAccuracyMask;

    @Nullable
    private static Method sSetIsFromMockProviderMethod;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private LocationCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean containsExtra(@NonNull Location location, String str) {
        Bundle extras = location.getExtras();
        return extras != null && extras.containsKey(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float getBearingAccuracyDegrees(@NonNull Location location) {
        if (Build$VERSION.SDK_INT >= 26) {
            return LocationCompat$Api26Impl.getBearingAccuracyDegrees(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return 0.0f;
        }
        return extras.getFloat(EXTRA_BEARING_ACCURACY, 0.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long getElapsedRealtimeMillis(@NonNull Location location) {
        return location.getElapsedRealtimeNanos() / 1000000;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long getElapsedRealtimeNanos(@NonNull Location location) {
        return location.getElapsedRealtimeNanos();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Field getFieldsMaskField() throws NoSuchFieldException {
        if (sFieldsMaskField == null) {
            Field declaredField = Location.class.getDeclaredField("mFieldsMask");
            sFieldsMaskField = declaredField;
            declaredField.setAccessible(true);
        }
        return sFieldsMaskField;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getHasBearingAccuracyMask() throws NoSuchFieldException {
        if (sHasBearingAccuracyMask == null) {
            Field declaredField = Location.class.getDeclaredField("HAS_BEARING_ACCURACY_MASK");
            declaredField.setAccessible(true);
            sHasBearingAccuracyMask = Integer.valueOf(declaredField.getInt(null));
        }
        return sHasBearingAccuracyMask.intValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getHasSpeedAccuracyMask() throws NoSuchFieldException {
        if (sHasSpeedAccuracyMask == null) {
            Field declaredField = Location.class.getDeclaredField("HAS_SPEED_ACCURACY_MASK");
            declaredField.setAccessible(true);
            sHasSpeedAccuracyMask = Integer.valueOf(declaredField.getInt(null));
        }
        return sHasSpeedAccuracyMask.intValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getHasVerticalAccuracyMask() throws NoSuchFieldException {
        if (sHasVerticalAccuracyMask == null) {
            Field declaredField = Location.class.getDeclaredField("HAS_VERTICAL_ACCURACY_MASK");
            declaredField.setAccessible(true);
            sHasVerticalAccuracyMask = Integer.valueOf(declaredField.getInt(null));
        }
        return sHasVerticalAccuracyMask.intValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @FloatRange(from = 0.0d)
    public static float getMslAltitudeAccuracyMeters(@NonNull Location location) {
        return Build$VERSION.SDK_INT >= 34 ? LocationCompat$Api34Impl.getMslAltitudeAccuracyMeters(location) : getOrCreateExtras(location).getFloat(EXTRA_MSL_ALTITUDE_ACCURACY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static double getMslAltitudeMeters(@NonNull Location location) {
        return Build$VERSION.SDK_INT >= 34 ? LocationCompat$Api34Impl.getMslAltitudeMeters(location) : getOrCreateExtras(location).getDouble(EXTRA_MSL_ALTITUDE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Bundle getOrCreateExtras(@NonNull Location location) {
        Bundle extras = location.getExtras();
        if (extras != null) {
            return extras;
        }
        location.setExtras(new Bundle());
        return location.getExtras();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Method getSetIsFromMockProviderMethod() throws NoSuchMethodException {
        if (sSetIsFromMockProviderMethod == null) {
            Method declaredMethod = Location.class.getDeclaredMethod("setIsFromMockProvider", Boolean.TYPE);
            sSetIsFromMockProviderMethod = declaredMethod;
            declaredMethod.setAccessible(true);
        }
        return sSetIsFromMockProviderMethod;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float getSpeedAccuracyMetersPerSecond(@NonNull Location location) {
        if (Build$VERSION.SDK_INT >= 26) {
            return LocationCompat$Api26Impl.getSpeedAccuracyMetersPerSecond(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return 0.0f;
        }
        return extras.getFloat(EXTRA_SPEED_ACCURACY, 0.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float getVerticalAccuracyMeters(@NonNull Location location) {
        if (Build$VERSION.SDK_INT >= 26) {
            return LocationCompat$Api26Impl.getVerticalAccuracyMeters(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return 0.0f;
        }
        return extras.getFloat(EXTRA_VERTICAL_ACCURACY, 0.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean hasBearingAccuracy(@NonNull Location location) {
        return Build$VERSION.SDK_INT >= 26 ? LocationCompat$Api26Impl.hasBearingAccuracy(location) : containsExtra(location, EXTRA_BEARING_ACCURACY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean hasMslAltitude(@NonNull Location location) {
        return Build$VERSION.SDK_INT >= 34 ? LocationCompat$Api34Impl.hasMslAltitude(location) : containsExtra(location, EXTRA_MSL_ALTITUDE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean hasMslAltitudeAccuracy(@NonNull Location location) {
        return Build$VERSION.SDK_INT >= 34 ? LocationCompat$Api34Impl.hasMslAltitudeAccuracy(location) : containsExtra(location, EXTRA_MSL_ALTITUDE_ACCURACY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean hasSpeedAccuracy(@NonNull Location location) {
        return Build$VERSION.SDK_INT >= 26 ? LocationCompat$Api26Impl.hasSpeedAccuracy(location) : containsExtra(location, EXTRA_SPEED_ACCURACY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean hasVerticalAccuracy(@NonNull Location location) {
        return Build$VERSION.SDK_INT >= 26 ? LocationCompat$Api26Impl.hasVerticalAccuracy(location) : containsExtra(location, EXTRA_VERTICAL_ACCURACY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isMock(@NonNull Location location) {
        return location.isFromMockProvider();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void removeBearingAccuracy(@NonNull Location location) {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 33) {
            LocationCompat$Api33Impl.removeBearingAccuracy(location);
            return;
        }
        if (i9 >= 29) {
            LocationCompat$Api29Impl.removeBearingAccuracy(location);
            return;
        }
        if (i9 >= 28) {
            LocationCompat$Api28Impl.removeBearingAccuracy(location);
        } else if (i9 >= 26) {
            LocationCompat$Api26Impl.removeBearingAccuracy(location);
        } else {
            removeExtra(location, EXTRA_BEARING_ACCURACY);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void removeExtra(@NonNull Location location, String str) {
        Bundle extras = location.getExtras();
        if (extras != null) {
            extras.remove(str);
            if (extras.isEmpty()) {
                location.setExtras(null);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void removeMslAltitude(@NonNull Location location) {
        if (Build$VERSION.SDK_INT >= 34) {
            LocationCompat$Api34Impl.removeMslAltitude(location);
        } else {
            removeExtra(location, EXTRA_MSL_ALTITUDE);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void removeMslAltitudeAccuracy(@NonNull Location location) {
        if (Build$VERSION.SDK_INT >= 34) {
            LocationCompat$Api34Impl.removeMslAltitudeAccuracy(location);
        } else {
            removeExtra(location, EXTRA_MSL_ALTITUDE_ACCURACY);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void removeSpeedAccuracy(@NonNull Location location) {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 33) {
            LocationCompat$Api33Impl.removeSpeedAccuracy(location);
            return;
        }
        if (i9 >= 29) {
            LocationCompat$Api29Impl.removeSpeedAccuracy(location);
            return;
        }
        if (i9 >= 28) {
            LocationCompat$Api28Impl.removeSpeedAccuracy(location);
        } else if (i9 >= 26) {
            LocationCompat$Api26Impl.removeSpeedAccuracy(location);
        } else {
            removeExtra(location, EXTRA_SPEED_ACCURACY);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void removeVerticalAccuracy(@NonNull Location location) {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 33) {
            LocationCompat$Api33Impl.removeVerticalAccuracy(location);
            return;
        }
        if (i9 >= 29) {
            LocationCompat$Api29Impl.removeVerticalAccuracy(location);
            return;
        }
        if (i9 >= 28) {
            LocationCompat$Api28Impl.removeVerticalAccuracy(location);
        } else if (i9 >= 26) {
            LocationCompat$Api26Impl.removeVerticalAccuracy(location);
        } else {
            removeExtra(location, EXTRA_VERTICAL_ACCURACY);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setBearingAccuracyDegrees(@NonNull Location location, float f8) {
        if (Build$VERSION.SDK_INT >= 26) {
            LocationCompat$Api26Impl.setBearingAccuracyDegrees(location, f8);
        } else {
            getOrCreateExtras(location).putFloat(EXTRA_BEARING_ACCURACY, f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setMock(@NonNull Location location, boolean z8) {
        try {
            getSetIsFromMockProviderMethod().invoke(location, Boolean.valueOf(z8));
        } catch (IllegalAccessException e) {
            IllegalAccessError illegalAccessError = new IllegalAccessError();
            illegalAccessError.initCause(e);
            throw illegalAccessError;
        } catch (NoSuchMethodException e6) {
            NoSuchMethodError noSuchMethodError = new NoSuchMethodError();
            noSuchMethodError.initCause(e6);
            throw noSuchMethodError;
        } catch (InvocationTargetException e9) {
            n0.b.w(e9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setMslAltitudeAccuracyMeters(@NonNull Location location, @FloatRange(from = 0.0d) float f8) {
        if (Build$VERSION.SDK_INT >= 34) {
            LocationCompat$Api34Impl.setMslAltitudeAccuracyMeters(location, f8);
        } else {
            getOrCreateExtras(location).putFloat(EXTRA_MSL_ALTITUDE_ACCURACY, f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setMslAltitudeMeters(@NonNull Location location, double d) {
        if (Build$VERSION.SDK_INT >= 34) {
            LocationCompat$Api34Impl.setMslAltitudeMeters(location, d);
        } else {
            getOrCreateExtras(location).putDouble(EXTRA_MSL_ALTITUDE, d);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setSpeedAccuracyMetersPerSecond(@NonNull Location location, float f8) {
        if (Build$VERSION.SDK_INT >= 26) {
            LocationCompat$Api26Impl.setSpeedAccuracyMetersPerSecond(location, f8);
        } else {
            getOrCreateExtras(location).putFloat(EXTRA_SPEED_ACCURACY, f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setVerticalAccuracyMeters(@NonNull Location location, float f8) {
        if (Build$VERSION.SDK_INT >= 26) {
            LocationCompat$Api26Impl.setVerticalAccuracyMeters(location, f8);
        } else {
            getOrCreateExtras(location).putFloat(EXTRA_VERTICAL_ACCURACY, f8);
        }
    }
}
