package m0;

import android.app.AlertDialog$Builder;
import android.content.DialogInterface$OnClickListener;
import android.view.View;
import android.view.View$OnClickListener;
import androidx.fragment.app.FragmentActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class n2 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3534b;
    public final /* synthetic */ q2 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ n2(q2 q2Var, int i9) {
        this.f3534b = i9;
        this.c = q2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        switch (this.f3534b) {
            case 0:
                q2 q2Var = this.c;
                if (!(q2Var.getParentFragment() instanceof l0.a)) {
                    FragmentActivity activity = q2Var.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                } else {
                    ((l0.a) q2Var.getParentFragment()).dismiss();
                }
                break;
            default:
                q2 q2Var2 = this.c;
                if (!q2Var2.f3576k && q2Var2.f3570b != null) {
                    if (!p0.e.e()) {
                        p0.j jVar = q2Var2.c;
                        if (jVar != null && !jVar.f4573k) {
                            if (jVar.f4571i == null) {
                                jVar.h(1);
                            }
                            jVar.f(0);
                        }
                        new AlertDialog$Builder(q2Var2.requireContext()).setTitle(2131952667).setMessage(2131952664).setPositiveButton(2131952666, new b7.h(1, q2Var2)).setNegativeButton(2131952665, (DialogInterface$OnClickListener) null).show();
                    } else {
                        q2Var2.t();
                    }
                    break;
                }
                break;
        }
    }
}
