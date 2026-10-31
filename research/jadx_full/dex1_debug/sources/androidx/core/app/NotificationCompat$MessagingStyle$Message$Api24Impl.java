package androidx.core.app;

import android.app.Notification$MessagingStyle$Message;
import android.net.Uri;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(24)
public class NotificationCompat$MessagingStyle$Message$Api24Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$MessagingStyle$Message$Api24Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$MessagingStyle$Message createMessage(CharSequence charSequence, long j9, CharSequence charSequence2) {
        return new Notification$MessagingStyle$Message(charSequence, j9, charSequence2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$MessagingStyle$Message setData(Notification$MessagingStyle$Message notification$MessagingStyle$Message, String str, Uri uri) {
        return notification$MessagingStyle$Message.setData(str, uri);
    }
}
