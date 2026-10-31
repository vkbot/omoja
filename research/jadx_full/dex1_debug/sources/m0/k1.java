package m0;

import android.webkit.JavascriptInterface;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l1 f3491a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k1(l1 l1Var) {
        this.f3491a = l1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JavascriptInterface
    public void Exit() {
        this.f3491a.requireActivity().finish();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean a() {
        String url = this.f3491a.c.getUrl();
        return url == null || !url.startsWith(e0.m.h(new byte[]{49, -79, -127, -67, -118, -10, -2, -72, 51, -90, -108, -65, -115, -93, -66, -5, 42, -21, -121, -72}, new byte[]{89, -59, -11, -51, -7, -52, -47, -105}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JavascriptInterface
    public void createMeeting(String str) {
        this.f3491a.requireActivity().runOnUiThread(new j1(this, str, 2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JavascriptInterface
    public void getProfile() {
        h0.b.a().j().gv(new androidx.fragment.app.h(22, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JavascriptInterface
    public void joinMeeting(String str) {
        this.f3491a.requireActivity().runOnUiThread(new j1(this, str, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JavascriptInterface
    public void updateProfile(String str) {
        this.f3491a.requireActivity().runOnUiThread(new j1(this, str, 1));
    }
}
