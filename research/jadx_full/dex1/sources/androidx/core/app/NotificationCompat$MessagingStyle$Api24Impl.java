package androidx.core.app;

import android.app.Notification$MessagingStyle;
import android.app.Notification$MessagingStyle$Message;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(24)
public class NotificationCompat$MessagingStyle$Api24Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$MessagingStyle$Api24Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$MessagingStyle addMessage(Notification$MessagingStyle notification$MessagingStyle, Notification$MessagingStyle$Message notification$MessagingStyle$Message) {
        return notification$MessagingStyle.addMessage(notification$MessagingStyle$Message);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$MessagingStyle createMessagingStyle(CharSequence charSequence) {
        return new Notification$MessagingStyle(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$MessagingStyle setConversationTitle(Notification$MessagingStyle notification$MessagingStyle, CharSequence charSequence) {
        return notification$MessagingStyle.setConversationTitle(charSequence);
    }
}
