package s0;

import android.media.SoundPool;
import android.media.SoundPool$OnLoadCompleteListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements SoundPool$OnLoadCompleteListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f5045a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(c cVar) {
        this.f5045a = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.media.SoundPool$OnLoadCompleteListener
    public final void onLoadComplete(SoundPool soundPool, int i9, int i10) {
        if (i10 == 0) {
            this.f5045a.d = true;
        }
    }
}
