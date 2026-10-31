package androidx.media;

import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioFocusRequest$Builder;
import android.media.AudioManager$OnAudioFocusChangeListener;
import android.os.Handler;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(26)
public class AudioFocusRequestCompat$Api26Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AudioFocusRequestCompat$Api26Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static AudioFocusRequest createInstance(int i9, AudioAttributes audioAttributes, boolean z8, AudioManager$OnAudioFocusChangeListener audioManager$OnAudioFocusChangeListener, Handler handler) {
        return new AudioFocusRequest$Builder(i9).setAudioAttributes(audioAttributes).setWillPauseWhenDucked(z8).setOnAudioFocusChangeListener(audioManager$OnAudioFocusChangeListener, handler).build();
    }
}
