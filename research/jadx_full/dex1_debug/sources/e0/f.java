package e0;

import android.os.SystemClock;
import android.widget.Toast;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1832b;
    public final /* synthetic */ x0.c c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(x0.c cVar, int i9) {
        this.f1832b = i9;
        this.c = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f1832b;
        x0.c cVar = this.c;
        switch (i9) {
            case 0:
                if (cVar.c.d) {
                    cVar.e = !cVar.e;
                    cVar.k();
                    cVar.l();
                }
                break;
            case 1:
                if (cVar.f5965f) {
                    Toast.makeText(cVar.getContext(), m.h(new byte[]{-5, 30, -121, 93, -22, 107, -19, 52, -97, 83, -25, 56, 113, 106, -48, 53, -86, 82, -37, -56, 26, 2, -66, 83, -5, 63, -121, 93, 26, 7, -66, 92, -6, 1, -122, 100, -22, 107, -19, 53, -85, 83, -23, 56, 120, 106, -37, 52, -106, 82, -37, -56, 27, 59, -66, 92, -5, 55, -121, 93, 26, 7, -65, 104, -6, 12}, new byte[]{43, -125, 87, -24, -54, -70, 110, -28}), 0).show();
                }
                break;
            case 2:
                cVar.e = false;
                cVar.k();
                break;
            default:
                cVar.f5966g--;
                cVar.f5967h = SystemClock.uptimeMillis();
                break;
        }
    }
}
