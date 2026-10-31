package c7;

import android.hardware.Camera;
import android.hardware.Camera$PreviewCallback;
import android.util.Log;
import b7.u;
import b7.v;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h implements Camera$PreviewCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public r5.c f525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public u f526b;
    public final /* synthetic */ i c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(i iVar) {
        this.c = iVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.hardware.Camera$PreviewCallback
    public final void onPreviewFrame(byte[] bArr, Camera camera) {
        u uVar = this.f526b;
        r5.c cVar = this.f525a;
        if (uVar == null || cVar == null) {
            Log.d("i", "Got preview callback, but no handler or resolution available");
            if (cVar != null) {
                new Exception("No resolution available");
                cVar.k();
                return;
            }
            return;
        }
        try {
            if (bArr == null) {
                throw new NullPointerException("No preview data received");
            }
            v vVar = new v(uVar.f389b, uVar.c, camera.getParameters().getPreviewFormat(), this.c.f535k, bArr);
            if (this.c.f529b.facing == 1) {
                vVar.e = true;
            }
            synchronized (((b7.n) cVar.c).f380h) {
                try {
                    b7.n nVar = (b7.n) cVar.c;
                    if (nVar.f379g) {
                        nVar.c.obtainMessage(2131297791, vVar).sendToTarget();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (RuntimeException e) {
            Log.e("i", "Camera preview failed", e);
            cVar.k();
        }
    }
}
