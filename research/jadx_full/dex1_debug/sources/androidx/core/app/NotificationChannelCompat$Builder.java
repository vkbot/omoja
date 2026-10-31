package androidx.core.app;

import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build$VERSION;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationChannelCompat$Builder {
    private final NotificationChannelCompat mChannel;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationChannelCompat$Builder(@NonNull String str, int i9) {
        this.mChannel = new NotificationChannelCompat(str, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationChannelCompat build() {
        return this.mChannel;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationChannelCompat$Builder setConversationId(@NonNull String str, @NonNull String str2) {
        if (Build$VERSION.SDK_INT >= 30) {
            NotificationChannelCompat notificationChannelCompat = this.mChannel;
            notificationChannelCompat.mParentId = str;
            notificationChannelCompat.mConversationId = str2;
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationChannelCompat$Builder setDescription(@Nullable String str) {
        this.mChannel.mDescription = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationChannelCompat$Builder setGroup(@Nullable String str) {
        this.mChannel.mGroupId = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationChannelCompat$Builder setImportance(int i9) {
        this.mChannel.mImportance = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationChannelCompat$Builder setLightColor(int i9) {
        this.mChannel.mLightColor = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationChannelCompat$Builder setLightsEnabled(boolean z8) {
        this.mChannel.mLights = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationChannelCompat$Builder setName(@Nullable CharSequence charSequence) {
        this.mChannel.mName = charSequence;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationChannelCompat$Builder setShowBadge(boolean z8) {
        this.mChannel.mShowBadge = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationChannelCompat$Builder setSound(@Nullable Uri uri, @Nullable AudioAttributes audioAttributes) {
        NotificationChannelCompat notificationChannelCompat = this.mChannel;
        notificationChannelCompat.mSound = uri;
        notificationChannelCompat.mAudioAttributes = audioAttributes;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationChannelCompat$Builder setVibrationEnabled(boolean z8) {
        this.mChannel.mVibrationEnabled = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationChannelCompat$Builder setVibrationPattern(@Nullable long[] jArr) {
        NotificationChannelCompat notificationChannelCompat = this.mChannel;
        notificationChannelCompat.mVibrationEnabled = jArr != null && jArr.length > 0;
        notificationChannelCompat.mVibrationPattern = jArr;
        return this;
    }
}
