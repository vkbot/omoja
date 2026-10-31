package s1;

import android.view.View;
import android.view.View$OnLongClickListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d0 implements View$OnLongClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5069b;
    public final /* synthetic */ q0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d0(q0 q0Var, int i9) {
        this.f5069b = i9;
        this.c = q0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnLongClickListener
    public final boolean onLongClick(View view) {
        switch (this.f5069b) {
            case 0:
                this.c.m();
                break;
            default:
                q0 q0Var = this.c;
                if (!q0Var.f5183s) {
                    q0Var.m();
                }
                q0Var.f5185v = ((l0) view).f5123b.f5099a;
                q0Var.A();
                break;
        }
        return true;
    }
}
