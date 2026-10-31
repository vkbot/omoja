package p132m0;

import android.webkit.JavascriptInterface;
import androidx.fragment.app.C0566h;
import p047e0.AbstractC1387m;
import p078h0.C1652b;

/* JADX INFO: renamed from: m0.k1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2314k1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2319l1 f6186a;

    public C2314k1(C2319l1 c2319l1) {
        this.f6186a = c2319l1;
    }

    @JavascriptInterface
    public void Exit() {
        this.f6186a.requireActivity().finish();
    }

    /* JADX INFO: renamed from: a */
    public final boolean m3700a() {
        String url = this.f6186a.f6211c.getUrl();
        return url == null || !url.startsWith(AbstractC1387m.m2421h(new byte[]{49, -79, -127, -67, -118, -10, -2, -72, 51, -90, -108, -65, -115, -93, -66, -5, 42, -21, -121, -72}, new byte[]{89, -59, -11, -51, -7, -52, -47, -105}));
    }

    @JavascriptInterface
    public void createMeeting(String str) {
        this.f6186a.requireActivity().runOnUiThread(new RunnableC2309j1(this, str, 2));
    }

    @JavascriptInterface
    public void getProfile() {
        C1652b.m2734a().m2755j().m1633gv(new C0566h(22, this));
    }

    @JavascriptInterface
    public void joinMeeting(String str) {
        this.f6186a.requireActivity().runOnUiThread(new RunnableC2309j1(this, str, 0));
    }

    @JavascriptInterface
    public void updateProfile(String str) {
        this.f6186a.requireActivity().runOnUiThread(new RunnableC2309j1(this, str, 1));
    }
}
