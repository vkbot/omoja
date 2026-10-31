package p132m0;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.example.navistart.R;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p121l0.C2195b;
import p217v1.C3326d;

/* JADX INFO: renamed from: m0.l1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2319l1 extends C2195b {

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ int f6209d = 0;

    /* JADX INFO: renamed from: b */
    public final ScheduledThreadPoolExecutor f6210b = AbstractC1434w.m2482c(100, AbstractC1387m.m2421h(new byte[]{-117, -101, -111, -38, -36, 68, 120, 121, -93, -108, -107}, new byte[]{-58, -6, -31, -100, -82, 37, 31, 20}));

    /* JADX INFO: renamed from: c */
    public WebView f6211c;

    static {
        AbstractC1387m.m2421h(new byte[]{-44, -73, 40, -37, 82, 2, 72, -6, -31, -72, 60, -57, 104, 56, 126, -54, -42}, new byte[]{-109, -25, 123, -120, 55, 108, 44, -97});
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C3326d.m5242a().m5245d().f9734g.observe(getActivity(), new C2369x0(this, 1));
        View viewInflate = layoutInflater.inflate(R.layout.fragment_map, viewGroup, false);
        WebView webView = (WebView) viewInflate.findViewById(R.id.webView);
        this.f6211c = webView;
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        this.f6211c.setWebViewClient(new WebViewClient());
        this.f6211c.addJavascriptInterface(new C2314k1(this), AbstractC1387m.m2421h(new byte[]{-15, 75, -106, 84, 14, -85, -66}, new byte[]{-80, 37, -14, 38, 97, -62, -38, -49}));
        this.f6211c.loadUrl(AbstractC1387m.m2421h(new byte[]{116, -15, -8, -36, -83, 64, -94, -33, 118, -26, -19, -34, -86, 21, -30, -100, 111, -85, -2, -39, -15, 29, -3, -125, 51, -24, -19, -36, -16, 18, -7, -99, 112}, new byte[]{28, -123, -116, -84, -34, 122, -115, -16}));
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        WebView webView = this.f6211c;
        if (webView != null) {
            webView.loadUrl(AbstractC1387m.m2421h(new byte[]{45, -25, -21, 27, -125, -17, 111, 94, 45, -21, -17}, new byte[]{76, -123, -124, 110, -9, -43, 13, 50}));
            this.f6211c.stopLoading();
            this.f6211c.clearHistory();
            this.f6211c.clearCache(true);
            this.f6211c.removeAllViews();
            ViewParent parent = this.f6211c.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f6211c);
            }
            this.f6211c.destroy();
            this.f6211c = null;
        }
        super.onDestroyView();
    }
}
