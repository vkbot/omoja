package androidx.core.app;

import android.app.Notification$Action$Builder;
import android.app.Notification$BubbleMetadata;
import android.app.Notification$Builder;
import android.content.LocusId;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS)
public class NotificationCompatBuilder$Api29Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompatBuilder$Api29Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder setAllowSystemGeneratedContextualActions(Notification$Builder notification$Builder, boolean z8) {
        return notification$Builder.setAllowSystemGeneratedContextualActions(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder setBubbleMetadata(Notification$Builder notification$Builder, Notification$BubbleMetadata notification$BubbleMetadata) {
        return notification$Builder.setBubbleMetadata(notification$BubbleMetadata);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Action$Builder setContextual(Notification$Action$Builder notification$Action$Builder, boolean z8) {
        return notification$Action$Builder.setContextual(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Builder setLocusId(Notification$Builder notification$Builder, Object obj) {
        return notification$Builder.setLocusId((LocusId) obj);
    }
}
