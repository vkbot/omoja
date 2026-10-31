package v0;

import com.example.navistart.SpeedBoard.PPSView;
import com.example.navistart.cores.HUDMassageObj;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5498b;
    public final /* synthetic */ PPSView c;
    public final /* synthetic */ HUDMassageObj d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(PPSView pPSView, HUDMassageObj hUDMassageObj, int i9) {
        this.f5498b = i9;
        this.c = pPSView;
        this.d = hUDMassageObj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5498b) {
            case 0:
                PPSView.i(this.c, this.d);
                break;
            default:
                PPSView.g(this.c, this.d);
                break;
        }
    }
}
