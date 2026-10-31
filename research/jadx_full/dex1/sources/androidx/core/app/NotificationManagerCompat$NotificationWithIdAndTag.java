package androidx.core.app;

import android.app.Notification;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationManagerCompat$NotificationWithIdAndTag {
    final int mId;
    Notification mNotification;
    final String mTag;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationManagerCompat$NotificationWithIdAndTag(@Nullable String str, int i9, @NonNull Notification notification) {
        this.mTag = str;
        this.mId = i9;
        this.mNotification = notification;
    }

    public NotificationManagerCompat$NotificationWithIdAndTag(int i9, @NonNull Notification notification) {
        this(null, i9, notification);
    }
}
