package androidx.core.app;

import android.app.Notification$BubbleMetadata;
import android.app.Notification$BubbleMetadata$Builder;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.graphics.drawable.IconCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
public class NotificationCompat$BubbleMetadata$Api30Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$BubbleMetadata$Api30Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
    public static NotificationCompat$BubbleMetadata fromPlatform(@Nullable Notification$BubbleMetadata notification$BubbleMetadata) {
        if (notification$BubbleMetadata == null) {
            return null;
        }
        NotificationCompat$BubbleMetadata$Builder notificationCompat$BubbleMetadata$Builder = notification$BubbleMetadata.getShortcutId() != null ? new NotificationCompat$BubbleMetadata$Builder(notification$BubbleMetadata.getShortcutId()) : new NotificationCompat$BubbleMetadata$Builder(notification$BubbleMetadata.getIntent(), IconCompat.createFromIcon(notification$BubbleMetadata.getIcon()));
        notificationCompat$BubbleMetadata$Builder.setAutoExpandBubble(notification$BubbleMetadata.getAutoExpandBubble()).setDeleteIntent(notification$BubbleMetadata.getDeleteIntent()).setSuppressNotification(notification$BubbleMetadata.isNotificationSuppressed());
        if (notification$BubbleMetadata.getDesiredHeight() != 0) {
            notificationCompat$BubbleMetadata$Builder.setDesiredHeight(notification$BubbleMetadata.getDesiredHeight());
        }
        if (notification$BubbleMetadata.getDesiredHeightResId() != 0) {
            notificationCompat$BubbleMetadata$Builder.setDesiredHeightResId(notification$BubbleMetadata.getDesiredHeightResId());
        }
        return notificationCompat$BubbleMetadata$Builder.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
    public static Notification$BubbleMetadata toPlatform(@Nullable NotificationCompat$BubbleMetadata notificationCompat$BubbleMetadata) {
        if (notificationCompat$BubbleMetadata == null) {
            return null;
        }
        Notification$BubbleMetadata$Builder notification$BubbleMetadata$Builder = notificationCompat$BubbleMetadata.getShortcutId() != null ? new Notification$BubbleMetadata$Builder(notificationCompat$BubbleMetadata.getShortcutId()) : new Notification$BubbleMetadata$Builder(notificationCompat$BubbleMetadata.getIntent(), notificationCompat$BubbleMetadata.getIcon().toIcon());
        notification$BubbleMetadata$Builder.setDeleteIntent(notificationCompat$BubbleMetadata.getDeleteIntent()).setAutoExpandBubble(notificationCompat$BubbleMetadata.getAutoExpandBubble()).setSuppressNotification(notificationCompat$BubbleMetadata.isNotificationSuppressed());
        if (notificationCompat$BubbleMetadata.getDesiredHeight() != 0) {
            notification$BubbleMetadata$Builder.setDesiredHeight(notificationCompat$BubbleMetadata.getDesiredHeight());
        }
        if (notificationCompat$BubbleMetadata.getDesiredHeightResId() != 0) {
            notification$BubbleMetadata$Builder.setDesiredHeightResId(notificationCompat$BubbleMetadata.getDesiredHeightResId());
        }
        return notification$BubbleMetadata$Builder.build();
    }
}
