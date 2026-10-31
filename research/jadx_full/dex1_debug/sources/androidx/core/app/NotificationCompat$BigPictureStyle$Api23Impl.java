package androidx.core.app;

import android.app.Notification$BigPictureStyle;
import android.graphics.drawable.Icon;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(23)
public class NotificationCompat$BigPictureStyle$Api23Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$BigPictureStyle$Api23Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(23)
    public static void setBigLargeIcon(Notification$BigPictureStyle notification$BigPictureStyle, Icon icon) {
        notification$BigPictureStyle.bigLargeIcon(icon);
    }
}
