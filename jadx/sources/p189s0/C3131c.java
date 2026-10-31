package p189s0;

import android.media.AudioAttributes;
import android.media.SoundPool;
import com.example.navistart.LocServ;

/* JADX INFO: renamed from: s0.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3131c {

    /* JADX INFO: renamed from: a */
    public SoundPool f8955a;

    /* JADX INFO: renamed from: b */
    public int f8956b;

    /* JADX INFO: renamed from: c */
    public final int[] f8957c = new int[6];

    /* JADX INFO: renamed from: d */
    public boolean f8958d = false;

    /* JADX INFO: renamed from: e */
    public float f8959e = 1.0f;

    /* JADX INFO: renamed from: f */
    public int f8960f = 1;

    public C3131c(LocServ locServ) {
        SoundPool soundPoolBuild = new SoundPool.Builder().setMaxStreams(6).setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(2).build()).build();
        this.f8955a = soundPoolBuild;
        soundPoolBuild.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: s0.b
            @Override // android.media.SoundPool.OnLoadCompleteListener
            public final void onLoadComplete(SoundPool soundPool, int i10, int i11) {
                if (i11 == 0) {
                    this.f8954a.f8958d = true;
                }
            }
        });
    }
}
