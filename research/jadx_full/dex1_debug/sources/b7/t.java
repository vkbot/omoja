package b7;

import android.content.Context;
import android.view.OrientationEventListener;
import android.view.WindowManager;
import com.journeyapps.barcodescanner.BarcodeView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t extends OrientationEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f388a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(p pVar, Context context) {
        super(context, 3);
        this.f388a = pVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.OrientationEventListener
    public final void onOrientationChanged(int i9) {
        int rotation;
        p pVar = this.f388a;
        WindowManager windowManager = (WindowManager) pVar.c;
        r5.c cVar = (r5.c) pVar.e;
        if (windowManager == null || cVar == null || (rotation = windowManager.getDefaultDisplay().getRotation()) == pVar.f385b) {
            return;
        }
        pVar.f385b = rotation;
        ((BarcodeView) cVar.c).d.postDelayed(new a4.g(5, cVar), 250L);
    }
}
