package androidx.core.app;

import android.content.ComponentName;
import android.os.IBinder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationManagerCompat$ServiceConnectedEvent {
    final ComponentName componentName;
    final IBinder iBinder;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationManagerCompat$ServiceConnectedEvent(ComponentName componentName, IBinder iBinder) {
        this.componentName = componentName;
        this.iBinder = iBinder;
    }
}
