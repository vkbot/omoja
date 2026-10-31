package s1;

import android.content.Intent;
import android.net.Uri;
import android.os.Build$VERSION;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.example.navistart.home.WebLauncherActivity;
import e0.p3;
import e0.x1;
import kotlin.io.encoding.Base64;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class z0 extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebLauncherActivity f5236a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public z0(WebLauncherActivity webLauncherActivity) {
        this.f5236a = webLauncherActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (webResourceRequest.isForMainFrame()) {
            WebLauncherActivity webLauncherActivity = this.f5236a;
            webLauncherActivity.f915h = webLauncherActivity.f914g;
            webLauncherActivity.H(e0.m.h(new byte[]{-102, 95, -89, 0, -6, 85, -86, 62, -2, 18, -57, 101, 97, 84, -105, 63, -53, 19, -5, -107, 10, 58, -8, 108, -102, 120, -90, 53, 11, 15, -8, 108, -101, 78, 87, 101, 104, 84, -100, 62, -5, -17, -90, 55, 10, 49, -7, 82, -101, 65, 89, -107, 10, 25, -7, 94, -101, 64, -89, 13, 10, 54, -7, 83, -101, 73, -89, 12, -6, 85, -92, 62, -16, 19, -9, 101, 106, 84, -108, -50, -102, 125, -90, 53, 10, 58, -7, 90, -102, 124, -89, 14, 10, 50, -7, 94, -102, 119, -90, 55, -6, 85, -87, 62, -6, 18, -58, 101, 100, 85, -85, 62, -6, 19, -11, 100, 86, -86}, new byte[]{74, -62, 119, -75, -38, -124, 41, -18}));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        if (Build$VERSION.SDK_INT < 26) {
            return false;
        }
        WebLauncherActivity webLauncherActivity = this.f5236a;
        webLauncherActivity.f915h = webLauncherActivity.f914g;
        webLauncherActivity.H(e0.m.h(new byte[]{19, -36, 56, -119, -92, 54, -23, -76, 119, -98, 90, -20, -52, 87, 114, -76, 125, -98, 82, 28, -92, 57, 21, -27, 18, -52, 56, -116, -92, 58, 20, -38, 19, -4, 56, -121, -92, 50, 20, -39, -19, 110, 56, -95, -92, 55, 21, -26, 19, -10, 56, -114, -92, 58, 21, -17, 19, -9, -56, -19, -7, 87, 126, -75, 67, -98, 88, -20, -55, -89, 20, -37, 18, -50, 56, -126, -92, 51, 20, -38, 19, -11, 56, -118, -92, 55, 20, -47, 18, -52, -56, -19, -12, 87, 116, -76, 114, -98, 86, -19, -10, 87, 116, -75, 65, -97, 100, 18}, new byte[]{-61, 78, -24, 60, 116, -121, -60, 100}));
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Boolean boolValueOf;
        WebLauncherActivity webLauncherActivity = this.f5236a;
        Uri url = webResourceRequest.getUrl();
        if (e0.m.h(new byte[]{-66, 121, 116, 35}, new byte[]{-40, 16, 24, 70, -110, 53, 94, 85}).equals(url.getScheme())) {
            return false;
        }
        String str = WebLauncherActivity.f910l;
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = h0.b.o();
        byte[] bArr = e0.m.f1896j;
        String[] strArr = p3.f1924a;
        com.google.protobuf.q.s(bArr, aVarO, "", sb);
        com.google.protobuf.q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = com.google.protobuf.q.g(sb, x1.f1989q);
        u0.a aVarO2 = h0.b.o();
        byte[] bArr2 = e0.m.f1892f;
        if (com.google.protobuf.q.w(bArr2, aVarO2, "", strG)) {
            h0.b.a();
            boolValueOf = Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{-122}, new byte[]{-74, -91, 118, -126, 97, 97, 57, 7}, h0.b.o(), com.google.protobuf.q.h(e0.m.f1893g, h0.b.o(), new String(bArr2)), 0))));
        } else {
            boolValueOf = Boolean.FALSE;
        }
        if (boolValueOf.booleanValue() && (e0.m.h(new byte[]{91, 57, 117, 84}, new byte[]{51, 77, 1, 36, -6, -99, 66, -45}).equals(url.getScheme()) || e0.m.h(new byte[]{59, 88, 85, 29, -21}, new byte[]{83, 44, 33, 109, -104, 111, -37, 7}).equals(url.getScheme()))) {
            try {
                webLauncherActivity.startActivity(new Intent(e0.m.h(new byte[]{23, 105, 89, 35, -69, -50, 106, -100, 31, 105, 73, 52, -70, -45, 32, -45, 21, 115, 84, 62, -70, -119, 88, -5, 51, 80}, new byte[]{118, 7, Base64.padSymbol, 81, -44, -89, 14, -78}), url));
            } catch (RuntimeException unused) {
            }
        }
        return true;
    }
}
