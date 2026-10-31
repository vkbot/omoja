package p043d6;

import android.media.MediaPlayer;

/* JADX INFO: renamed from: d6.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1303b implements MediaPlayer.OnCompletionListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f3110a;

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        switch (this.f3110a) {
            case 0:
                mediaPlayer.stop();
                mediaPlayer.reset();
                mediaPlayer.release();
                break;
            default:
                mediaPlayer.release();
                break;
        }
    }
}
