package androidx.core.app;

import android.app.Notification$Action;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS)
public class NotificationCompat$Action$Builder$Api29Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$Action$Builder$Api29Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean isContextual(Notification$Action notification$Action) {
        return notification$Action.isContextual();
    }
}
