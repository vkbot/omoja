package androidx.media.app;

import android.os.Build$VERSION;
import android.widget.RemoteViews;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.app.NotificationBuilderWithBuilderAccessor;
import androidx.core.app.NotificationCompat$Builder;
import androidx.media.R$color;
import androidx.media.R$id;
import androidx.media.R$layout;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationCompat$DecoratedMediaCustomViewStyle extends NotificationCompat$MediaStyle {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setBackgroundColor(RemoteViews remoteViews) {
        int color = this.mBuilder.getColor();
        NotificationCompat$Builder notificationCompat$Builder = this.mBuilder;
        remoteViews.setInt(R$id.status_bar_latest_event_content, "setBackgroundColor", color != 0 ? notificationCompat$Builder.getColor() : notificationCompat$Builder.mContext.getResources().getColor(R$color.notification_material_background_media_default_color));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.app.NotificationCompat$MediaStyle, androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        if (Build$VERSION.SDK_INT >= 34) {
            NotificationCompat$Api21Impl.setMediaStyle(notificationBuilderWithBuilderAccessor.getBuilder(), NotificationCompat$Api21Impl.fillInMediaStyle(NotificationCompat$Api34Impl.setRemotePlaybackInfo(NotificationCompat$Api24Impl.createDecoratedMediaCustomViewStyle(), this.mDeviceName, this.mDeviceIcon, this.mDeviceIntent, Boolean.valueOf(this.mShowRemotePlaybackInfo)), this.mActionsToShowInCompact, this.mToken));
        } else {
            NotificationCompat$Api21Impl.setMediaStyle(notificationBuilderWithBuilderAccessor.getBuilder(), NotificationCompat$Api21Impl.fillInMediaStyle(NotificationCompat$Api24Impl.createDecoratedMediaCustomViewStyle(), this.mActionsToShowInCompact, this.mToken));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.app.NotificationCompat$MediaStyle
    public int getBigContentViewLayoutResource(int i9) {
        return i9 <= 3 ? R$layout.notification_template_big_media_narrow_custom : R$layout.notification_template_big_media_custom;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.app.NotificationCompat$MediaStyle
    public int getContentViewLayoutResource() {
        return this.mBuilder.getContentView() != null ? R$layout.notification_template_media_custom : super.getContentViewLayoutResource();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.app.NotificationCompat$MediaStyle, androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.app.NotificationCompat$MediaStyle, androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        return null;
    }
}
