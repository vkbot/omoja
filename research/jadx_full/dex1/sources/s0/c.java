package s0;

import android.media.AudioAttributes$Builder;
import android.media.SoundPool;
import android.media.SoundPool$Builder;
import com.example.navistart.LocServ;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SoundPool f5046a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5047b;
    public final int[] c = new int[6];
    public boolean d = false;
    public float e = 1.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5048f = 1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(LocServ locServ) {
        SoundPool soundPoolBuild = new SoundPool$Builder().setMaxStreams(6).setAudioAttributes(new AudioAttributes$Builder().setUsage(1).setContentType(2).build()).build();
        this.f5046a = soundPoolBuild;
        soundPoolBuild.setOnLoadCompleteListener(new b(this));
    }
}
