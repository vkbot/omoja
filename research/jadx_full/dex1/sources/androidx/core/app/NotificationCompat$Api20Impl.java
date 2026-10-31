package androidx.core.app;

import android.app.Notification;
import android.app.Notification$Action;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(20)
public class NotificationCompat$Api20Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$Api20Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean getAllowFreeFormInput(android.app.RemoteInput remoteInput) {
        return remoteInput.getAllowFreeFormInput();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static CharSequence[] getChoices(android.app.RemoteInput remoteInput) {
        return remoteInput.getChoices();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Bundle getExtras(Notification$Action notification$Action) {
        return notification$Action.getExtras();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static String getGroup(Notification notification) {
        return notification.getGroup();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static CharSequence getLabel(android.app.RemoteInput remoteInput) {
        return remoteInput.getLabel();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static android.app.RemoteInput[] getRemoteInputs(Notification$Action notification$Action) {
        return notification$Action.getRemoteInputs();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static String getResultKey(android.app.RemoteInput remoteInput) {
        return remoteInput.getResultKey();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static String getSortKey(Notification notification) {
        return notification.getSortKey();
    }

    @DoNotInline
    public static Bundle getExtras(android.app.RemoteInput remoteInput) {
        return remoteInput.getExtras();
    }
}
