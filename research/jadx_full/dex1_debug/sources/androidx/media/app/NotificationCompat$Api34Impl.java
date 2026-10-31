package androidx.media.app;

import android.app.Notification$MediaStyle;
import android.app.PendingIntent;
import androidx.annotation.DoNotInline;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(34)
public class NotificationCompat$Api34Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$Api34Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$MediaStyle setRemotePlaybackInfo(Notification$MediaStyle notification$MediaStyle, @NonNull CharSequence charSequence, @DrawableRes int i9, @Nullable PendingIntent pendingIntent, Boolean bool) {
        if (bool.booleanValue()) {
            notification$MediaStyle.setRemotePlaybackInfo(charSequence, i9, pendingIntent);
        }
        return notification$MediaStyle;
    }
}
