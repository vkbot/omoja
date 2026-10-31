package androidx.core.app;

import android.app.Notification;
import android.app.Service;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(34)
public class ServiceCompat$Api34Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ServiceCompat$Api34Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void startForeground(Service service, int i9, Notification notification, int i10) {
        if (i10 == 0 || i10 == -1) {
            service.startForeground(i9, notification, i10);
        } else {
            service.startForeground(i9, notification, i10 & 1073745919);
        }
    }
}
