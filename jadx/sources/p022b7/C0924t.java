package p022b7;

import android.content.Context;
import android.view.OrientationEventListener;
import android.view.WindowManager;
import com.journeyapps.barcodescanner.BarcodeView;
import p005a4.RunnableC0014g;
import p184r5.C3105c;

/* JADX INFO: renamed from: b7.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0924t extends OrientationEventListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C0920p f776a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0924t(C0920p c0920p, Context context) {
        super(context, 3);
        this.f776a = c0920p;
    }

    @Override // android.view.OrientationEventListener
    public final void onOrientationChanged(int i10) {
        int rotation;
        C0920p c0920p = this.f776a;
        WindowManager windowManager = (WindowManager) c0920p.f769c;
        C3105c c3105c = (C3105c) c0920p.f771e;
        if (windowManager == null || c3105c == null || (rotation = windowManager.getDefaultDisplay().getRotation()) == c0920p.f768b) {
            return;
        }
        c0920p.f768b = rotation;
        ((BarcodeView) c3105c.f8867c).f711d.postDelayed(new RunnableC0014g(5, c3105c), 250L);
    }
}
