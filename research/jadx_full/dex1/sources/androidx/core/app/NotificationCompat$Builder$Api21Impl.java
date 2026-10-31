package androidx.core.app;

import android.media.AudioAttributes;
import android.media.AudioAttributes$Builder;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(21)
public class NotificationCompat$Builder$Api21Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$Builder$Api21Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static AudioAttributes build(AudioAttributes$Builder audioAttributes$Builder) {
        return audioAttributes$Builder.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static AudioAttributes$Builder createBuilder() {
        return new AudioAttributes$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static AudioAttributes$Builder setContentType(AudioAttributes$Builder audioAttributes$Builder, int i9) {
        return audioAttributes$Builder.setContentType(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static AudioAttributes$Builder setLegacyStreamType(AudioAttributes$Builder audioAttributes$Builder, int i9) {
        return audioAttributes$Builder.setLegacyStreamType(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static AudioAttributes$Builder setUsage(AudioAttributes$Builder audioAttributes$Builder, int i9) {
        return audioAttributes$Builder.setUsage(i9);
    }
}
