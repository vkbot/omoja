package e4;

import android.view.View;
import android.view.View$OnFocusChangeListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements View$OnFocusChangeListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2038b;
    public final /* synthetic */ q c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(q qVar, int i9) {
        this.f2038b = i9;
        this.c = qVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnFocusChangeListener
    public final void onFocusChange(View view, boolean z8) {
        switch (this.f2038b) {
            case 0:
                d dVar = (d) this.c;
                dVar.s(dVar.t());
                break;
            default:
                l lVar = (l) this.c;
                lVar.f2064l = z8;
                lVar.p();
                if (!z8) {
                    lVar.s(false);
                    lVar.f2065m = false;
                }
                break;
        }
    }
}
