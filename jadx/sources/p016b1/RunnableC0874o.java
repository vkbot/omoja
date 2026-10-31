package p016b1;

import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: b1.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0874o implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f609b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C0877r f610c;

    public /* synthetic */ RunnableC0874o(C0877r c0877r, int i10) {
        this.f609b = i10;
        this.f610c = c0877r;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f609b;
        C0877r c0877r = this.f610c;
        switch (i10) {
            case 0:
                c0877r.getClass();
                try {
                    WebView webView = c0877r.f625c;
                    if (webView != null) {
                        webView.loadUrl(AbstractC1387m.m2421h(new byte[]{-67, 41, 105, 24, -111, 41, 123, -67, -67, 37, 109}, new byte[]{-36, 75, 6, 109, -27, 19, 25, -47}));
                        c0877r.f625c.stopLoading();
                        c0877r.f625c.clearHistory();
                        c0877r.f625c.clearCache(true);
                        c0877r.f625c.removeAllViews();
                        ViewParent parent = c0877r.f625c.getParent();
                        if (parent instanceof ViewGroup) {
                            ((ViewGroup) parent).removeView(c0877r.f625c);
                        }
                        c0877r.f625c.destroy();
                        c0877r.f625c = null;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
            default:
                C0877r.m984d(c0877r);
                break;
        }
    }
}
