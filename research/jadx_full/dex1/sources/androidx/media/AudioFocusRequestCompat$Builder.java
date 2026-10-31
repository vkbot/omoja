package androidx.media;

import ai.onnxruntime.a;
import android.media.AudioManager$OnAudioFocusChangeListener;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import j1.i;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AudioFocusRequestCompat$Builder {
    private AudioAttributesCompat mAudioAttributesCompat;
    private Handler mFocusChangeHandler;
    private int mFocusGain;
    private AudioManager$OnAudioFocusChangeListener mOnAudioFocusChangeListener;
    private boolean mPauseOnDuck;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AudioFocusRequestCompat$Builder(@NonNull AudioFocusRequestCompat audioFocusRequestCompat) {
        this.mAudioAttributesCompat = AudioFocusRequestCompat.FOCUS_DEFAULT_ATTR;
        if (audioFocusRequestCompat == null) {
            i.k("AudioFocusRequestCompat to copy must not be null");
            throw null;
        }
        this.mFocusGain = audioFocusRequestCompat.getFocusGain();
        this.mOnAudioFocusChangeListener = audioFocusRequestCompat.getOnAudioFocusChangeListener();
        this.mFocusChangeHandler = audioFocusRequestCompat.getFocusChangeHandler();
        this.mAudioAttributesCompat = audioFocusRequestCompat.getAudioAttributesCompat();
        this.mPauseOnDuck = audioFocusRequestCompat.willPauseWhenDucked();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isValidFocusGain(int i9) {
        return i9 == 1 || i9 == 2 || i9 == 3 || i9 == 4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AudioFocusRequestCompat build() {
        if (this.mOnAudioFocusChangeListener != null) {
            return new AudioFocusRequestCompat(this.mFocusGain, this.mOnAudioFocusChangeListener, this.mFocusChangeHandler, this.mAudioAttributesCompat, this.mPauseOnDuck);
        }
        i.l("Can't build an AudioFocusRequestCompat instance without a listener");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public AudioFocusRequestCompat$Builder setAudioAttributes(@NonNull AudioAttributesCompat audioAttributesCompat) {
        if (audioAttributesCompat != null) {
            this.mAudioAttributesCompat = audioAttributesCompat;
            return this;
        }
        b.n("Illegal null AudioAttributes");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public AudioFocusRequestCompat$Builder setFocusGain(int i9) {
        if (isValidFocusGain(i9)) {
            this.mFocusGain = i9;
            return this;
        }
        i.k(a.e(i9, "Illegal audio focus gain type "));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public AudioFocusRequestCompat$Builder setOnAudioFocusChangeListener(@NonNull AudioManager$OnAudioFocusChangeListener audioManager$OnAudioFocusChangeListener, @NonNull Handler handler) {
        if (audioManager$OnAudioFocusChangeListener == null) {
            i.k("OnAudioFocusChangeListener must not be null");
            return null;
        }
        if (handler == null) {
            i.k("Handler must not be null");
            return null;
        }
        this.mOnAudioFocusChangeListener = audioManager$OnAudioFocusChangeListener;
        this.mFocusChangeHandler = handler;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public AudioFocusRequestCompat$Builder setWillPauseWhenDucked(boolean z8) {
        this.mPauseOnDuck = z8;
        return this;
    }

    @NonNull
    public AudioFocusRequestCompat$Builder setOnAudioFocusChangeListener(@NonNull AudioManager$OnAudioFocusChangeListener audioManager$OnAudioFocusChangeListener) {
        return setOnAudioFocusChangeListener(audioManager$OnAudioFocusChangeListener, new Handler(Looper.getMainLooper()));
    }

    public AudioFocusRequestCompat$Builder(int i9) {
        this.mAudioAttributesCompat = AudioFocusRequestCompat.FOCUS_DEFAULT_ATTR;
        setFocusGain(i9);
    }
}
