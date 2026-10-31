package p032c7;

import android.hardware.Camera;
import android.util.Log;
import p184r5.C3105c;

/* JADX INFO: renamed from: c7.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1000d implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f968b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1003g f969c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C3105c f970d;

    public /* synthetic */ RunnableC1000d(C1003g c1003g, C3105c c3105c, int i10) {
        this.f968b = i10;
        this.f969c = c1003g;
        this.f970d = c3105c;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f968b;
        C3105c c3105c = this.f970d;
        C1003g c1003g = this.f969c;
        switch (i10) {
            case 0:
                if (!c1003g.f982f) {
                    Log.d("g", "Camera is closed, not requesting preview");
                } else {
                    c1003g.f977a.m1057d(new RunnableC1000d(c1003g, c3105c, 1));
                }
                break;
            default:
                C1005i c1005i = c1003g.f979c;
                Camera camera = c1005i.f993a;
                if (camera != null && c1005i.f997e) {
                    C1004h c1004h = c1005i.f1004l;
                    c1004h.f989a = c3105c;
                    camera.setOneShotPreviewCallback(c1004h);
                    break;
                }
                break;
        }
    }
}
