package b1;

import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class o implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f272b;
    public final /* synthetic */ r c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ o(r rVar, int i9) {
        this.f272b = i9;
        this.c = rVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f272b;
        r rVar = this.c;
        switch (i9) {
            case 0:
                rVar.getClass();
                try {
                    WebView webView = rVar.c;
                    if (webView != null) {
                        webView.loadUrl(e0.m.h(new byte[]{-67, 41, 105, 24, -111, 41, 123, -67, -67, 37, 109}, new byte[]{-36, 75, 6, 109, -27, 19, 25, -47}));
                        rVar.c.stopLoading();
                        rVar.c.clearHistory();
                        rVar.c.clearCache(true);
                        rVar.c.removeAllViews();
                        ViewParent parent = rVar.c.getParent();
                        if (parent instanceof ViewGroup) {
                            ((ViewGroup) parent).removeView(rVar.c);
                        }
                        rVar.c.destroy();
                        rVar.c = null;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
            default:
                r.d(rVar);
                break;
        }
    }
}
