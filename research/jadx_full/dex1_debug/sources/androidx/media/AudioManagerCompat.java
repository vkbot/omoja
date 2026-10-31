package androidx.media;

import android.media.AudioManager;
import android.os.Build$VERSION;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import j1.i;
import kotlin.ULong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AudioManagerCompat {
    public static final int AUDIOFOCUS_GAIN = 1;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT = 2;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE = 4;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK = 3;
    private static final String TAG = "AudioManCompat";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AudioManagerCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int abandonAudioFocusRequest(@NonNull AudioManager audioManager, @NonNull AudioFocusRequestCompat audioFocusRequestCompat) {
        if (audioManager == null) {
            i.k("AudioManager must not be null");
            return 0;
        }
        if (audioFocusRequestCompat != null) {
            return Build$VERSION.SDK_INT >= 26 ? AudioManagerCompat$Api26Impl.abandonAudioFocusRequest(audioManager, audioFocusRequestCompat.getAudioFocusRequest()) : audioManager.abandonAudioFocus(audioFocusRequestCompat.getOnAudioFocusChangeListener());
        }
        i.k("AudioFocusRequestCompat must not be null");
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IntRange(from = ULong.MIN_VALUE)
    public static int getStreamMaxVolume(@NonNull AudioManager audioManager, int i9) {
        return audioManager.getStreamMaxVolume(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IntRange(from = ULong.MIN_VALUE)
    public static int getStreamMinVolume(@NonNull AudioManager audioManager, int i9) {
        if (Build$VERSION.SDK_INT >= 28) {
            return AudioManagerCompat$Api28Impl.getStreamMinVolume(audioManager, i9);
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isVolumeFixed(@NonNull AudioManager audioManager) {
        return AudioManagerCompat$Api21Impl.isVolumeFixed(audioManager);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int requestAudioFocus(@NonNull AudioManager audioManager, @NonNull AudioFocusRequestCompat audioFocusRequestCompat) {
        if (audioManager == null) {
            i.k("AudioManager must not be null");
            return 0;
        }
        if (audioFocusRequestCompat != null) {
            return Build$VERSION.SDK_INT >= 26 ? AudioManagerCompat$Api26Impl.requestAudioFocus(audioManager, audioFocusRequestCompat.getAudioFocusRequest()) : audioManager.requestAudioFocus(audioFocusRequestCompat.getOnAudioFocusChangeListener(), audioFocusRequestCompat.getAudioAttributesCompat().getLegacyStreamType(), audioFocusRequestCompat.getFocusGain());
        }
        i.k("AudioFocusRequestCompat must not be null");
        return 0;
    }
}
