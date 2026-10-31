package androidx.media.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.widget.RemoteViews;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.app.NotificationBuilderWithBuilderAccessor;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationCompat$Style;
import androidx.media.R$id;
import androidx.media.R$integer;
import androidx.media.R$layout;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationCompat$MediaStyle extends NotificationCompat$Style {
    private static final int MAX_MEDIA_BUTTONS = 5;
    private static final int MAX_MEDIA_BUTTONS_IN_COMPACT = 3;
    PendingIntent mCancelButtonIntent;
    int mDeviceIcon;
    PendingIntent mDeviceIntent;
    CharSequence mDeviceName;
    boolean mShowCancelButton;
    MediaSessionCompat$Token mToken;
    int[] mActionsToShowInCompact = null;
    boolean mShowRemotePlaybackInfo = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationCompat$MediaStyle(NotificationCompat$Builder notificationCompat$Builder) {
        setBuilder(notificationCompat$Builder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private RemoteViews generateMediaActionButton(NotificationCompat$Action notificationCompat$Action) {
        boolean z8 = notificationCompat$Action.getActionIntent() == null;
        RemoteViews remoteViews = new RemoteViews(this.mBuilder.mContext.getPackageName(), R$layout.notification_media_action);
        remoteViews.setImageViewResource(R$id.action0, notificationCompat$Action.getIcon());
        if (!z8) {
            remoteViews.setOnClickPendingIntent(R$id.action0, notificationCompat$Action.getActionIntent());
        }
        NotificationCompat$Api15Impl.setContentDescription(remoteViews, R$id.action0, notificationCompat$Action.getTitle());
        return remoteViews;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static MediaSessionCompat$Token getMediaSession(Notification notification) {
        Parcelable parcelable;
        Bundle extras = androidx.core.app.NotificationCompat.getExtras(notification);
        if (extras == null || (parcelable = extras.getParcelable(androidx.core.app.NotificationCompat.EXTRA_MEDIA_SESSION)) == null) {
            return null;
        }
        return MediaSessionCompat$Token.q(parcelable, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        if (Build$VERSION.SDK_INT >= 34) {
            NotificationCompat$Api21Impl.setMediaStyle(notificationBuilderWithBuilderAccessor.getBuilder(), NotificationCompat$Api21Impl.fillInMediaStyle(NotificationCompat$Api34Impl.setRemotePlaybackInfo(NotificationCompat$Api21Impl.createMediaStyle(), this.mDeviceName, this.mDeviceIcon, this.mDeviceIntent, Boolean.valueOf(this.mShowRemotePlaybackInfo)), this.mActionsToShowInCompact, this.mToken));
        } else {
            NotificationCompat$Api21Impl.setMediaStyle(notificationBuilderWithBuilderAccessor.getBuilder(), NotificationCompat$Api21Impl.fillInMediaStyle(NotificationCompat$Api21Impl.createMediaStyle(), this.mActionsToShowInCompact, this.mToken));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RemoteViews generateBigContentView() {
        int iMin = Math.min(this.mBuilder.mActions.size(), 5);
        RemoteViews remoteViewsApplyStandardTemplate = applyStandardTemplate(false, getBigContentViewLayoutResource(iMin), false);
        remoteViewsApplyStandardTemplate.removeAllViews(R$id.media_actions);
        if (iMin > 0) {
            for (int i9 = 0; i9 < iMin; i9++) {
                remoteViewsApplyStandardTemplate.addView(R$id.media_actions, generateMediaActionButton(this.mBuilder.mActions.get(i9)));
            }
        }
        if (!this.mShowCancelButton) {
            remoteViewsApplyStandardTemplate.setViewVisibility(R$id.cancel_action, 8);
            return remoteViewsApplyStandardTemplate;
        }
        remoteViewsApplyStandardTemplate.setViewVisibility(R$id.cancel_action, 0);
        remoteViewsApplyStandardTemplate.setInt(R$id.cancel_action, "setAlpha", this.mBuilder.mContext.getResources().getInteger(R$integer.cancel_button_image_alpha));
        remoteViewsApplyStandardTemplate.setOnClickPendingIntent(R$id.cancel_action, this.mCancelButtonIntent);
        return remoteViewsApplyStandardTemplate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RemoteViews generateContentView() {
        RemoteViews remoteViewsApplyStandardTemplate = applyStandardTemplate(false, getContentViewLayoutResource(), true);
        int size = this.mBuilder.mActions.size();
        int[] iArr = this.mActionsToShowInCompact;
        int iMin = iArr == null ? 0 : Math.min(iArr.length, 3);
        remoteViewsApplyStandardTemplate.removeAllViews(R$id.media_actions);
        if (iMin > 0) {
            for (int i9 = 0; i9 < iMin; i9++) {
                if (i9 >= size) {
                    b.v("setShowActionsInCompactView: action %d out of bounds (max %d)", new Object[]{Integer.valueOf(i9), Integer.valueOf(size - 1)});
                    return null;
                }
                remoteViewsApplyStandardTemplate.addView(R$id.media_actions, generateMediaActionButton(this.mBuilder.mActions.get(this.mActionsToShowInCompact[i9])));
            }
        }
        if (!this.mShowCancelButton) {
            remoteViewsApplyStandardTemplate.setViewVisibility(R$id.end_padder, 0);
            remoteViewsApplyStandardTemplate.setViewVisibility(R$id.cancel_action, 8);
            return remoteViewsApplyStandardTemplate;
        }
        remoteViewsApplyStandardTemplate.setViewVisibility(R$id.end_padder, 8);
        remoteViewsApplyStandardTemplate.setViewVisibility(R$id.cancel_action, 0);
        remoteViewsApplyStandardTemplate.setOnClickPendingIntent(R$id.cancel_action, this.mCancelButtonIntent);
        remoteViewsApplyStandardTemplate.setInt(R$id.cancel_action, "setAlpha", this.mBuilder.mContext.getResources().getInteger(R$integer.cancel_button_image_alpha));
        return remoteViewsApplyStandardTemplate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBigContentViewLayoutResource(int i9) {
        return i9 <= 3 ? R$layout.notification_template_big_media_narrow : R$layout.notification_template_big_media;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getContentViewLayoutResource() {
        return R$layout.notification_template_media;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationCompat$MediaStyle setCancelButtonIntent(PendingIntent pendingIntent) {
        this.mCancelButtonIntent = pendingIntent;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationCompat$MediaStyle setMediaSession(MediaSessionCompat$Token mediaSessionCompat$Token) {
        this.mToken = mediaSessionCompat$Token;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresPermission("android.permission.MEDIA_CONTENT_CONTROL")
    public NotificationCompat$MediaStyle setRemotePlaybackInfo(@NonNull CharSequence charSequence, @DrawableRes int i9, @Nullable PendingIntent pendingIntent) {
        this.mDeviceName = charSequence;
        this.mDeviceIcon = i9;
        this.mDeviceIntent = pendingIntent;
        this.mShowRemotePlaybackInfo = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationCompat$MediaStyle setShowActionsInCompactView(int... iArr) {
        this.mActionsToShowInCompact = iArr;
        return this;
    }

    public NotificationCompat$MediaStyle() {
    }

    public NotificationCompat$MediaStyle setShowCancelButton(boolean z8) {
        return this;
    }
}
