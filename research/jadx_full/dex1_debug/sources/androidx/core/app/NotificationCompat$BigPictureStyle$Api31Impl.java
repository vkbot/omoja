package androidx.core.app;

import android.app.Notification$BigPictureStyle;
import android.graphics.drawable.Icon;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT)
public class NotificationCompat$BigPictureStyle$Api31Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$BigPictureStyle$Api31Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT)
    public static void setBigPicture(Notification$BigPictureStyle notification$BigPictureStyle, Icon icon) {
        notification$BigPictureStyle.bigPicture(icon);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT)
    public static void setContentDescription(Notification$BigPictureStyle notification$BigPictureStyle, CharSequence charSequence) {
        notification$BigPictureStyle.setContentDescription(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT)
    public static void showBigPictureWhenCollapsed(Notification$BigPictureStyle notification$BigPictureStyle, boolean z8) {
        notification$BigPictureStyle.showBigPictureWhenCollapsed(z8);
    }
}
