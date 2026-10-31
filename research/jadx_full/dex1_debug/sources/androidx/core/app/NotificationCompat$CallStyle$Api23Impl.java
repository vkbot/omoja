package androidx.core.app;

import android.app.Notification$Action$Builder;
import android.app.Notification$Builder;
import android.app.PendingIntent;
import android.graphics.drawable.Icon;
import android.os.Parcelable;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(23)
public class NotificationCompat$CallStyle$Api23Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$CallStyle$Api23Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Action$Builder createActionBuilder(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
        return new Notification$Action$Builder(icon, charSequence, pendingIntent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setLargeIcon(Notification$Builder notification$Builder, Icon icon) {
        notification$Builder.setLargeIcon(icon);
    }

    @DoNotInline
    public static Parcelable castToParcelable(Icon icon) {
        return icon;
    }
}
