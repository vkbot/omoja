package androidx.core.app;

import android.app.Notification$Action$Builder;
import android.app.Notification$Builder;
import android.widget.RemoteViews;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(24)
public class NotificationCompatBuilder$Api24Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompatBuilder$Api24Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Action$Builder setAllowGeneratedReplies(Notification$Action$Builder notification$Action$Builder, boolean z8) {
        return notification$Action$Builder.setAllowGeneratedReplies(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder setCustomBigContentView(Notification$Builder notification$Builder, RemoteViews remoteViews) {
        return notification$Builder.setCustomBigContentView(remoteViews);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder setCustomContentView(Notification$Builder notification$Builder, RemoteViews remoteViews) {
        return notification$Builder.setCustomContentView(remoteViews);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder setCustomHeadsUpContentView(Notification$Builder notification$Builder, RemoteViews remoteViews) {
        return notification$Builder.setCustomHeadsUpContentView(remoteViews);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder setRemoteInputHistory(Notification$Builder notification$Builder, CharSequence[] charSequenceArr) {
        return notification$Builder.setRemoteInputHistory(charSequenceArr);
    }
}
