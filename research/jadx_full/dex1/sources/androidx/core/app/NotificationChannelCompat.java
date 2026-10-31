package androidx.core.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build$VERSION;
import android.provider.Settings$System;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationChannelCompat {
    public static final String DEFAULT_CHANNEL_ID = "miscellaneous";
    private static final int DEFAULT_LIGHT_COLOR = 0;
    private static final boolean DEFAULT_SHOW_BADGE = true;
    AudioAttributes mAudioAttributes;
    private boolean mBypassDnd;
    private boolean mCanBubble;
    String mConversationId;
    String mDescription;
    String mGroupId;

    @NonNull
    final String mId;
    int mImportance;
    private boolean mImportantConversation;
    int mLightColor;
    boolean mLights;
    private int mLockscreenVisibility;
    CharSequence mName;
    String mParentId;
    boolean mShowBadge;
    Uri mSound;
    boolean mVibrationEnabled;
    long[] mVibrationPattern;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(26)
    public NotificationChannelCompat(@NonNull NotificationChannel notificationChannel) {
        this(NotificationChannelCompat$Api26Impl.getId(notificationChannel), NotificationChannelCompat$Api26Impl.getImportance(notificationChannel));
        this.mName = NotificationChannelCompat$Api26Impl.getName(notificationChannel);
        this.mDescription = NotificationChannelCompat$Api26Impl.getDescription(notificationChannel);
        this.mGroupId = NotificationChannelCompat$Api26Impl.getGroup(notificationChannel);
        this.mShowBadge = NotificationChannelCompat$Api26Impl.canShowBadge(notificationChannel);
        this.mSound = NotificationChannelCompat$Api26Impl.getSound(notificationChannel);
        this.mAudioAttributes = NotificationChannelCompat$Api26Impl.getAudioAttributes(notificationChannel);
        this.mLights = NotificationChannelCompat$Api26Impl.shouldShowLights(notificationChannel);
        this.mLightColor = NotificationChannelCompat$Api26Impl.getLightColor(notificationChannel);
        this.mVibrationEnabled = NotificationChannelCompat$Api26Impl.shouldVibrate(notificationChannel);
        this.mVibrationPattern = NotificationChannelCompat$Api26Impl.getVibrationPattern(notificationChannel);
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 30) {
            this.mParentId = NotificationChannelCompat$Api30Impl.getParentChannelId(notificationChannel);
            this.mConversationId = NotificationChannelCompat$Api30Impl.getConversationId(notificationChannel);
        }
        this.mBypassDnd = NotificationChannelCompat$Api26Impl.canBypassDnd(notificationChannel);
        this.mLockscreenVisibility = NotificationChannelCompat$Api26Impl.getLockscreenVisibility(notificationChannel);
        if (i9 >= 29) {
            this.mCanBubble = NotificationChannelCompat$Api29Impl.canBubble(notificationChannel);
        }
        if (i9 >= 30) {
            this.mImportantConversation = NotificationChannelCompat$Api30Impl.isImportantConversation(notificationChannel);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean canBubble() {
        return this.mCanBubble;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean canBypassDnd() {
        return this.mBypassDnd;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean canShowBadge() {
        return this.mShowBadge;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public AudioAttributes getAudioAttributes() {
        return this.mAudioAttributes;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getConversationId() {
        return this.mConversationId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getDescription() {
        return this.mDescription;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getGroup() {
        return this.mGroupId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public String getId() {
        return this.mId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getImportance() {
        return this.mImportance;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLightColor() {
        return this.mLightColor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLockscreenVisibility() {
        return this.mLockscreenVisibility;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getName() {
        return this.mName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationChannel getNotificationChannel() {
        String str;
        String str2;
        int i9 = Build$VERSION.SDK_INT;
        if (i9 < 26) {
            return null;
        }
        NotificationChannel notificationChannelCreateNotificationChannel = NotificationChannelCompat$Api26Impl.createNotificationChannel(this.mId, this.mName, this.mImportance);
        NotificationChannelCompat$Api26Impl.setDescription(notificationChannelCreateNotificationChannel, this.mDescription);
        NotificationChannelCompat$Api26Impl.setGroup(notificationChannelCreateNotificationChannel, this.mGroupId);
        NotificationChannelCompat$Api26Impl.setShowBadge(notificationChannelCreateNotificationChannel, this.mShowBadge);
        NotificationChannelCompat$Api26Impl.setSound(notificationChannelCreateNotificationChannel, this.mSound, this.mAudioAttributes);
        NotificationChannelCompat$Api26Impl.enableLights(notificationChannelCreateNotificationChannel, this.mLights);
        NotificationChannelCompat$Api26Impl.setLightColor(notificationChannelCreateNotificationChannel, this.mLightColor);
        NotificationChannelCompat$Api26Impl.setVibrationPattern(notificationChannelCreateNotificationChannel, this.mVibrationPattern);
        NotificationChannelCompat$Api26Impl.enableVibration(notificationChannelCreateNotificationChannel, this.mVibrationEnabled);
        if (i9 >= 30 && (str = this.mParentId) != null && (str2 = this.mConversationId) != null) {
            NotificationChannelCompat$Api30Impl.setConversationId(notificationChannelCreateNotificationChannel, str, str2);
        }
        return notificationChannelCreateNotificationChannel;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getParentChannelId() {
        return this.mParentId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Uri getSound() {
        return this.mSound;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public long[] getVibrationPattern() {
        return this.mVibrationPattern;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isImportantConversation() {
        return this.mImportantConversation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean shouldShowLights() {
        return this.mLights;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean shouldVibrate() {
        return this.mVibrationEnabled;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationChannelCompat$Builder toBuilder() {
        return new NotificationChannelCompat$Builder(this.mId, this.mImportance).setName(this.mName).setDescription(this.mDescription).setGroup(this.mGroupId).setShowBadge(this.mShowBadge).setSound(this.mSound, this.mAudioAttributes).setLightsEnabled(this.mLights).setLightColor(this.mLightColor).setVibrationEnabled(this.mVibrationEnabled).setVibrationPattern(this.mVibrationPattern).setConversationId(this.mParentId, this.mConversationId);
    }

    public NotificationChannelCompat(@NonNull String str, int i9) {
        this.mShowBadge = true;
        this.mSound = Settings$System.DEFAULT_NOTIFICATION_URI;
        this.mLightColor = 0;
        this.mId = (String) Preconditions.checkNotNull(str);
        this.mImportance = i9;
        this.mAudioAttributes = Notification.AUDIO_ATTRIBUTES_DEFAULT;
    }
}
