package androidx.media;

import android.media.AudioManager$OnAudioFocusChangeListener;
import android.os.Handler;
import android.os.Handler$Callback;
import android.os.Message;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat implements Handler$Callback, AudioManager$OnAudioFocusChangeListener {
    private static final int FOCUS_CHANGE = 2782386;
    private final Handler mHandler;
    private final AudioManager$OnAudioFocusChangeListener mListener;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat(@NonNull AudioManager$OnAudioFocusChangeListener audioManager$OnAudioFocusChangeListener, @NonNull Handler handler) {
        this.mListener = audioManager$OnAudioFocusChangeListener;
        this.mHandler = new Handler(handler.getLooper(), this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Handler$Callback
    public boolean handleMessage(Message message) {
        if (message.what != FOCUS_CHANGE) {
            return false;
        }
        this.mListener.onAudioFocusChange(message.arg1);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.media.AudioManager$OnAudioFocusChangeListener
    public void onAudioFocusChange(int i9) {
        Handler handler = this.mHandler;
        handler.sendMessage(Message.obtain(handler, FOCUS_CHANGE, i9, 0));
    }
}
