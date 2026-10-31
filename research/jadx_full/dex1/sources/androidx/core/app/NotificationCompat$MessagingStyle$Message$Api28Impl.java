package androidx.core.app;

import android.app.Notification$MessagingStyle$Message;
import android.os.Parcelable;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(28)
public class NotificationCompat$MessagingStyle$Message$Api28Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$MessagingStyle$Message$Api28Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Parcelable castToParcelable(android.app.Person person) {
        return person;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$MessagingStyle$Message createMessage(CharSequence charSequence, long j9, android.app.Person person) {
        return new Notification$MessagingStyle$Message(charSequence, j9, person);
    }
}
