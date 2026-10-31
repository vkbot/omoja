package s1;

import android.view.View;
import android.view.View$OnLayoutChangeListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e implements View$OnLayoutChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5070a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f5071b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(k kVar, int i9) {
        this.f5070a = i9;
        this.f5071b = kVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnLayoutChangeListener
    public final void onLayoutChange(View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        k kVar;
        v0 v0Var;
        k kVar2;
        v0 v0Var2;
        switch (this.f5070a) {
            case 0:
                if ((i11 - i9 != i15 - i13 || i12 - i10 != i16 - i14) && (v0Var = (kVar = this.f5071b).f5117p) != null) {
                    kVar.removeCallbacks(v0Var);
                    kVar.post(v0Var);
                }
                break;
            default:
                if ((i11 - i9 != i15 - i13 || i12 - i10 != i16 - i14) && (v0Var2 = (kVar2 = this.f5071b).f5117p) != null) {
                    kVar2.removeCallbacks(v0Var2);
                    kVar2.post(v0Var2);
                }
                break;
        }
    }
}
