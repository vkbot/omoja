package androidx.core.app;

import android.app.Notification$MessagingStyle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(28)
public class NotificationCompat$MessagingStyle$Api28Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$MessagingStyle$Api28Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$MessagingStyle createMessagingStyle(android.app.Person person) {
        return new Notification$MessagingStyle(person);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$MessagingStyle setGroupConversation(Notification$MessagingStyle notification$MessagingStyle, boolean z8) {
        return notification$MessagingStyle.setGroupConversation(z8);
    }
}
