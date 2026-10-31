package p132m0;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import java.io.File;
import kotlin.jvm.internal.ByteCompanionObject;
import p016b1.C0871l;
import p016b1.InterfaceC0878s;
import p047e0.AbstractC1387m;
import p047e0.RunnableC1375j2;
import p078h0.C1652b;
import p121l0.C2195b;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: m0.o0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2333o0 extends C2195b implements InterfaceC0878s {

    /* JADX INFO: renamed from: c */
    public static final String f6280c = AbstractC1387m.m2421h(new byte[]{-108, 96, -32, -118, 64, -120, -108, -17, -103, 97, -37, -69, 86, -116, -107}, new byte[]{-4, 21, -124, -43, 55, -31, -16, -120});

    /* JADX INFO: renamed from: d */
    public static final String f6281d = AbstractC1387m.m2421h(new byte[]{-103, -9, 120, 8, 54, -35, -88, -36, -127, -15, 104, 48, 55, -64, -123}, new byte[]{-18, -98, 28, 111, 83, -87, -9, -82});

    /* JADX INFO: renamed from: e */
    public static final String f6282e = AbstractC1387m.m2421h(new byte[]{27, -79, 53, -77, -120, 25, -122, -13, 7, -65, 51, -88, -123, 110, -23, -107, 125}, new byte[]{72, -12, 118, -26, -38, 92, -39, -89});

    /* JADX INFO: renamed from: b */
    public WebView f6283b;

    @Override // p016b1.InterfaceC0878s
    /* JADX INFO: renamed from: b */
    public final void mo464b() {
        if (isAdded()) {
            requireActivity().finish();
        }
    }

    @Override // p016b1.InterfaceC0878s
    /* JADX INFO: renamed from: e */
    public final void mo988e(String str, String str2) {
        if (this.f6283b == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2087u(new byte[]{-113, 7, 60, 20, 124, -46, -25, 125, -106, 47, 60, 20, 97, -54, -96, 118, -67, 24, 55, 30, 103, -123, -17, 52, -40, 25, 59, 30, 119, -54, -66, 60, -105, 0, 19, 30, 119, -41, -90, 123, -100, 43, 36, 21, 125, -47, -31, 53}, new byte[]{-8, 110, 82, 112, 19, -91, -55, 18}, sb, str);
        AbstractC1178q.m2087u(new byte[]{50, -114, -37}, new byte[]{21, -94, -5, 75, 27, 29, 109, -38}, sb, str2);
        this.f6283b.post(new RunnableC1375j2(17, this, AbstractC1178q.m2075i(new byte[]{-8, 94}, new byte[]{-47, 101, 101, 85, -81, 85, -59, 123}, sb)));
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_web, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        WebView webView = this.f6283b;
        if (webView != null) {
            webView.loadUrl(AbstractC1387m.m2421h(new byte[]{23, -19, 100, -79, 28, 42, -126, -9, 23, -31, 96}, new byte[]{118, -113, 11, -60, 104, 16, -32, -101}));
            this.f6283b.stopLoading();
            this.f6283b.clearHistory();
            this.f6283b.clearCache(true);
            this.f6283b.removeAllViews();
            ViewParent parent = this.f6283b.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f6283b);
            }
            this.f6283b.destroy();
            this.f6283b = null;
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        File file = null;
        String string = arguments == null ? null : arguments.getString(f6280c);
        String strM2421h = arguments == null ? AbstractC1387m.m2421h(new byte[]{-123, 10, 15, -12, -72, -25, -25, 24, -94, 22, 59, -27, -110, -30, -47}, new byte[]{-56, 115, 88, -111, -38, -73, -107, 119}) : arguments.getString(f6281d, AbstractC1387m.m2421h(new byte[]{122, 59, 18, -92, -12, -28, 10, -34, 93, 39, 38, -75, -34, -31, 60}, new byte[]{55, 66, 69, -63, -106, -76, 120, -79}));
        if (string != null && !string.trim().isEmpty() && !string.contains(AbstractC1387m.m2421h(new byte[]{118}, new byte[]{89, 112, -19, 66, -81, 95, 103, 13})) && !string.contains(AbstractC1387m.m2421h(new byte[]{-89}, new byte[]{-5, -8, -47, -57, 120, -68, 29, -91})) && strM2421h != null && !strM2421h.trim().isEmpty() && !strM2421h.contains(AbstractC1387m.m2421h(new byte[]{-100}, new byte[]{-77, 72, 78, 24, -55, -103, -28, -92})) && !strM2421h.contains(AbstractC1387m.m2421h(new byte[]{4}, new byte[]{88, -43, -109, -19, 23, 103, -74, 66}))) {
            File file2 = new File(requireContext().getFilesDir(), strM2421h);
            File file3 = new File(new File(file2, string), AbstractC1387m.m2421h(new byte[]{7, -9, 110, 113, 50, -64, -63, 124, 90, -6, 110, 104, 55}, new byte[]{116, -110, 26, 5, 91, -82, -90, 15}));
            try {
                File canonicalFile = file2.getCanonicalFile();
                File canonicalFile2 = file3.getCanonicalFile();
                if (canonicalFile2.getPath().startsWith(canonicalFile.getPath() + File.separator) && canonicalFile2.isFile()) {
                    file = canonicalFile2;
                }
            } catch (Exception unused) {
            }
        }
        if (file == null) {
            AbstractC3656k.m5878x(requireContext().getApplicationContext(), getString(R.string.custom_widget_settings_error));
            requireActivity().finish();
            return;
        }
        WebView webView = (WebView) view.findViewById(R.id.webView);
        this.f6283b = webView;
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setBlockNetworkLoads(false);
        settings.setBlockNetworkImage(false);
        settings.setAllowFileAccess(true);
        settings.setAllowContentAccess(true);
        settings.setAllowUniversalAccessFromFileURLs(true);
        settings.setAllowFileAccessFromFileURLs(true);
        this.f6283b.setWebChromeClient(new WebChromeClient());
        this.f6283b.setWebViewClient(new WebViewClient());
        WebView webView2 = this.f6283b;
        C1652b.m2734a();
        webView2.addJavascriptInterface(new C0871l(f6282e, C1652b.m2737f(), this), AbstractC1387m.m2421h(new byte[]{-123, -86, -63, -12, 89, -69, 41, -6, -108, -83}, new byte[]{-28, -60, -91, -122, 54, -46, 77, -69}));
        this.f6283b.loadUrl(AbstractC1387m.m2421h(new byte[]{-25, -26, -65, ByteCompanionObject.MAX_VALUE, -83, -68, 35}, new byte[]{-127, -113, -45, 26, -105, -109, 12, 99}) + file.getAbsolutePath());
    }

    @Override // p016b1.InterfaceC0878s
    /* JADX INFO: renamed from: p */
    public final void mo995p(String str, String str2, String str3) {
        C1652b.m2734a().m2755j().m1637lo(str, str2, str3);
    }

    @Override // p016b1.InterfaceC0878s
    /* JADX INFO: renamed from: a */
    public final void mo986a() {
    }

    @Override // p016b1.InterfaceC0878s
    /* JADX INFO: renamed from: c */
    public final void mo987c() {
    }
}
