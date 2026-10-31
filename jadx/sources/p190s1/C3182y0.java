package p190s1;

import androidx.activity.OnBackPressedCallback;
import com.example.navistart.home.WebLauncherActivity;

/* JADX INFO: renamed from: s1.y0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3182y0 extends OnBackPressedCallback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ WebLauncherActivity f9263a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3182y0(WebLauncherActivity webLauncherActivity) {
        super(true);
        this.f9263a = webLauncherActivity;
    }

    @Override // androidx.activity.OnBackPressedCallback
    public final void handleOnBackPressed() {
        WebLauncherActivity webLauncherActivity = this.f9263a;
        C3166q0 c3166q0 = webLauncherActivity.f1748i;
        if (c3166q0 == null || !c3166q0.f9183s) {
            C3153k c3153k = webLauncherActivity.f1743d;
            if (c3153k != null) {
                if (c3153k.f9062j) {
                    c3153k.m4998j(false);
                    return;
                } else {
                    if (c3153k.f9054b.m5083f() && c3153k.f9061i) {
                        c3153k.m5000l();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        String str = c3166q0.f9185u;
        if (str == null) {
            str = "";
        }
        c3166q0.m5074u(str);
        c3166q0.m5076y();
        c3166q0.f9183s = false;
        c3166q0.f9186v = null;
        c3166q0.f9185u = null;
        c3166q0.f9170f.setVisibility(8);
        c3166q0.m5037A();
        c3166q0.m5042F();
        WebLauncherActivity webLauncherActivity2 = (WebLauncherActivity) c3166q0.f9166b.f6648c;
        webLauncherActivity2.f1749j = false;
        webLauncherActivity2.m1654t();
    }
}
