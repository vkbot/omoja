package s1;

import android.view.View;
import android.view.View$OnClickListener;
import android.view.WindowManager$LayoutParams;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class s0 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5200b;
    public final /* synthetic */ u0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ s0(u0 u0Var, int i9) {
        this.f5200b = i9;
        this.c = u0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f5200b;
        u0 u0Var = this.c;
        switch (i9) {
            case 0:
                u0Var.l();
                break;
            case 1:
                u0Var.f5217q = null;
                u0Var.i();
                u0Var.n();
                break;
            default:
                u0Var.f5217q = null;
                LinearLayout linearLayout = u0Var.d;
                ArrayList arrayList = u0Var.f5209i;
                if (!u0Var.f5206f) {
                    WindowManager$LayoutParams windowManager$LayoutParams = u0Var.f5213m;
                    u0Var.f5207g = windowManager$LayoutParams == null ? 0 : windowManager$LayoutParams.x;
                    u0Var.f5208h = windowManager$LayoutParams == null ? 0 : windowManager$LayoutParams.y;
                    u0Var.f5206f = true;
                    arrayList.clear();
                }
                u0Var.f5205b.setVisibility(8);
                u0Var.e.setVisibility(0);
                u0Var.h();
                u0Var.i();
                if (!arrayList.isEmpty()) {
                    u0Var.j();
                    break;
                } else {
                    int i10 = u0Var.f5216p + 1;
                    u0Var.f5216p = i10;
                    linearLayout.removeAllViews();
                    linearLayout.addView(u0Var.k(e0.m.h(new byte[]{30, -73, -72, -107, 5, 84, 76, 118, 31, -93, -72, -110, 5, 93, 77, 70, -18, -16, -41, -12, 85, 55, 37, 38, 117, -16, -42, -11, 99, 55, 40, 38, 115, -16, -48, -11, 108, 5, 29, 80}, new byte[]{-50, 32, 104, 37, -43, -25, -99, -10})));
                    ExecutorService executorService = u0Var.f5211k;
                    if (executorService != null) {
                        executorService.execute(new a4.c(u0Var, i10, 11));
                        break;
                    }
                }
                break;
        }
    }
}
