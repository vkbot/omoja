package c7;

import android.hardware.Camera;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f512b;
    public final /* synthetic */ g c;
    public final /* synthetic */ r5.c d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(g gVar, r5.c cVar, int i9) {
        this.f512b = i9;
        this.c = gVar;
        this.d = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f512b;
        r5.c cVar = this.d;
        g gVar = this.c;
        switch (i9) {
            case 0:
                if (!gVar.f518f) {
                    Log.d("g", "Camera is closed, not requesting preview");
                } else {
                    gVar.f516a.d(new d(gVar, cVar, 1));
                }
                break;
            default:
                i iVar = gVar.c;
                Camera camera = iVar.f528a;
                if (camera != null && iVar.e) {
                    h hVar = iVar.f536l;
                    hVar.f525a = cVar;
                    camera.setOneShotPreviewCallback(hVar);
                    break;
                }
                break;
        }
    }
}
