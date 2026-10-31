package androidx.core.app;

import android.app.Notification;
import android.app.Notification$Builder;
import android.content.Context;
import android.widget.RemoteViews;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(24)
public class NotificationCompat$Builder$Api24Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$Builder$Api24Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static RemoteViews createBigContentView(Notification$Builder notification$Builder) {
        return notification$Builder.createHeadsUpContentView();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static RemoteViews createContentView(Notification$Builder notification$Builder) {
        return notification$Builder.createContentView();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static RemoteViews createHeadsUpContentView(Notification$Builder notification$Builder) {
        return notification$Builder.createHeadsUpContentView();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder recoverBuilder(Context context, Notification notification) {
        return Notification$Builder.recoverBuilder(context, notification);
    }
}
