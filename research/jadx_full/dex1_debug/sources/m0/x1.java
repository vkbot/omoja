package m0;

import android.view.View;
import android.view.View$OnClickListener;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class x1 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3627b;
    public final /* synthetic */ y1 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ x1(y1 y1Var, int i9) {
        this.f3627b = i9;
        this.c = y1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f3627b;
        y1 y1Var = this.c;
        switch (i9) {
            case 0:
                y1Var.d.add(new w0.o0("", j0.e.c(n0.d.e, y1Var.requireActivity()), true, true));
                y1Var.c.notifyItemInserted(y1Var.d.size() - 1);
                break;
            default:
                String str = y1.e;
                h0.b.a();
                j0.c cVarF = h0.b.f();
                ArrayList arrayList = y1Var.d;
                String str2 = y1.e;
                cVarF.getClass();
                j0.c.l(str2, arrayList);
                l0.a aVar = (l0.a) y1Var.getParentFragment();
                if (aVar != null) {
                    aVar.dismiss();
                }
                break;
        }
    }
}
