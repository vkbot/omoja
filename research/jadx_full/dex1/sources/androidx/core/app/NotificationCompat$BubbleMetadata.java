package androidx.core.app;

import android.app.Notification$BubbleMetadata;
import android.app.PendingIntent;
import android.os.Build$VERSION;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.graphics.drawable.IconCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class NotificationCompat$BubbleMetadata {
    private static final int FLAG_AUTO_EXPAND_BUBBLE = 1;
    private static final int FLAG_SUPPRESS_NOTIFICATION = 2;
    private PendingIntent mDeleteIntent;
    private int mDesiredHeight;

    @DimenRes
    private int mDesiredHeightResId;
    private int mFlags;
    private IconCompat mIcon;
    private PendingIntent mPendingIntent;
    private String mShortcutId;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$BubbleMetadata(@Nullable PendingIntent pendingIntent, @Nullable PendingIntent pendingIntent2, @Nullable IconCompat iconCompat, int i9, @DimenRes int i10, int i11, @Nullable String str) {
        this.mPendingIntent = pendingIntent;
        this.mIcon = iconCompat;
        this.mDesiredHeight = i9;
        this.mDesiredHeightResId = i10;
        this.mDeleteIntent = pendingIntent2;
        this.mFlags = i11;
        this.mShortcutId = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static NotificationCompat$BubbleMetadata fromPlatform(@Nullable Notification$BubbleMetadata notification$BubbleMetadata) {
        if (notification$BubbleMetadata == null) {
            return null;
        }
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 30) {
            return NotificationCompat$BubbleMetadata$Api30Impl.fromPlatform(notification$BubbleMetadata);
        }
        if (i9 == 29) {
            return NotificationCompat$BubbleMetadata$Api29Impl.fromPlatform(notification$BubbleMetadata);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static Notification$BubbleMetadata toPlatform(@Nullable NotificationCompat$BubbleMetadata notificationCompat$BubbleMetadata) {
        if (notificationCompat$BubbleMetadata == null) {
            return null;
        }
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 30) {
            return NotificationCompat$BubbleMetadata$Api30Impl.toPlatform(notificationCompat$BubbleMetadata);
        }
        if (i9 == 29) {
            return NotificationCompat$BubbleMetadata$Api29Impl.toPlatform(notificationCompat$BubbleMetadata);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getAutoExpandBubble() {
        return (this.mFlags & 1) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public PendingIntent getDeleteIntent() {
        return this.mDeleteIntent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Dimension(unit = 0)
    public int getDesiredHeight() {
        return this.mDesiredHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DimenRes
    public int getDesiredHeightResId() {
        return this.mDesiredHeightResId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public IconCompat getIcon() {
        return this.mIcon;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public PendingIntent getIntent() {
        return this.mPendingIntent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getShortcutId() {
        return this.mShortcutId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isNotificationSuppressed() {
        return (this.mFlags & 2) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void setFlags(int i9) {
        this.mFlags = i9;
    }

    public /* synthetic */ NotificationCompat$BubbleMetadata(PendingIntent pendingIntent, PendingIntent pendingIntent2, IconCompat iconCompat, int i9, int i10, int i11, String str, NotificationCompat$1 notificationCompat$1) {
        this(pendingIntent, pendingIntent2, iconCompat, i9, i10, i11, str);
    }
}
