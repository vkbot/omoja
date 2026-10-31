package d6;

import android.media.MediaPlayer;
import android.media.MediaPlayer$OnErrorListener;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements MediaPlayer$OnErrorListener {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.media.MediaPlayer$OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i9, int i10) {
        Log.w("d", "Failed to beep " + i9 + ", " + i10);
        mediaPlayer.stop();
        mediaPlayer.reset();
        mediaPlayer.release();
        return true;
    }
}
