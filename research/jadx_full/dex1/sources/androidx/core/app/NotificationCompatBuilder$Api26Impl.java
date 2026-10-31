package androidx.core.app;

import android.app.Notification$Builder;
import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(26)
public class NotificationCompatBuilder$Api26Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompatBuilder$Api26Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder createBuilder(Context context, String str) {
        return new Notification$Builder(context, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder setBadgeIconType(Notification$Builder notification$Builder, int i9) {
        return notification$Builder.setBadgeIconType(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder setColorized(Notification$Builder notification$Builder, boolean z8) {
        return notification$Builder.setColorized(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder setGroupAlertBehavior(Notification$Builder notification$Builder, int i9) {
        return notification$Builder.setGroupAlertBehavior(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder setSettingsText(Notification$Builder notification$Builder, CharSequence charSequence) {
        return notification$Builder.setSettingsText(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder setShortcutId(Notification$Builder notification$Builder, String str) {
        return notification$Builder.setShortcutId(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder setTimeoutAfter(Notification$Builder notification$Builder, long j9) {
        return notification$Builder.setTimeoutAfter(j9);
    }
}
