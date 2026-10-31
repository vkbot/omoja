package b7;

import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder$Callback;
import com.journeyapps.barcodescanner.BarcodeView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements SurfaceHolder$Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BarcodeView f337a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(BarcodeView barcodeView) {
        this.f337a = barcodeView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.SurfaceHolder$Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i9, int i10, int i11) {
        if (surfaceHolder == null) {
            int i12 = f.A;
            Log.e("f", "*** WARNING *** surfaceChanged() gave us a null surface!");
        } else {
            u uVar = new u(i10, i11);
            BarcodeView barcodeView = this.f337a;
            barcodeView.f352q = uVar;
            barcodeView.e();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.SurfaceHolder$Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f337a.f352q = null;
    }

    @Override // android.view.SurfaceHolder$Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
    }
}
