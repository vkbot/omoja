package p032c7;

import android.hardware.Camera;
import android.util.Log;
import com.example.navistart.R;
import p022b7.C0918n;
import p022b7.C0925u;
import p022b7.C0926v;
import p184r5.C3105c;

/* JADX INFO: renamed from: c7.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1004h implements Camera.PreviewCallback {

    /* JADX INFO: renamed from: a */
    public C3105c f989a;

    /* JADX INFO: renamed from: b */
    public C0925u f990b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1005i f991c;

    public C1004h(C1005i c1005i) {
        this.f991c = c1005i;
    }

    @Override // android.hardware.Camera.PreviewCallback
    public final void onPreviewFrame(byte[] bArr, Camera camera) {
        C0925u c0925u = this.f990b;
        C3105c c3105c = this.f989a;
        if (c0925u == null || c3105c == null) {
            Log.d("i", "Got preview callback, but no handler or resolution available");
            if (c3105c != null) {
                new Exception("No resolution available");
                c3105c.m4942k();
                return;
            }
            return;
        }
        try {
            if (bArr == null) {
                throw new NullPointerException("No preview data received");
            }
            C0926v c0926v = new C0926v(c0925u.f777b, c0925u.f778c, camera.getParameters().getPreviewFormat(), this.f991c.f1003k, bArr);
            if (this.f991c.f994b.facing == 1) {
                c0926v.f783e = true;
            }
            synchronized (((C0918n) c3105c.f8867c).f763h) {
                try {
                    C0918n c0918n = (C0918n) c3105c.f8867c;
                    if (c0918n.f762g) {
                        c0918n.f758c.obtainMessage(R.id.zxing_decode, c0926v).sendToTarget();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (RuntimeException e) {
            Log.e("i", "Camera preview failed", e);
            c3105c.m4942k();
        }
    }
}
