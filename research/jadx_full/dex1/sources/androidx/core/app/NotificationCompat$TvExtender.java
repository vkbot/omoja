package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.os.Build$VERSION;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class NotificationCompat$TvExtender implements NotificationCompat$Extender {
    static final String EXTRA_CHANNEL_ID = "channel_id";
    static final String EXTRA_CONTENT_INTENT = "content_intent";
    static final String EXTRA_DELETE_INTENT = "delete_intent";

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    private static final String EXTRA_FLAGS = "flags";
    static final String EXTRA_SUPPRESS_SHOW_OVER_APPS = "suppressShowOverApps";

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    static final String EXTRA_TV_EXTENDER = "android.tv.EXTENSIONS";
    private static final int FLAG_AVAILABLE_ON_TV = 1;
    private static final String TAG = "TvExtender";
    private String mChannelId;
    private PendingIntent mContentIntent;
    private PendingIntent mDeleteIntent;
    private int mFlags;
    private boolean mSuppressShowOverApps;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationCompat$TvExtender(@NonNull Notification notification) {
        if (Build$VERSION.SDK_INT < 26) {
            return;
        }
        Bundle bundle = notification.extras;
        Bundle bundle2 = bundle == null ? null : bundle.getBundle(EXTRA_TV_EXTENDER);
        if (bundle2 != null) {
            this.mFlags = bundle2.getInt(EXTRA_FLAGS);
            this.mChannelId = bundle2.getString(EXTRA_CHANNEL_ID);
            this.mSuppressShowOverApps = bundle2.getBoolean(EXTRA_SUPPRESS_SHOW_OVER_APPS);
            this.mContentIntent = (PendingIntent) bundle2.getParcelable(EXTRA_CONTENT_INTENT);
            this.mDeleteIntent = (PendingIntent) bundle2.getParcelable(EXTRA_DELETE_INTENT);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Extender
    @NonNull
    public NotificationCompat$Builder extend(@NonNull NotificationCompat$Builder notificationCompat$Builder) {
        if (Build$VERSION.SDK_INT < 26) {
            return notificationCompat$Builder;
        }
        Bundle bundle = new Bundle();
        bundle.putInt(EXTRA_FLAGS, this.mFlags);
        bundle.putString(EXTRA_CHANNEL_ID, this.mChannelId);
        bundle.putBoolean(EXTRA_SUPPRESS_SHOW_OVER_APPS, this.mSuppressShowOverApps);
        PendingIntent pendingIntent = this.mContentIntent;
        if (pendingIntent != null) {
            bundle.putParcelable(EXTRA_CONTENT_INTENT, pendingIntent);
        }
        PendingIntent pendingIntent2 = this.mDeleteIntent;
        if (pendingIntent2 != null) {
            bundle.putParcelable(EXTRA_DELETE_INTENT, pendingIntent2);
        }
        notificationCompat$Builder.getExtras().putBundle(EXTRA_TV_EXTENDER, bundle);
        return notificationCompat$Builder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getChannelId() {
        return this.mChannelId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public PendingIntent getContentIntent() {
        return this.mContentIntent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public PendingIntent getDeleteIntent() {
        return this.mDeleteIntent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isAvailableOnTv() {
        return (this.mFlags & 1) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isSuppressShowOverApps() {
        return this.mSuppressShowOverApps;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$TvExtender setChannelId(@Nullable String str) {
        this.mChannelId = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$TvExtender setContentIntent(@Nullable PendingIntent pendingIntent) {
        this.mContentIntent = pendingIntent;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$TvExtender setDeleteIntent(@Nullable PendingIntent pendingIntent) {
        this.mDeleteIntent = pendingIntent;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$TvExtender setSuppressShowOverApps(boolean z8) {
        this.mSuppressShowOverApps = z8;
        return this;
    }

    public NotificationCompat$TvExtender() {
        this.mFlags = 1;
    }
}
