package androidx.core.app;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.os.Build$VERSION;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AlarmManagerCompat {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AlarmManagerCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean canScheduleExactAlarms(@NonNull AlarmManager alarmManager) {
        if (Build$VERSION.SDK_INT >= 31) {
            return AlarmManagerCompat$Api31Impl.canScheduleExactAlarms(alarmManager);
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setAlarmClock(@NonNull AlarmManager alarmManager, long j9, @NonNull PendingIntent pendingIntent, @NonNull PendingIntent pendingIntent2) {
        AlarmManagerCompat$Api21Impl.setAlarmClock(alarmManager, AlarmManagerCompat$Api21Impl.createAlarmClockInfo(j9, pendingIntent), pendingIntent2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setAndAllowWhileIdle(@NonNull AlarmManager alarmManager, int i9, long j9, @NonNull PendingIntent pendingIntent) {
        AlarmManagerCompat$Api23Impl.setAndAllowWhileIdle(alarmManager, i9, j9, pendingIntent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setExact(@NonNull AlarmManager alarmManager, int i9, long j9, @NonNull PendingIntent pendingIntent) {
        alarmManager.setExact(i9, j9, pendingIntent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setExactAndAllowWhileIdle(@NonNull AlarmManager alarmManager, int i9, long j9, @NonNull PendingIntent pendingIntent) {
        AlarmManagerCompat$Api23Impl.setExactAndAllowWhileIdle(alarmManager, i9, j9, pendingIntent);
    }
}
