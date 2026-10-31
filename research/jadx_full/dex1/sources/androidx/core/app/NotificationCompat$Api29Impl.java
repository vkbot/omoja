package androidx.core.app;

import android.app.Notification;
import android.app.Notification$Action;
import android.app.Notification$BubbleMetadata;
import android.content.LocusId;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS)
public class NotificationCompat$Api29Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$Api29Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean getAllowSystemGeneratedContextualActions(Notification notification) {
        return notification.getAllowSystemGeneratedContextualActions();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$BubbleMetadata getBubbleMetadata(Notification notification) {
        return notification.getBubbleMetadata();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getEditChoicesBeforeSending(android.app.RemoteInput remoteInput) {
        return remoteInput.getEditChoicesBeforeSending();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static LocusId getLocusId(Notification notification) {
        return notification.getLocusId();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean isContextual(Notification$Action notification$Action) {
        return notification$Action.isContextual();
    }
}
