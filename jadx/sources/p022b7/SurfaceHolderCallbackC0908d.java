package p022b7;

import android.util.Log;
import android.view.SurfaceHolder;
import com.journeyapps.barcodescanner.BarcodeView;

/* JADX INFO: renamed from: b7.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class SurfaceHolderCallbackC0908d implements SurfaceHolder.Callback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ BarcodeView f705a;

    public SurfaceHolderCallbackC0908d(BarcodeView barcodeView) {
        this.f705a = barcodeView;
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
        if (surfaceHolder == null) {
            int i13 = AbstractC0910f.f708A;
            Log.e("f", "*** WARNING *** surfaceChanged() gave us a null surface!");
        } else {
            C0925u c0925u = new C0925u(i11, i12);
            BarcodeView barcodeView = this.f705a;
            barcodeView.f724q = c0925u;
            barcodeView.m1049e();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f705a.f724q = null;
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
    }
}
