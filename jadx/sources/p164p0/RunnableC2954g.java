package p164p0;

import android.widget.TextView;
import androidx.fragment.app.C0566h;
import com.example.navistart.R;
import p047e0.AbstractC1387m;
import p047e0.RunnableC1375j2;
import p132m0.C2343q2;
import p157o7.C2652i4;

/* JADX INFO: renamed from: p0.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2954g implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8214b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2957j f8215c;

    public /* synthetic */ RunnableC2954g(C2957j c2957j, int i10) {
        this.f8214b = i10;
        this.f8215c = c2957j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2652i4 c2652i4;
        int i10 = this.f8214b;
        C2957j c2957j = this.f8215c;
        switch (i10) {
            case 0:
                c2957j.f8236j = 0;
                c2957j.m4742e();
                break;
            case 1:
                try {
                    c2652i4 = c2957j.f8228b.m4734f(new C0566h(29, c2957j));
                } catch (Exception e) {
                    c2652i4 = new C2652i4(false, 0, 1, e.getClass().getSimpleName() + AbstractC1387m.m2421h(new byte[]{-120, -12}, new byte[]{-78, -44, -117, 77, -24, 50, -21, 81}) + e.getMessage());
                }
                c2957j.f8230d.post(new RunnableC1375j2(24, c2957j, c2652i4));
                break;
            case 2:
                C2343q2 c2343q2 = c2957j.f8229c;
                if (c2343q2 == null) {
                    c2957j.m4739a();
                } else {
                    TextView textView = c2343q2.f6322f;
                    if (textView != null) {
                        textView.setText(R.string.user_apps_hide_result_restored_by_zone);
                    }
                    c2343q2.m3723v();
                    c2957j.m4742e();
                }
                break;
            default:
                c2957j.m4742e();
                break;
        }
    }
}
