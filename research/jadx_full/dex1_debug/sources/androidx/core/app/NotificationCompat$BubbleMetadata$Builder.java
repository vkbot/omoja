package androidx.core.app;

import android.app.PendingIntent;
import android.text.TextUtils;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.graphics.drawable.IconCompat;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class NotificationCompat$BubbleMetadata$Builder {
    private PendingIntent mDeleteIntent;
    private int mDesiredHeight;

    @DimenRes
    private int mDesiredHeightResId;
    private int mFlags;
    private IconCompat mIcon;
    private PendingIntent mPendingIntent;
    private String mShortcutId;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationCompat$BubbleMetadata$Builder(@NonNull PendingIntent pendingIntent, @NonNull IconCompat iconCompat) {
        if (pendingIntent == null) {
            n0.b.n("Bubble requires non-null pending intent");
            throw null;
        }
        if (iconCompat == null) {
            n0.b.n("Bubbles require non-null icon");
            throw null;
        }
        this.mPendingIntent = pendingIntent;
        this.mIcon = iconCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private NotificationCompat$BubbleMetadata$Builder setFlag(int i9, boolean z8) {
        int i10 = this.mFlags;
        if (z8) {
            this.mFlags = i9 | i10;
            return this;
        }
        this.mFlags = (~i9) & i10;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$BubbleMetadata build() {
        String str = this.mShortcutId;
        if (str == null && this.mPendingIntent == null) {
            n0.b.n("Must supply pending intent or shortcut to bubble");
            return null;
        }
        if (str == null && this.mIcon == null) {
            n0.b.n("Must supply an icon or shortcut for the bubble");
            return null;
        }
        NotificationCompat$BubbleMetadata notificationCompat$BubbleMetadata = new NotificationCompat$BubbleMetadata(this.mPendingIntent, this.mDeleteIntent, this.mIcon, this.mDesiredHeight, this.mDesiredHeightResId, this.mFlags, str, null);
        notificationCompat$BubbleMetadata.setFlags(this.mFlags);
        return notificationCompat$BubbleMetadata;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$BubbleMetadata$Builder setAutoExpandBubble(boolean z8) {
        setFlag(1, z8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$BubbleMetadata$Builder setDeleteIntent(@Nullable PendingIntent pendingIntent) {
        this.mDeleteIntent = pendingIntent;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$BubbleMetadata$Builder setDesiredHeight(@Dimension(unit = 0) int i9) {
        this.mDesiredHeight = Math.max(i9, 0);
        this.mDesiredHeightResId = 0;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$BubbleMetadata$Builder setDesiredHeightResId(@DimenRes int i9) {
        this.mDesiredHeightResId = i9;
        this.mDesiredHeight = 0;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$BubbleMetadata$Builder setIcon(@NonNull IconCompat iconCompat) {
        if (this.mShortcutId != null) {
            i.l("Created as a shortcut bubble, cannot set an Icon. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead.");
            return null;
        }
        if (iconCompat != null) {
            this.mIcon = iconCompat;
            return this;
        }
        n0.b.n("Bubbles require non-null icon");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$BubbleMetadata$Builder setIntent(@NonNull PendingIntent pendingIntent) {
        if (this.mShortcutId != null) {
            i.l("Created as a shortcut bubble, cannot set a PendingIntent. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead.");
            return null;
        }
        if (pendingIntent != null) {
            this.mPendingIntent = pendingIntent;
            return this;
        }
        n0.b.n("Bubble requires non-null pending intent");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$BubbleMetadata$Builder setSuppressNotification(boolean z8) {
        setFlag(2, z8);
        return this;
    }

    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
    public NotificationCompat$BubbleMetadata$Builder(@NonNull String str) {
        if (!TextUtils.isEmpty(str)) {
            this.mShortcutId = str;
        } else {
            n0.b.n("Bubble requires a non-null shortcut id");
            throw null;
        }
    }

    @Deprecated
    public NotificationCompat$BubbleMetadata$Builder() {
    }
}
