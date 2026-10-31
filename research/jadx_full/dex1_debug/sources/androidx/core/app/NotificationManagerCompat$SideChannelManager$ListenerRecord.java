package androidx.core.app;

import android.content.ComponentName;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationManagerCompat$SideChannelManager$ListenerRecord {
    final ComponentName componentName;
    android.support.v4.app.c service;
    boolean bound = false;
    ArrayDeque<NotificationManagerCompat$Task> taskQueue = new ArrayDeque<>();
    int retryCount = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationManagerCompat$SideChannelManager$ListenerRecord(ComponentName componentName) {
        this.componentName = componentName;
    }
}
