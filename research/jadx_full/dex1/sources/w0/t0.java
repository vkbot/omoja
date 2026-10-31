package w0;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;
import com.example.navistart.Si;
import java.util.ArrayList;
import kotlin.io.encoding.Base64;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class t0 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5766b;
    public final /* synthetic */ v0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ t0(v0 v0Var, int i9) {
        this.f5766b = i9;
        this.c = v0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f5766b;
        v0 v0Var = this.c;
        switch (i9) {
            case 0:
                v0Var.d.add(new o0("", j0.e.c(n0.d.e, v0Var.requireActivity()), true, true));
                v0Var.c.notifyItemInserted(v0Var.d.size() - 1);
                break;
            case 1:
                h0.b.a();
                j0.c cVarF = h0.b.f();
                String string = v0Var.e.getText().toString();
                cVarF.getClass();
                h0.b.o().saveString(j0.c.d, string);
                h0.b.a();
                j0.c cVarF2 = h0.b.f();
                ArrayList arrayList = v0Var.d;
                String str = j0.c.e;
                cVarF2.getClass();
                j0.c.l(str, arrayList);
                h0.b.o().saveBoolean(e0.m.h(new byte[]{29, -73, -70, 117, -123, 98, -113, 19, 24, -90, -89, 79, -69, 122, -116, 37, Base64.padSymbol, -112}, new byte[]{110, -57, -45, 42, -28, 9, -5, 122}), v0Var.f5780f);
                Si.a(v0Var.requireContext());
                l0.a aVar = (l0.a) v0Var.getParentFragment();
                if (aVar != null) {
                    aVar.dismiss();
                }
                break;
            case 2:
                Context applicationContext = v0Var.requireContext().getApplicationContext();
                if (v0Var.f5784j.getCheckedRadioButtonId() != 2131297231) {
                    z zVar = v0Var.f5784j.getCheckedRadioButtonId() == 2131297230 ? z.d : z.c;
                    if (!a.f(applicationContext)) {
                        v0Var.t(false);
                        v0Var.f5786l.setText(v0Var.getString(2131952813, 0));
                        v0Var.f5787m.execute(new b1.n(v0Var, applicationContext, zVar, 16));
                    } else {
                        a0.h(applicationContext, zVar);
                        v0Var.u();
                    }
                } else {
                    a0.h(applicationContext, z.f5831b);
                    v0Var.u();
                }
                break;
            default:
                int selectedItemPosition = v0Var.f5781g.getSelectedItemPosition();
                k1[] k1VarArrValues = k1.values();
                k1 k1Var = (selectedItemPosition < 0 || selectedItemPosition >= k1VarArrValues.length) ? null : k1VarArrValues[selectedItemPosition];
                if (k1Var != null) {
                    Context applicationContext2 = v0Var.requireContext().getApplicationContext();
                    v0Var.f5782h.setEnabled(false);
                    v0Var.f5781g.setEnabled(false);
                    v0Var.f5783i.setText(v0Var.getString(2131952850, 0));
                    v0Var.f5787m.execute(new b1.n(v0Var, applicationContext2, k1Var, 15));
                    break;
                }
                break;
        }
    }
}
