package p0;

import android.widget.TextView;
import e0.j2;
import e0.m;
import m0.q2;
import o7.i4;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4559b;
    public final /* synthetic */ j c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g(j jVar, int i9) {
        this.f4559b = i9;
        this.c = jVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        i4 i4Var;
        int i9 = this.f4559b;
        j jVar = this.c;
        switch (i9) {
            case 0:
                jVar.f4572j = 0;
                jVar.e();
                break;
            case 1:
                try {
                    i4Var = jVar.f4567b.f(new androidx.fragment.app.h(29, jVar));
                } catch (Exception e) {
                    i4Var = new i4(false, 0, 1, e.getClass().getSimpleName() + m.h(new byte[]{-120, -12}, new byte[]{-78, -44, -117, 77, -24, 50, -21, 81}) + e.getMessage());
                }
                jVar.d.post(new j2(24, jVar, i4Var));
                break;
            case 2:
                q2 q2Var = jVar.c;
                if (q2Var == null) {
                    jVar.a();
                } else {
                    TextView textView = q2Var.f3571f;
                    if (textView != null) {
                        textView.setText(2131952682);
                    }
                    q2Var.v();
                    jVar.e();
                }
                break;
            default:
                jVar.e();
                break;
        }
    }
}
