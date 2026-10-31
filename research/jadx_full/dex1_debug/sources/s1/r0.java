package s1;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class r0 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5197b;
    public final /* synthetic */ u0 c;
    public final /* synthetic */ String d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ r0(u0 u0Var, String str, int i9) {
        this.f5197b = i9;
        this.c = u0Var;
        this.d = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        switch (this.f5197b) {
            case 0:
                u0 u0Var = this.c;
                if (!u0Var.f5215o) {
                    String str = u0Var.f5217q;
                    String str2 = this.d;
                    if (str == null || str.equals(str2)) {
                        if (u0Var.f5217q != null) {
                            str2 = null;
                        }
                        u0Var.f5217q = str2;
                        u0Var.i();
                        u0Var.n();
                    } else {
                        u0Var.f(new e4.o(u0Var.f5217q, str2, u0Var.r, u0Var.f5218s));
                    }
                    break;
                }
                break;
            default:
                this.c.f(new e4.o(this.d, null, 2, 50));
                break;
        }
    }
}
