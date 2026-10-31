package androidx.core.app;

import android.app.Notification;
import android.app.Notification$Builder;
import android.media.AudioAttributes;
import android.net.Uri;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(21)
public class NotificationCompatBuilder$Api21Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompatBuilder$Api21Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder addPerson(Notification$Builder notification$Builder, String str) {
        return notification$Builder.addPerson(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder setCategory(Notification$Builder notification$Builder, String str) {
        return notification$Builder.setCategory(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder setColor(Notification$Builder notification$Builder, int i9) {
        return notification$Builder.setColor(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder setPublicVersion(Notification$Builder notification$Builder, Notification notification) {
        return notification$Builder.setPublicVersion(notification);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder setSound(Notification$Builder notification$Builder, Uri uri, Object obj) {
        return notification$Builder.setSound(uri, (AudioAttributes) obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder setVisibility(Notification$Builder notification$Builder, int i9) {
        return notification$Builder.setVisibility(i9);
    }
}
