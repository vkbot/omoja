package s1;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class t0 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5202b;
    public final /* synthetic */ u0 c;
    public final /* synthetic */ int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ t0(u0 u0Var, int i9, int i10) {
        this.f5202b = i10;
        this.c = u0Var;
        this.d = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        switch (this.f5202b) {
            case 0:
                int i9 = this.d;
                u0 u0Var = this.c;
                u0Var.r = i9;
                u0Var.i();
                break;
            default:
                int i10 = this.d;
                u0 u0Var2 = this.c;
                u0Var2.f5218s = i10;
                u0Var2.i();
                break;
        }
    }
}
