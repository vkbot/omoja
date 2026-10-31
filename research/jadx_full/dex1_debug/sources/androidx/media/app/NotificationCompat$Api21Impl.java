package androidx.media.app;

import android.app.Notification$Builder;
import android.app.Notification$MediaStyle;
import android.media.session.MediaSession$Token;
import android.support.v4.media.session.MediaSessionCompat$Token;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(21)
public class NotificationCompat$Api21Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$Api21Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$MediaStyle createMediaStyle() {
        return new Notification$MediaStyle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$MediaStyle fillInMediaStyle(Notification$MediaStyle notification$MediaStyle, int[] iArr, MediaSessionCompat$Token mediaSessionCompat$Token) {
        if (iArr != null) {
            setShowActionsInCompactView(notification$MediaStyle, iArr);
        }
        if (mediaSessionCompat$Token != null) {
            setMediaSession(notification$MediaStyle, (MediaSession$Token) mediaSessionCompat$Token.c);
        }
        return notification$MediaStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setMediaSession(Notification$MediaStyle notification$MediaStyle, MediaSession$Token mediaSession$Token) {
        notification$MediaStyle.setMediaSession(mediaSession$Token);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setMediaStyle(Notification$Builder notification$Builder, Notification$MediaStyle notification$MediaStyle) {
        notification$Builder.setStyle(notification$MediaStyle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setShowActionsInCompactView(Notification$MediaStyle notification$MediaStyle, int... iArr) {
        notification$MediaStyle.setShowActionsInCompactView(iArr);
    }
}
