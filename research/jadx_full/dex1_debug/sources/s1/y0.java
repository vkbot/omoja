package s1;

import androidx.activity.OnBackPressedCallback;
import com.example.navistart.home.WebLauncherActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class y0 extends OnBackPressedCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebLauncherActivity f5234a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y0(WebLauncherActivity webLauncherActivity) {
        super(true);
        this.f5234a = webLauncherActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.activity.OnBackPressedCallback
    public final void handleOnBackPressed() {
        WebLauncherActivity webLauncherActivity = this.f5234a;
        q0 q0Var = webLauncherActivity.f916i;
        if (q0Var == null || !q0Var.f5183s) {
            k kVar = webLauncherActivity.d;
            if (kVar != null) {
                if (kVar.f5111j) {
                    kVar.j(false);
                    return;
                } else {
                    if (kVar.f5106b.f() && kVar.f5110i) {
                        kVar.l();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        String str = q0Var.f5184u;
        if (str == null) {
            str = "";
        }
        q0Var.u(str);
        q0Var.y();
        q0Var.f5183s = false;
        q0Var.f5185v = null;
        q0Var.f5184u = null;
        q0Var.f5171f.setVisibility(8);
        q0Var.A();
        q0Var.F();
        WebLauncherActivity webLauncherActivity2 = (WebLauncherActivity) q0Var.f5170b.c;
        webLauncherActivity2.f917j = false;
        webLauncherActivity2.t();
    }
}
