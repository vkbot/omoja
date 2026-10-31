package androidx.core.app;

import android.app.Notification$Action;
import android.app.Notification$Action$Builder;
import android.app.PendingIntent;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(20)
public class NotificationCompat$CallStyle$Api20Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$CallStyle$Api20Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Action$Builder addExtras(Notification$Action$Builder notification$Action$Builder, Bundle bundle) {
        return notification$Action$Builder.addExtras(bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Action$Builder addRemoteInput(Notification$Action$Builder notification$Action$Builder, android.app.RemoteInput remoteInput) {
        return notification$Action$Builder.addRemoteInput(remoteInput);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Action build(Notification$Action$Builder notification$Action$Builder) {
        return notification$Action$Builder.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Action$Builder createActionBuilder(int i9, CharSequence charSequence, PendingIntent pendingIntent) {
        return new Notification$Action$Builder(i9, charSequence, pendingIntent);
    }
}
