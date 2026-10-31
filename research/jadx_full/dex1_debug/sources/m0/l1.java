package m0;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class l1 extends l0.b {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f3505b = e0.w.c(100, e0.m.h(new byte[]{-117, -101, -111, -38, -36, 68, 120, 121, -93, -108, -107}, new byte[]{-58, -6, -31, -100, -82, 37, 31, 20}));
    public WebView c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        e0.m.h(new byte[]{-44, -73, 40, -37, 82, 2, 72, -6, -31, -72, 60, -57, 104, 56, 126, -54, -42}, new byte[]{-109, -25, 123, -120, 55, 108, 44, -97});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        v1.d.a().d().f5514g.observe(getActivity(), new x0(this, 1));
        View viewInflate = layoutInflater.inflate(2131492958, viewGroup, false);
        WebView webView = (WebView) viewInflate.findViewById(2131297763);
        this.c = webView;
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        this.c.setWebViewClient(new WebViewClient());
        this.c.addJavascriptInterface(new k1(this), e0.m.h(new byte[]{-15, 75, -106, 84, 14, -85, -66}, new byte[]{-80, 37, -14, 38, 97, -62, -38, -49}));
        this.c.loadUrl(e0.m.h(new byte[]{116, -15, -8, -36, -83, 64, -94, -33, 118, -26, -19, -34, -86, 21, -30, -100, 111, -85, -2, -39, -15, 29, -3, -125, 51, -24, -19, -36, -16, 18, -7, -99, 112}, new byte[]{28, -123, -116, -84, -34, 122, -115, -16}));
        return viewInflate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        WebView webView = this.c;
        if (webView != null) {
            webView.loadUrl(e0.m.h(new byte[]{45, -25, -21, 27, -125, -17, 111, 94, 45, -21, -17}, new byte[]{76, -123, -124, 110, -9, -43, 13, 50}));
            this.c.stopLoading();
            this.c.clearHistory();
            this.c.clearCache(true);
            this.c.removeAllViews();
            ViewParent parent = this.c.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.c);
            }
            this.c.destroy();
            this.c = null;
        }
        super.onDestroyView();
    }
}
