package p190s1;

import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import p005a4.RunnableC0010c;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: s1.s0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC3170s0 implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9208b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3174u0 f9209c;

    public /* synthetic */ ViewOnClickListenerC3170s0(C3174u0 c3174u0, int i10) {
        this.f9208b = i10;
        this.f9209c = c3174u0;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i10 = this.f9208b;
        C3174u0 c3174u0 = this.f9209c;
        switch (i10) {
            case 0:
                c3174u0.m5097l();
                break;
            case 1:
                c3174u0.f9234q = null;
                c3174u0.m5094i();
                c3174u0.m5099n();
                break;
            default:
                c3174u0.f9234q = null;
                LinearLayout linearLayout = c3174u0.f9221d;
                ArrayList arrayList = c3174u0.f9226i;
                if (!c3174u0.f9223f) {
                    WindowManager.LayoutParams layoutParams = c3174u0.f9230m;
                    c3174u0.f9224g = layoutParams == null ? 0 : layoutParams.x;
                    c3174u0.f9225h = layoutParams == null ? 0 : layoutParams.y;
                    c3174u0.f9223f = true;
                    arrayList.clear();
                }
                c3174u0.f9219b.setVisibility(8);
                c3174u0.f9222e.setVisibility(0);
                c3174u0.m5093h();
                c3174u0.m5094i();
                if (!arrayList.isEmpty()) {
                    c3174u0.m5095j();
                    break;
                } else {
                    int i11 = c3174u0.f9233p + 1;
                    c3174u0.f9233p = i11;
                    linearLayout.removeAllViews();
                    linearLayout.addView(c3174u0.m5096k(AbstractC1387m.m2421h(new byte[]{30, -73, -72, -107, 5, 84, 76, 118, 31, -93, -72, -110, 5, 93, 77, 70, -18, -16, -41, -12, 85, 55, 37, 38, 117, -16, -42, -11, 99, 55, 40, 38, 115, -16, -48, -11, 108, 5, 29, 80}, new byte[]{-50, 32, 104, 37, -43, -25, -99, -10})));
                    ExecutorService executorService = c3174u0.f9228k;
                    if (executorService != null) {
                        executorService.execute(new RunnableC0010c(c3174u0, i11, 11));
                        break;
                    }
                }
                break;
        }
    }
}
