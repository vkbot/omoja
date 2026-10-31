package p043d6;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.os.Handler;
import android.util.Log;
import com.example.navistart.R;
import java.io.IOException;
import p097j.InterfaceC1889d0;
import p178q6.C3070h;

/* JADX INFO: renamed from: d6.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1305d {

    /* JADX INFO: renamed from: a */
    public boolean f3111a;

    /* JADX INFO: renamed from: b */
    public Object f3112b;

    public C1305d(C3070h c3070h, boolean z9) {
        this.f3111a = z9;
        this.f3112b = c3070h;
    }

    /* JADX INFO: renamed from: a */
    public void m2353a() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        mediaPlayer.setAudioAttributes(new AudioAttributes.Builder().setContentType(2).build());
        mediaPlayer.setOnCompletionListener(new C1303b(0));
        mediaPlayer.setOnErrorListener(new C1304c());
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = ((Context) this.f3112b).getResources().openRawResourceFd(R.raw.zxing_beep);
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

    /* JADX INFO: renamed from: b */
    public synchronized void m2354b(InterfaceC1889d0 interfaceC1889d0, boolean z9) {
        try {
            if (this.f3111a || z9) {
                ((Handler) this.f3112b).obtainMessage(1, interfaceC1889d0).sendToTarget();
            } else {
                this.f3111a = true;
                interfaceC1889d0.recycle();
                this.f3111a = false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
