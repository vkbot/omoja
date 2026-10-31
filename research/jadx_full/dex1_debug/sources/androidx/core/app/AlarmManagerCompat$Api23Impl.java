package androidx.core.app;

import android.app.AlarmManager;
import android.app.PendingIntent;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(23)
public class AlarmManagerCompat$Api23Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AlarmManagerCompat$Api23Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setAndAllowWhileIdle(AlarmManager alarmManager, int i9, long j9, PendingIntent pendingIntent) {
        alarmManager.setAndAllowWhileIdle(i9, j9, pendingIntent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setExactAndAllowWhileIdle(AlarmManager alarmManager, int i9, long j9, PendingIntent pendingIntent) {
        alarmManager.setExactAndAllowWhileIdle(i9, j9, pendingIntent);
    }
}
