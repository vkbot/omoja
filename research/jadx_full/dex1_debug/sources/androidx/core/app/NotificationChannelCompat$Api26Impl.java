package androidx.core.app;

import android.app.NotificationChannel;
import android.media.AudioAttributes;
import android.net.Uri;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(26)
public class NotificationChannelCompat$Api26Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationChannelCompat$Api26Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean canBypassDnd(NotificationChannel notificationChannel) {
        return notificationChannel.canBypassDnd();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean canShowBadge(NotificationChannel notificationChannel) {
        return notificationChannel.canShowBadge();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static NotificationChannel createNotificationChannel(String str, CharSequence charSequence, int i9) {
        return new NotificationChannel(str, charSequence, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void enableLights(NotificationChannel notificationChannel, boolean z8) {
        notificationChannel.enableLights(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void enableVibration(NotificationChannel notificationChannel, boolean z8) {
        notificationChannel.enableVibration(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static AudioAttributes getAudioAttributes(NotificationChannel notificationChannel) {
        return notificationChannel.getAudioAttributes();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static String getDescription(NotificationChannel notificationChannel) {
        return notificationChannel.getDescription();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static String getGroup(NotificationChannel notificationChannel) {
        return notificationChannel.getGroup();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static String getId(NotificationChannel notificationChannel) {
        return notificationChannel.getId();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getImportance(NotificationChannel notificationChannel) {
        return notificationChannel.getImportance();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getLightColor(NotificationChannel notificationChannel) {
        return notificationChannel.getLightColor();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getLockscreenVisibility(NotificationChannel notificationChannel) {
        return notificationChannel.getLockscreenVisibility();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static CharSequence getName(NotificationChannel notificationChannel) {
        return notificationChannel.getName();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Uri getSound(NotificationChannel notificationChannel) {
        return notificationChannel.getSound();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static long[] getVibrationPattern(NotificationChannel notificationChannel) {
        return notificationChannel.getVibrationPattern();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setDescription(NotificationChannel notificationChannel, String str) {
        notificationChannel.setDescription(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setGroup(NotificationChannel notificationChannel, String str) {
        notificationChannel.setGroup(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setLightColor(NotificationChannel notificationChannel, int i9) {
        notificationChannel.setLightColor(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setShowBadge(NotificationChannel notificationChannel, boolean z8) {
        notificationChannel.setShowBadge(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setSound(NotificationChannel notificationChannel, Uri uri, AudioAttributes audioAttributes) {
        notificationChannel.setSound(uri, audioAttributes);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setVibrationPattern(NotificationChannel notificationChannel, long[] jArr) {
        notificationChannel.setVibrationPattern(jArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean shouldShowLights(NotificationChannel notificationChannel) {
        return notificationChannel.shouldShowLights();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean shouldVibrate(NotificationChannel notificationChannel) {
        return notificationChannel.shouldVibrate();
    }
}
