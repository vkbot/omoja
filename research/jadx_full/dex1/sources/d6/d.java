package d6;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.AudioAttributes$Builder;
import android.media.MediaPlayer;
import android.os.Handler;
import android.util.Log;
import j.d0;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1780a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f1781b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(q6.h hVar, boolean z8) {
        this.f1780a = z8;
        this.f1781b = hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void a() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        mediaPlayer.setAudioAttributes(new AudioAttributes$Builder().setContentType(2).build());
        mediaPlayer.setOnCompletionListener(new b(0));
        mediaPlayer.setOnErrorListener(new c());
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = ((Context) this.f1781b).getResources().openRawResourceFd(2131886098);
            try {
                mediaPlayer.setDataSource(assetFileDescriptorOpenRawResourceFd.getFileDescriptor(), assetFileDescriptorOpenRawResourceFd.getStartOffset(), assetFileDescriptorOpenRawResourceFd.getLength());
                assetFileDescriptorOpenRawResourceFd.close();
                mediaPlayer.setVolume(0.1f, 0.1f);
                mediaPlayer.prepare();
                mediaPlayer.start();
            } catch (Throwable th) {
                assetFileDescriptorOpenRawResourceFd.close();
                throw th;
            }
        } catch (IOException e) {
            Log.w("d", e);
            mediaPlayer.reset();
            mediaPlayer.release();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized void b(d0 d0Var, boolean z8) {
        try {
            if (this.f1780a || z8) {
                ((Handler) this.f1781b).obtainMessage(1, d0Var).sendToTarget();
            } else {
                this.f1780a = true;
                d0Var.recycle();
                this.f1780a = false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
