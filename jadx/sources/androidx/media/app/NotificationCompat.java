package androidx.media.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.media.session.MediaSession;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.widget.RemoteViews;
import androidx.annotation.DoNotInline;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationBuilderWithBuilderAccessor;
import androidx.media.C0634R;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class NotificationCompat {

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @RequiresApi(15)
    public static class Api15Impl {
        private Api15Impl() {
        }

        @DoNotInline
        public static void setContentDescription(RemoteViews remoteViews, int i10, CharSequence charSequence) {
            remoteViews.setContentDescription(i10, charSequence);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @RequiresApi(21)
    public static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        public static Notification.MediaStyle createMediaStyle() {
            return new Notification.MediaStyle();
        }

        @DoNotInline
        public static Notification.MediaStyle fillInMediaStyle(Notification.MediaStyle mediaStyle, int[] iArr, MediaSessionCompat$Token mediaSessionCompat$Token) {
            if (iArr != null) {
                setShowActionsInCompactView(mediaStyle, iArr);
            }
            if (mediaSessionCompat$Token != null) {
                setMediaSession(mediaStyle, (MediaSession.Token) mediaSessionCompat$Token.f200c);
            }
            return mediaStyle;
        }

        @DoNotInline
        public static void setMediaSession(Notification.MediaStyle mediaStyle, MediaSession.Token token) {
            mediaStyle.setMediaSession(token);
        }

        @DoNotInline
        public static void setMediaStyle(Notification.Builder builder, Notification.MediaStyle mediaStyle) {
            builder.setStyle(mediaStyle);
        }

        @DoNotInline
        public static void setShowActionsInCompactView(Notification.MediaStyle mediaStyle, int... iArr) {
            mediaStyle.setShowActionsInCompactView(iArr);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @RequiresApi(24)
    public static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        public static Notification.MediaStyle createDecoratedMediaCustomViewStyle() {
            return new Notification.DecoratedMediaCustomViewStyle();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @RequiresApi(34)
    public static class Api34Impl {
        private Api34Impl() {
        }

        @DoNotInline
        public static Notification.MediaStyle setRemotePlaybackInfo(Notification.MediaStyle mediaStyle, @NonNull CharSequence charSequence, @DrawableRes int i10, @Nullable PendingIntent pendingIntent, Boolean bool) {
            if (bool.booleanValue()) {
                mediaStyle.setRemotePlaybackInfo(charSequence, i10, pendingIntent);
            }
            return mediaStyle;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class DecoratedMediaCustomViewStyle extends MediaStyle {
        private void setBackgroundColor(RemoteViews remoteViews) {
            int color = this.mBuilder.getColor();
            androidx.core.app.NotificationCompat.Builder builder = this.mBuilder;
            remoteViews.setInt(C0634R.id.status_bar_latest_event_content, "setBackgroundColor", color != 0 ? builder.getColor() : builder.mContext.getResources().getColor(C0634R.color.notification_material_background_media_default_color));
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 34) {
                Api21Impl.setMediaStyle(notificationBuilderWithBuilderAccessor.getBuilder(), Api21Impl.fillInMediaStyle(Api34Impl.setRemotePlaybackInfo(Api24Impl.createDecoratedMediaCustomViewStyle(), this.mDeviceName, this.mDeviceIcon, this.mDeviceIntent, Boolean.valueOf(this.mShowRemotePlaybackInfo)), this.mActionsToShowInCompact, this.mToken));
            } else {
                Api21Impl.setMediaStyle(notificationBuilderWithBuilderAccessor.getBuilder(), Api21Impl.fillInMediaStyle(Api24Impl.createDecoratedMediaCustomViewStyle(), this.mActionsToShowInCompact, this.mToken));
            }
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle
        public int getBigContentViewLayoutResource(int i10) {
            return i10 <= 3 ? C0634R.layout.notification_template_big_media_narrow_custom : C0634R.layout.notification_template_big_media_custom;
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle
        public int getContentViewLayoutResource() {
            return this.mBuilder.getContentView() != null ? C0634R.layout.notification_template_media_custom : super.getContentViewLayoutResource();
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }
    }

    private NotificationCompat() {
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class MediaStyle extends androidx.core.app.NotificationCompat.Style {
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

        public MediaStyle(androidx.core.app.NotificationCompat.Builder builder) {
            setBuilder(builder);
        }

        private RemoteViews generateMediaActionButton(androidx.core.app.NotificationCompat.Action action) {
            boolean z9 = action.getActionIntent() == null;
            RemoteViews remoteViews = new RemoteViews(this.mBuilder.mContext.getPackageName(), C0634R.layout.notification_media_action);
            remoteViews.setImageViewResource(C0634R.id.action0, action.getIcon());
            if (!z9) {
                remoteViews.setOnClickPendingIntent(C0634R.id.action0, action.getActionIntent());
            }
            Api15Impl.setContentDescription(remoteViews, C0634R.id.action0, action.getTitle());
            return remoteViews;
        }

        public static MediaSessionCompat$Token getMediaSession(Notification notification) {
            Parcelable parcelable;
            Bundle extras = androidx.core.app.NotificationCompat.getExtras(notification);
            if (extras == null || (parcelable = extras.getParcelable(androidx.core.app.NotificationCompat.EXTRA_MEDIA_SESSION)) == null) {
                return null;
            }
            return MediaSessionCompat$Token.m274q(parcelable, null);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 34) {
                Api21Impl.setMediaStyle(notificationBuilderWithBuilderAccessor.getBuilder(), Api21Impl.fillInMediaStyle(Api34Impl.setRemotePlaybackInfo(Api21Impl.createMediaStyle(), this.mDeviceName, this.mDeviceIcon, this.mDeviceIntent, Boolean.valueOf(this.mShowRemotePlaybackInfo)), this.mActionsToShowInCompact, this.mToken));
            } else {
                Api21Impl.setMediaStyle(notificationBuilderWithBuilderAccessor.getBuilder(), Api21Impl.fillInMediaStyle(Api21Impl.createMediaStyle(), this.mActionsToShowInCompact, this.mToken));
            }
        }

        public RemoteViews generateBigContentView() {
            int iMin = Math.min(this.mBuilder.mActions.size(), 5);
            RemoteViews remoteViewsApplyStandardTemplate = applyStandardTemplate(false, getBigContentViewLayoutResource(iMin), false);
            remoteViewsApplyStandardTemplate.removeAllViews(C0634R.id.media_actions);
            if (iMin > 0) {
                for (int i10 = 0; i10 < iMin; i10++) {
                    remoteViewsApplyStandardTemplate.addView(C0634R.id.media_actions, generateMediaActionButton(this.mBuilder.mActions.get(i10)));
                }
            }
            if (!this.mShowCancelButton) {
                remoteViewsApplyStandardTemplate.setViewVisibility(C0634R.id.cancel_action, 8);
                return remoteViewsApplyStandardTemplate;
            }
            remoteViewsApplyStandardTemplate.setViewVisibility(C0634R.id.cancel_action, 0);
            remoteViewsApplyStandardTemplate.setInt(C0634R.id.cancel_action, "setAlpha", this.mBuilder.mContext.getResources().getInteger(C0634R.integer.cancel_button_image_alpha));
            remoteViewsApplyStandardTemplate.setOnClickPendingIntent(C0634R.id.cancel_action, this.mCancelButtonIntent);
            return remoteViewsApplyStandardTemplate;
        }

        public RemoteViews generateContentView() {
            RemoteViews remoteViewsApplyStandardTemplate = applyStandardTemplate(false, getContentViewLayoutResource(), true);
            int size = this.mBuilder.mActions.size();
            int[] iArr = this.mActionsToShowInCompact;
            int iMin = iArr == null ? 0 : Math.min(iArr.length, 3);
            remoteViewsApplyStandardTemplate.removeAllViews(C0634R.id.media_actions);
            if (iMin > 0) {
                for (int i10 = 0; i10 < iMin; i10++) {
                    if (i10 >= size) {
                        C2467b.m3832v("setShowActionsInCompactView: action %d out of bounds (max %d)", new Object[]{Integer.valueOf(i10), Integer.valueOf(size - 1)});
                        return null;
                    }
                    remoteViewsApplyStandardTemplate.addView(C0634R.id.media_actions, generateMediaActionButton(this.mBuilder.mActions.get(this.mActionsToShowInCompact[i10])));
                }
            }
            if (!this.mShowCancelButton) {
                remoteViewsApplyStandardTemplate.setViewVisibility(C0634R.id.end_padder, 0);
                remoteViewsApplyStandardTemplate.setViewVisibility(C0634R.id.cancel_action, 8);
                return remoteViewsApplyStandardTemplate;
            }
            remoteViewsApplyStandardTemplate.setViewVisibility(C0634R.id.end_padder, 8);
            remoteViewsApplyStandardTemplate.setViewVisibility(C0634R.id.cancel_action, 0);
            remoteViewsApplyStandardTemplate.setOnClickPendingIntent(C0634R.id.cancel_action, this.mCancelButtonIntent);
            remoteViewsApplyStandardTemplate.setInt(C0634R.id.cancel_action, "setAlpha", this.mBuilder.mContext.getResources().getInteger(C0634R.integer.cancel_button_image_alpha));
            return remoteViewsApplyStandardTemplate;
        }

        public int getBigContentViewLayoutResource(int i10) {
            return i10 <= 3 ? C0634R.layout.notification_template_big_media_narrow : C0634R.layout.notification_template_big_media;
        }

        public int getContentViewLayoutResource() {
            return C0634R.layout.notification_template_media;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        public MediaStyle setCancelButtonIntent(PendingIntent pendingIntent) {
            this.mCancelButtonIntent = pendingIntent;
            return this;
        }

        public MediaStyle setMediaSession(MediaSessionCompat$Token mediaSessionCompat$Token) {
            this.mToken = mediaSessionCompat$Token;
            return this;
        }

        @NonNull
        @RequiresPermission("android.permission.MEDIA_CONTENT_CONTROL")
        public MediaStyle setRemotePlaybackInfo(@NonNull CharSequence charSequence, @DrawableRes int i10, @Nullable PendingIntent pendingIntent) {
            this.mDeviceName = charSequence;
            this.mDeviceIcon = i10;
            this.mDeviceIntent = pendingIntent;
            this.mShowRemotePlaybackInfo = true;
            return this;
        }

        public MediaStyle setShowActionsInCompactView(int... iArr) {
            this.mActionsToShowInCompact = iArr;
            return this;
        }

        public MediaStyle() {
        }

        public MediaStyle setShowCancelButton(boolean z9) {
            return this;
        }
    }
}
