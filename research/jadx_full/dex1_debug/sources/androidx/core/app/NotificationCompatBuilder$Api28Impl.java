package androidx.core.app;

import android.app.Notification$Action$Builder;
import android.app.Notification$Builder;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(28)
public class NotificationCompatBuilder$Api28Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompatBuilder$Api28Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder addPerson(Notification$Builder notification$Builder, android.app.Person person) {
        return notification$Builder.addPerson(person);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Action$Builder setSemanticAction(Notification$Action$Builder notification$Action$Builder, int i9) {
        return notification$Action$Builder.setSemanticAction(i9);
    }
}
