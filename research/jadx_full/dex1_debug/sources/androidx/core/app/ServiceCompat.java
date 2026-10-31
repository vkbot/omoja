package androidx.core.app;

import android.app.Notification;
import android.app.Service;
import android.os.Build$VERSION;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ServiceCompat {
    private static final int FOREGROUND_SERVICE_TYPE_ALLOWED_SINCE_Q = 255;
    private static final int FOREGROUND_SERVICE_TYPE_ALLOWED_SINCE_U = 1073745919;
    public static final int START_STICKY = 1;
    public static final int STOP_FOREGROUND_DETACH = 2;
    public static final int STOP_FOREGROUND_REMOVE = 1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ServiceCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void startForeground(@NonNull Service service, int i9, @NonNull Notification notification, int i10) {
        int i11 = Build$VERSION.SDK_INT;
        if (i11 >= 34) {
            ServiceCompat$Api34Impl.startForeground(service, i9, notification, i10);
        } else if (i11 >= 29) {
            ServiceCompat$Api29Impl.startForeground(service, i9, notification, i10);
        } else {
            service.startForeground(i9, notification);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void stopForeground(@NonNull Service service, int i9) {
        ServiceCompat$Api24Impl.stopForeground(service, i9);
    }
}
