package m0;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.io.encoding.Base64;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b0 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3339b;
    public final /* synthetic */ e0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b0(e0 e0Var, int i9) {
        this.f3339b = i9;
        this.c = e0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f3339b;
        e0 e0Var = this.c;
        switch (i9) {
            case 0:
                e0Var.f3400y = true;
                e0Var.C(e0.m.h(new byte[]{24, -108, -115, -119, 123, -11, -107, 70, -24, -35, -36, -19, 21, -112, -5, 21, 72, -35, -46, -19, 29, -112, -15, 20, 117, -36, -27, -19, 30}, new byte[]{-56, 12, 93, Base64.padSymbol, -85, 64, 68, -60}), e0.m.h(new byte[]{-106, 73, -50, -21, 63, 112, -80, -9, -105, 92, -50, -23, 62, 73, -79, -52, 102, 10, -98, -127, 90, 27, -41, -87, -2, 11, -94, 113, 62, 74, -79, -57, -106, 100, -49, -47, 62, 68, -79, -49, -106, 110, -50, -20, 63, 115, -80, -10, 102, 11, -93, -127, 95, -21, -79, -61, -106, 102, -50, -17, 63, 116, -79, -61, -106, 107, -49, -44, -63}, new byte[]{70, -37, 30, 81, -17, -53, 97, 121}), e0Var.v());
                e0Var.B(e0.m.h(new byte[]{76, 47, 121, -35, -96, -106, 118, -9, 78, 58}, new byte[]{60, 78, 16, -81, -1, -27, 2, -106}), true);
                e0Var.F();
                e0Var.r = 0;
                c0 c0Var = new c0(e0Var, 0);
                e0Var.f3394p = c0Var;
                e0Var.f3393o.postDelayed(c0Var, 1500L);
                break;
            case 1:
                e0Var.f3400y = false;
                e0Var.F();
                e0Var.B(e0.m.h(new byte[]{-37, 27, 93, -48, 58, -12, -54, 92, -37}, new byte[]{-85, 122, 52, -94, 101, -121, -66, 51}), false);
                break;
            case 2:
                String str = e0Var.f3398v;
                if (e0Var.f3392n != null && e0Var.f3391m != null) {
                    String strTrim = str == null ? "" : str.trim();
                    if (strTrim.length() == 0) {
                        TextView textView = e0Var.f3386h;
                        if (textView != null) {
                            textView.setText(e0.m.h(new byte[]{43, 105, 62, -55, -62, -83, -116, -19, 43, 76, 63, -5, -62, -82, 124, -127, 65, 36, 83, -87, -84, -53, -29, -127, 65, 37, 109, 89, -62, -90, -116, -31, -37, 36, 81, -87, -94, -53, -31, -127, 78, 36, 85, -87, -86}, new byte[]{-5, -12, -18, 121, 18, 27, 92, 81}));
                        }
                        break;
                    } else {
                        e0Var.f3392n.add(new w0.o0(strTrim, j0.e.c(n0.d.e, e0Var.requireActivity()), true, true));
                        e0Var.f3391m.notifyItemInserted(e0Var.f3392n.size() - 1);
                        e0Var.z();
                        RecyclerView recyclerView = e0Var.f3390l;
                        if (recyclerView != null) {
                            recyclerView.post(new c7.e(e0Var, true, 7));
                            break;
                        }
                    }
                }
                break;
            default:
                String str2 = e0.A;
                e0Var.z();
                if (e0Var.getParentFragment() instanceof l0.a) {
                    ((l0.a) e0Var.getParentFragment()).dismiss();
                }
                break;
        }
    }
}
