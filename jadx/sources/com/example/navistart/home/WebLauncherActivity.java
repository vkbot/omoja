package com.example.navistart.home;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.lifecycle.Observer;
import com.example.navistart.ActivityC1081W;
import com.example.navistart.AllWidgetServices;
import com.example.navistart.SystemMessageReceiver;
import com.example.navistart.cores.HUDMassageObj;
import com.example.navistart.home.WebLauncherActivity;
import com.google.protobuf.AbstractC1178q;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;
import p016b1.C0871l;
import p016b1.C0877r;
import p016b1.InterfaceC0878s;
import p016b1.RunnableC0873n;
import p032c7.RunnableC1001e;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p115k7.C2052b;
import p141n.C2455p;
import p142n0.EnumC2472g;
import p173q0.C3042f;
import p189s0.C3129a;
import p190s1.AbstractC3169s;
import p190s1.C3153k;
import p190s1.C3166q0;
import p190s1.C3167r;
import p190s1.C3182y0;
import p190s1.C3184z0;
import p190s1.EnumC3158m0;
import p190s1.EnumC3161o;
import p190s1.RunnableC3143f;
import p190s1.RunnableC3176v0;
import p190s1.RunnableC3180x0;
import p217v1.C3325c;
import p217v1.C3326d;
import p250y5.AbstractC3656k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class WebLauncherActivity extends AppCompatActivity implements InterfaceC0878s {

    /* JADX INFO: renamed from: l */
    public static final String f1739l = AbstractC1387m.m2421h(new byte[]{-83, ByteCompanionObject.MAX_VALUE, -79, -5, 39, 112, -43, -85, -84, 108, -68, -16, 10, 67, -57, -69, -74, 123, -67, -5, 31, 111}, new byte[]{-62, 15, -44, -107, 120, 28, -76, -34});

    /* JADX INFO: renamed from: m */
    public static final String f1740m = AbstractC1387m.m2421h(new byte[]{51, -114, -120, 26, 82, 126, 46, -44, 47, ByteCompanionObject.MIN_VALUE, -114, 1, 95, 9, 65, -78, 85}, new byte[]{96, -53, -53, 79, 0, 59, 113, ByteCompanionObject.MIN_VALUE});

    /* JADX INFO: renamed from: b */
    public FrameLayout f1741b;

    /* JADX INFO: renamed from: c */
    public FrameLayout f1742c;

    /* JADX INFO: renamed from: d */
    public C3153k f1743d;

    /* JADX INFO: renamed from: e */
    public WebView f1744e;

    /* JADX INFO: renamed from: f */
    public String f1745f;

    /* JADX INFO: renamed from: g */
    public String f1746g;

    /* JADX INFO: renamed from: h */
    public String f1747h;

    /* JADX INFO: renamed from: i */
    public C3166q0 f1748i;

    /* JADX INFO: renamed from: j */
    public boolean f1749j;

    /* JADX INFO: renamed from: k */
    public Insets f1750k = Insets.NONE;

    /* JADX INFO: renamed from: A */
    public final void m1643A(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{109, -94, -59, -42, 75}, new byte[]{27, -61, -87, -93, 46, 4, 17, 45}), str);
            mo988e(AbstractC1387m.m2421h(new byte[]{16, -95, -89, -84, 111, 64, 90}, new byte[]{92, -50, -64, -24, 14, 52, 59, -51}), jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: B */
    public final void m1644B(C3129a c3129a) {
        C3166q0 c3166q0 = this.f1748i;
        if (c3166q0 != null) {
            c3166q0.f9189y = c3129a;
            c3166q0.m5045I(EnumC3158m0.f9103d);
        }
        try {
            JSONObject jSONObject = new JSONObject();
            String strM2421h = AbstractC1387m.m2421h(new byte[]{-80, 1, -105, 78, -110, 59, 75, 32}, new byte[]{-32, 109, -10, 55, -63, 79, 42, 84});
            EnumC2472g enumC2472g = c3129a.f8947a;
            String strEncodeToString = "";
            jSONObject.put(strM2421h, enumC2472g == null ? "" : enumC2472g.name());
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-15, -43, 108, 81, 82, -30, 4, -71}, new byte[]{-94, -70, 2, 54, 28, -125, 105, -36}), c3129a.f8948b);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-75, 44, -97, -109, -3, -81, 46, -117, -107, 55}, new byte[]{-26, 67, -15, -12, -68, -35, 90, -30}), c3129a.f8949c);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{93, -95, -107, -9, 80, -19, 69, 40, 99}, new byte[]{14, -50, -5, -112, 17, -127, 39, 93}), c3129a.f8950d);
            String strM2421h2 = AbstractC1387m.m2421h(new byte[]{-22, 43, -121, 94, -119, -22, 90, 22, -44, 20, ByteCompanionObject.MIN_VALUE, 90, -68, -13, 74, 6}, new byte[]{-71, 68, -23, 57, -56, -122, 56, 99});
            Bitmap bitmap = c3129a.f8951e;
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = C0877r.f623s;
            if (bitmap != null) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.PNG, 30, byteArrayOutputStream);
                strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
            }
            jSONObject.put(strM2421h2, strEncodeToString);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{117, 45, 26, 46, -73}, new byte[]{33, 95, 106, 65, -60, 62, -17, 126}), c3129a.f8952f);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-91, -9, 82, -96, 80}, new byte[]{-15, -123, 54, -43, 34, 13, kotlin.p118io.encoding.Base64.padSymbol, -14}), c3129a.f8953g);
            mo988e(AbstractC1387m.m2421h(new byte[]{-61, -44, -118, 36, 50, -86, -127, -76, -63}, new byte[]{-82, -95, -7, 77, 81, -29, -17, -46}), jSONObject.toString());
        } catch (Exception e) {
            Log.w(AbstractC1387m.m2421h(new byte[]{25, 102, -59, 26, -48, 49, -86, 104, 38, 102, -43, 23, -46, 48, -83, 125, 39, 119, -34}, new byte[]{78, 3, -89, 86, -79, 68, -60, 11}), AbstractC1387m.m2421h(new byte[]{98, 44, 4, -55, 73, ByteCompanionObject.MAX_VALUE, 88, -126, 88, 98, 21, -34, 71, 118, 17, -123, 95, 98, 8, -34, 86, 115, 27, -42, 83, 35, 17, -54}, new byte[]{55, 66, 101, -85, 37, 26, 120, -10}), e);
        }
    }

    /* JADX INFO: renamed from: C */
    public final void m1645C(int i10) {
        String strM2421h = AbstractC1387m.m2421h(new byte[]{50, 79, 98}, new byte[]{64, 63, 15, 41, 65, -33, 30, 81});
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2086t(new byte[]{102, -96, 100, -34, -83, 15, 42, -23, 39}, new byte[]{29, -126, 18, -65, -63, 122, 79, -53}, sb, i10);
        sb.append(AbstractC1387m.m2421h(new byte[]{43}, new byte[]{86, 123, 68, 67, 87, -54, 81, -113}));
        mo988e(strM2421h, sb.toString());
    }

    /* JADX INFO: renamed from: D */
    public final void m1646D(Insets insets) {
        WebView webView = this.f1744e;
        m1655u(insets);
        if (webView == null) {
            return;
        }
        float f8 = getResources().getDisplayMetrics().density;
        webView.evaluateJavascript(AbstractC1387m.m2421h(new byte[]{-123, 33, 100, 106, -101, 113, 20, -92, -111, 60, 67, 96, -121, 99, 78, -99, -44, 110, 125, 103, -102, 98, 85, -103, -36, 2, 105, 122, -67, 104, 73, -117, -122, 59, 34}, new byte[]{-14, 72, 10, 14, -12, 6, 58, -18}) + (insets.left / f8) + AbstractC1387m.m2421h(new byte[]{-60}, new byte[]{-24, -18, 41, 42, -114, 77, -71, 80}) + (insets.top / f8) + AbstractC1387m.m2421h(new byte[]{91}, new byte[]{119, 51, -55, 22, -71, -78, 101, -100}) + (insets.right / f8) + AbstractC1387m.m2421h(new byte[]{-56}, new byte[]{-28, 86, 56, 43, 76, 89, 99, -1}) + (insets.bottom / f8) + AbstractC1387m.m2421h(new byte[]{24, -67}, new byte[]{49, -122, -92, 122, -117, -9, 101, -4}), null);
    }

    /* JADX INFO: renamed from: E */
    public final void m1647E(int i10) {
        String strM2421h = AbstractC1387m.m2421h(new byte[]{-13, -55, 4, -50, 77}, new byte[]{ByteCompanionObject.MIN_VALUE, -71, 97, -85, 41, -10, -114, 110});
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2086t(new byte[]{-62, -49, -72, 46, 85, 65, -3, -126, -125}, new byte[]{-71, -19, -50, 79, 57, 52, -104, -96}, sb, i10);
        sb.append(AbstractC1387m.m2421h(new byte[]{-65}, new byte[]{-62, -16, kotlin.p118io.encoding.Base64.padSymbol, 99, -1, 100, -32, -38}));
        mo988e(strM2421h, sb.toString());
    }

    /* JADX INFO: renamed from: F */
    public final void m1648F(int i10, String str) {
        C3166q0 c3166q0 = this.f1748i;
        if (c3166q0 != null) {
            c3166q0.f9187w = TextUtils.isEmpty(str) ? AbstractC1387m.m2421h(new byte[]{99, 41, 109, -17, 29}, new byte[]{-127, -87, -7, 45, -83, ByteCompanionObject.MAX_VALUE, -21, 32}) : str;
            c3166q0.f9188x = i10;
            c3166q0.m5045I(EnumC3158m0.f9102c);
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-52, -104, 102, 6}, new byte[]{-72, -3, 11, 118, -59, -29, 92, -19}), str);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-8, -80, kotlin.p118io.encoding.Base64.padSymbol, 71}, new byte[]{-111, -45, 82, 41, 15, -25, -69, -81}), i10);
            mo988e(AbstractC1387m.m2421h(new byte[]{-110, -11, 43, -2, -16, 68, -45}, new byte[]{-27, -112, 74, -118, -104, 33, -95, -14}), jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: G */
    public final void m1649G(Class cls, Bundle bundle) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        Intent intent = new Intent(this, (Class<?>) ActivityC1081W.class);
        intent.putExtra(AbstractC1387m.m2421h(new byte[]{17, 103, 20, 86, -15, -90, -24, 85, 40, 71, 32, ByteCompanionObject.MAX_VALUE, -61, -105, -33, 113, 50}, new byte[]{119, 21, 117, 49, -100, -61, -122, 33}), AbstractC1387m.m2421h(new byte[]{108, 73, 117, -103, 53, 15, -113, -28, 113, 91, 100, -109, 63, 15}, new byte[]{62, 28, 59, -58, 113, 70, -50, -88}));
        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-86, -3, -8, 44, 114, 84, 87, -55, -109, -20, -11, 42, 108, 66}, new byte[]{-52, -113, -103, 75, 31, 49, 57, -67}), cls.getName());
        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-75, 14, -28, -79, -33, -43, -94, 116, -116, 29, -9, -79, -63}, new byte[]{-45, 124, -123, -42, -78, -80, -52, 0}), bundle);
        intent.addFlags(134217728);
        startActivity(intent);
    }

    /* JADX INFO: renamed from: H */
    public final void m1650H(String str) {
        m1656v();
        this.f1746g = AbstractC3169s.f9207c.equals(AbstractC3169s.m5084a()) ? AbstractC1387m.m2421h(new byte[]{4, -72, -91, -27, -60, -32, 76, -21, 23, -72, -95, -37, -35, -19, 77, -38, 3, -75, -90, -10}, new byte[]{96, -35, -61, -124, -79, -116, 56, -76}) : this.f1747h;
        C3166q0 c3166q0 = this.f1748i;
        if (c3166q0 != null) {
            c3166q0.m5040D();
        }
        C3166q0 c3166q1 = new C3166q0(this, new C2455p(9, this));
        this.f1742c.removeAllViews();
        this.f1742c.addView(c3166q1, new FrameLayout.LayoutParams(-1, -1));
        this.f1748i = c3166q1;
        m1655u(m1652J());
        m1658x();
        if (str != null) {
            AbstractC3656k.m5878x(this, str);
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0025  */
    /* JADX INFO: renamed from: I */
    public final void m1651I() {
        String string;
        String strM5084a = AbstractC3169s.m5084a();
        String str = AbstractC3169s.f9207c;
        if (str.equals(strM5084a)) {
            this.f1747h = null;
            if (!strM5084a.equals(this.f1746g) || this.f1748i == null) {
                m1650H(null);
                return;
            }
            return;
        }
        if (str.equals(strM5084a)) {
            string = null;
        } else {
            try {
                File fileM5085b = AbstractC3169s.m5085b(this, strM5084a);
                if (fileM5085b == null || !fileM5085b.isFile()) {
                    string = null;
                } else {
                    string = Uri.fromFile(fileM5085b).toString();
                }
            } catch (Exception unused) {
            }
        }
        if (string == null) {
            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-74, -120, 15, 90, 125, -62, -104, 116, -111, -108, 59, 75, 83, -13, -97, 117, -104, -103, kotlin.p118io.encoding.Base64.padSymbol, 77, 64, -63, -113, 111, -113, -104, 54, 88, 108, -51, -95, 126, -126}, new byte[]{-5, -15, 88, 63, 31, -110, -22, 27}), AbstractC1387m.m2421h(new byte[]{123, -67, -7, -42, 4, -30, 79, -9, 104, -67, -3, -24, 29, -17, 78, -58, 124, -80, -6, -59}, new byte[]{31, -40, -97, -73, 113, -114, 59, -88}));
            this.f1747h = null;
            m1650H(AbstractC1387m.m2421h(new byte[]{-79, 81, -104, -89, 51, 104, 100, -49, -80, 126, 104, -57, 81, 0, 63, -92, -48, 36, -56, -57, 83, 1, 9, -92, -36, 37, -10, -57, 90, -15, 101, -10, -79, 64, -104, -85, 50, 90, -108, -92, -36, 37, -3, 55, 51, 108, 100, -60, -79, 76, -104, -93, 51, 100, 100, -55, -80, 126, 102, 55, 51, 67, 100, -50, -79, 78, -103, -103, 50, 86, 100, -63, -79, 72, 104, -58, 98, 0, 54, -92, -47, 37, -11, -57, 87, 1, 4, -91, -31, 36, -54, -57, 94, 0, 63, -92, -40, -43, -103, -102, 51, 107, 101, -12, -79, 69, -104, -86, -51}, new byte[]{97, -11, 72, 23, -29, -47, -76, 116}));
            return;
        }
        if (!strM5084a.equals(this.f1747h) || this.f1748i == null) {
            if (strM5084a.equals(this.f1746g) && string.equals(this.f1745f) && this.f1744e != null) {
                return;
            }
            m1656v();
            try {
                WebView webView = new WebView(this);
                this.f1744e = webView;
                WebSettings settings = webView.getSettings();
                settings.setJavaScriptEnabled(true);
                settings.setDomStorageEnabled(true);
                settings.setAllowContentAccess(false);
                settings.setAllowFileAccess(true);
                settings.setAllowFileAccessFromFileURLs(false);
                settings.setAllowUniversalAccessFromFileURLs(false);
                settings.setMixedContentMode(1);
                settings.setMediaPlaybackRequiresUserGesture(false);
                settings.setSupportZoom(false);
                settings.setBuiltInZoomControls(false);
                settings.setDisplayZoomControls(false);
                webView.setBackgroundColor(0);
                webView.setOverScrollMode(2);
                webView.setWebViewClient(new C3184z0(this));
                String str2 = f1740m;
                C1652b.m2734a();
                webView.addJavascriptInterface(new C0871l(str2, C1652b.m2737f(), this), AbstractC1387m.m2421h(new byte[]{-90, -122, -6, 108, -70, -127, -64, 84, -73, -127}, new byte[]{-57, -24, -98, 30, -43, -24, -92, 21}));
                this.f1742c.removeAllViews();
                this.f1742c.addView(webView, new FrameLayout.LayoutParams(-1, -1));
                C3166q0 c3166q0 = this.f1748i;
                if (c3166q0 != null) {
                    c3166q0.m5040D();
                }
                this.f1748i = null;
                this.f1747h = null;
                this.f1746g = strM5084a;
                this.f1745f = string;
                webView.loadUrl(string);
                m1646D(m1652J());
            } catch (Throwable unused2) {
                this.f1747h = strM5084a;
                m1650H(AbstractC1387m.m2421h(new byte[]{106, 88, -19, 65, -117, 123, -106, 32, 106, 122, -20, 119, -117, 119, -105, 16, 107, 69, 28, 26, -23, 26, -14, 112, 11, -25, -19, 72, -117, ByteCompanionObject.MAX_VALUE, -105, 28, 106, 122, 28, 26, -26, 26, -14, 112, 14, 26, -126, 27, -38, 27, -59, 113, 57, 26, -125, 26, -26, 26, -9, -114, -102, 26, -94, 27, -39, 26, -3, 113, 58, 27, -73, 27, -39, -22, -105, 29, 106, 122, -20, 126, -117, ByteCompanionObject.MAX_VALUE, -105, 22, 106, 119, -19, 65, -117, 115, 103, 112, 7, 26, -116, 27, -39, 26, -1, 112, 8, 26, -127, 27, -48, 26, -2, ByteCompanionObject.MIN_VALUE, 107, 71, -20, 112, -118, 74, -105, 16, 106, 119, 18}, new byte[]{-70, -54, 60, -54, 91, -54, 71, -96}));
            }
        }
    }

    /* JADX INFO: renamed from: J */
    public final Insets m1652J() {
        C3153k c3153k = this.f1743d;
        if (c3153k == null || c3153k.getVisibility() != 0 || c3153k.f9054b.m5083f()) {
            return this.f1750k;
        }
        int iOrdinal = this.f1743d.m4999k().ordinal();
        if (iOrdinal == 0) {
            Insets insets = this.f1750k;
            return Insets.m600of(0, insets.top, insets.right, insets.bottom);
        }
        if (iOrdinal == 1) {
            Insets insets2 = this.f1750k;
            return Insets.m600of(insets2.left, insets2.top, 0, insets2.bottom);
        }
        if (iOrdinal == 2) {
            Insets insets3 = this.f1750k;
            return Insets.m600of(insets3.left, 0, insets3.right, insets3.bottom);
        }
        if (iOrdinal != 3) {
            throw new IncompatibleClassChangeError();
        }
        Insets insets4 = this.f1750k;
        return Insets.m600of(insets4.left, insets4.top, insets4.right, 0);
    }

    @Override // p016b1.InterfaceC0878s
    /* JADX INFO: renamed from: a */
    public final void mo986a() {
        WebView webView = this.f1744e;
        if (webView != null) {
            webView.post(new RunnableC3176v0(this, 1));
        }
    }

    @Override // p016b1.InterfaceC0878s
    /* JADX INFO: renamed from: e */
    public final void mo988e(String str, String str2) {
        WebView webView = this.f1744e;
        if (webView == null) {
            return;
        }
        String strQuote = JSONObject.quote(str);
        if (str2 == null || str2.trim().isEmpty()) {
            str2 = AbstractC1387m.m2421h(new byte[]{120, 105}, new byte[]{3, 20, ByteCompanionObject.MIN_VALUE, -106, 38, 43, -103, 10});
        }
        webView.post(new RunnableC0873n(this, strQuote, str2, 14));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i10, int i11, Intent intent) {
        String stringExtra;
        super.onActivityResult(i10, i11, intent);
        if (i10 != 7412 || i11 != -1 || intent == null || (stringExtra = intent.getStringExtra(AbstractC1387m.m2421h(new byte[]{-49, 87, 28, 5, 35, 119, -44, -126, -29, 84, 25, 12, 37}, new byte[]{-68, 50, 112, 96, 64, 3, -79, -26}))) == null) {
            return;
        }
        new Thread(new RunnableC3180x0(1, this, stringExtra), AbstractC1387m.m2421h(new byte[]{2, 122, -51, -13, 28, 114, -41, 58, 32, 119, -55, -5, 26, 114, -14, 18, 33, 107, -42, -24, 30}, new byte[]{76, 27, -71, -102, 106, 23, ByteCompanionObject.MIN_VALUE, 91})).start();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            new SystemMessageReceiver().onReceive(getApplicationContext(), new Intent(AbstractC1387m.m2421h(new byte[]{-20, -17, -20, 22, -124, -74, -48, 89, -28, -17, -4, 1, -123, -85, -102, 22, -18, -11, -31, 11, -123, -15, -10, 56, -62, -43, -41, 39, -92, -110, -28, 59, -56, -43, -51, 32}, new byte[]{-115, -127, -120, 100, -21, -33, -76, 119})));
        } catch (RuntimeException e) {
            Log.e(AbstractC1387m.m2421h(new byte[]{30, 29, -116, -6, 41, -111, -43, -73, 33, 29, -100, -9, 43, -112, -46, -94, 32, 12, -105}, new byte[]{73, 120, -18, -74, 72, -28, -69, -44}), AbstractC1387m.m2421h(new byte[]{-57, 6, 96, 42, -92, 17, -119, -24, -3, 72, 114, 60, -87, 6, -35, -68, -13, 24, 113, 36, -95, 23, -56, -24, -5, 7, 111, 104, -69, 17, -37, -22, -5, 11, 100, 59}, new byte[]{-110, 104, 1, 72, -56, 116, -87, -100}), e);
        }
        C3325c c3325cM5245d = C3326d.m5242a().m5245d();
        final int i10 = 3;
        c3325cM5245d.f9728a.observe(this, new Observer(this) { // from class: s1.w0

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ WebLauncherActivity f9247b;

            {
                this.f9247b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i11 = i10;
                WebLauncherActivity webLauncherActivity = this.f9247b;
                switch (i11) {
                    case 0:
                        String str = (String) obj;
                        String str2 = WebLauncherActivity.f1739l;
                        if (str != null) {
                            webLauncherActivity.m1643A(str);
                        }
                        break;
                    case 1:
                        C3129a c3129a = (C3129a) obj;
                        String str3 = WebLauncherActivity.f1739l;
                        if (c3129a != null) {
                            webLauncherActivity.m1644B(c3129a);
                        }
                        break;
                    case 2:
                        Location location = (Location) obj;
                        String str4 = WebLauncherActivity.f1739l;
                        if (location != null) {
                            webLauncherActivity.m1660z(location);
                        }
                        break;
                    case 3:
                        Integer num = (Integer) obj;
                        String str5 = WebLauncherActivity.f1739l;
                        if (num != null) {
                            webLauncherActivity.m1647E(num.intValue());
                        }
                        break;
                    case 4:
                        Integer num2 = (Integer) obj;
                        String str6 = WebLauncherActivity.f1739l;
                        if (num2 != null) {
                            webLauncherActivity.m1645C(num2.intValue());
                        }
                        break;
                    case 5:
                        C2052b c2052b = (C2052b) obj;
                        String str7 = WebLauncherActivity.f1739l;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            webLauncherActivity.m1648F(c2052b.f5608d, AbstractC1178q.m2075i(new byte[]{-92, 54}, new byte[]{102, -122, 52, 2, -22, -70, -11, 15}, sb));
                        }
                        break;
                    default:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        String str8 = WebLauncherActivity.f1739l;
                        if (hUDMassageObj != null) {
                            webLauncherActivity.m1659y(hUDMassageObj);
                        }
                        break;
                }
            }
        });
        final int i11 = 4;
        c3325cM5245d.f9729b.observe(this, new Observer(this) { // from class: s1.w0

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ WebLauncherActivity f9247b;

            {
                this.f9247b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i12 = i11;
                WebLauncherActivity webLauncherActivity = this.f9247b;
                switch (i12) {
                    case 0:
                        String str = (String) obj;
                        String str2 = WebLauncherActivity.f1739l;
                        if (str != null) {
                            webLauncherActivity.m1643A(str);
                        }
                        break;
                    case 1:
                        C3129a c3129a = (C3129a) obj;
                        String str3 = WebLauncherActivity.f1739l;
                        if (c3129a != null) {
                            webLauncherActivity.m1644B(c3129a);
                        }
                        break;
                    case 2:
                        Location location = (Location) obj;
                        String str4 = WebLauncherActivity.f1739l;
                        if (location != null) {
                            webLauncherActivity.m1660z(location);
                        }
                        break;
                    case 3:
                        Integer num = (Integer) obj;
                        String str5 = WebLauncherActivity.f1739l;
                        if (num != null) {
                            webLauncherActivity.m1647E(num.intValue());
                        }
                        break;
                    case 4:
                        Integer num2 = (Integer) obj;
                        String str6 = WebLauncherActivity.f1739l;
                        if (num2 != null) {
                            webLauncherActivity.m1645C(num2.intValue());
                        }
                        break;
                    case 5:
                        C2052b c2052b = (C2052b) obj;
                        String str7 = WebLauncherActivity.f1739l;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            webLauncherActivity.m1648F(c2052b.f5608d, AbstractC1178q.m2075i(new byte[]{-92, 54}, new byte[]{102, -122, 52, 2, -22, -70, -11, 15}, sb));
                        }
                        break;
                    default:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        String str8 = WebLauncherActivity.f1739l;
                        if (hUDMassageObj != null) {
                            webLauncherActivity.m1659y(hUDMassageObj);
                        }
                        break;
                }
            }
        });
        final int i12 = 5;
        c3325cM5245d.f9730c.observe(this, new Observer(this) { // from class: s1.w0

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ WebLauncherActivity f9247b;

            {
                this.f9247b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i13 = i12;
                WebLauncherActivity webLauncherActivity = this.f9247b;
                switch (i13) {
                    case 0:
                        String str = (String) obj;
                        String str2 = WebLauncherActivity.f1739l;
                        if (str != null) {
                            webLauncherActivity.m1643A(str);
                        }
                        break;
                    case 1:
                        C3129a c3129a = (C3129a) obj;
                        String str3 = WebLauncherActivity.f1739l;
                        if (c3129a != null) {
                            webLauncherActivity.m1644B(c3129a);
                        }
                        break;
                    case 2:
                        Location location = (Location) obj;
                        String str4 = WebLauncherActivity.f1739l;
                        if (location != null) {
                            webLauncherActivity.m1660z(location);
                        }
                        break;
                    case 3:
                        Integer num = (Integer) obj;
                        String str5 = WebLauncherActivity.f1739l;
                        if (num != null) {
                            webLauncherActivity.m1647E(num.intValue());
                        }
                        break;
                    case 4:
                        Integer num2 = (Integer) obj;
                        String str6 = WebLauncherActivity.f1739l;
                        if (num2 != null) {
                            webLauncherActivity.m1645C(num2.intValue());
                        }
                        break;
                    case 5:
                        C2052b c2052b = (C2052b) obj;
                        String str7 = WebLauncherActivity.f1739l;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            webLauncherActivity.m1648F(c2052b.f5608d, AbstractC1178q.m2075i(new byte[]{-92, 54}, new byte[]{102, -122, 52, 2, -22, -70, -11, 15}, sb));
                        }
                        break;
                    default:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        String str8 = WebLauncherActivity.f1739l;
                        if (hUDMassageObj != null) {
                            webLauncherActivity.m1659y(hUDMassageObj);
                        }
                        break;
                }
            }
        });
        final int i13 = 6;
        c3325cM5245d.f9731d.observe(this, new Observer(this) { // from class: s1.w0

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ WebLauncherActivity f9247b;

            {
                this.f9247b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i14 = i13;
                WebLauncherActivity webLauncherActivity = this.f9247b;
                switch (i14) {
                    case 0:
                        String str = (String) obj;
                        String str2 = WebLauncherActivity.f1739l;
                        if (str != null) {
                            webLauncherActivity.m1643A(str);
                        }
                        break;
                    case 1:
                        C3129a c3129a = (C3129a) obj;
                        String str3 = WebLauncherActivity.f1739l;
                        if (c3129a != null) {
                            webLauncherActivity.m1644B(c3129a);
                        }
                        break;
                    case 2:
                        Location location = (Location) obj;
                        String str4 = WebLauncherActivity.f1739l;
                        if (location != null) {
                            webLauncherActivity.m1660z(location);
                        }
                        break;
                    case 3:
                        Integer num = (Integer) obj;
                        String str5 = WebLauncherActivity.f1739l;
                        if (num != null) {
                            webLauncherActivity.m1647E(num.intValue());
                        }
                        break;
                    case 4:
                        Integer num2 = (Integer) obj;
                        String str6 = WebLauncherActivity.f1739l;
                        if (num2 != null) {
                            webLauncherActivity.m1645C(num2.intValue());
                        }
                        break;
                    case 5:
                        C2052b c2052b = (C2052b) obj;
                        String str7 = WebLauncherActivity.f1739l;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            webLauncherActivity.m1648F(c2052b.f5608d, AbstractC1178q.m2075i(new byte[]{-92, 54}, new byte[]{102, -122, 52, 2, -22, -70, -11, 15}, sb));
                        }
                        break;
                    default:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        String str8 = WebLauncherActivity.f1739l;
                        if (hUDMassageObj != null) {
                            webLauncherActivity.m1659y(hUDMassageObj);
                        }
                        break;
                }
            }
        });
        final int i14 = 0;
        c3325cM5245d.f9732e.observe(this, new Observer(this) { // from class: s1.w0

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ WebLauncherActivity f9247b;

            {
                this.f9247b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i15 = i14;
                WebLauncherActivity webLauncherActivity = this.f9247b;
                switch (i15) {
                    case 0:
                        String str = (String) obj;
                        String str2 = WebLauncherActivity.f1739l;
                        if (str != null) {
                            webLauncherActivity.m1643A(str);
                        }
                        break;
                    case 1:
                        C3129a c3129a = (C3129a) obj;
                        String str3 = WebLauncherActivity.f1739l;
                        if (c3129a != null) {
                            webLauncherActivity.m1644B(c3129a);
                        }
                        break;
                    case 2:
                        Location location = (Location) obj;
                        String str4 = WebLauncherActivity.f1739l;
                        if (location != null) {
                            webLauncherActivity.m1660z(location);
                        }
                        break;
                    case 3:
                        Integer num = (Integer) obj;
                        String str5 = WebLauncherActivity.f1739l;
                        if (num != null) {
                            webLauncherActivity.m1647E(num.intValue());
                        }
                        break;
                    case 4:
                        Integer num2 = (Integer) obj;
                        String str6 = WebLauncherActivity.f1739l;
                        if (num2 != null) {
                            webLauncherActivity.m1645C(num2.intValue());
                        }
                        break;
                    case 5:
                        C2052b c2052b = (C2052b) obj;
                        String str7 = WebLauncherActivity.f1739l;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            webLauncherActivity.m1648F(c2052b.f5608d, AbstractC1178q.m2075i(new byte[]{-92, 54}, new byte[]{102, -122, 52, 2, -22, -70, -11, 15}, sb));
                        }
                        break;
                    default:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        String str8 = WebLauncherActivity.f1739l;
                        if (hUDMassageObj != null) {
                            webLauncherActivity.m1659y(hUDMassageObj);
                        }
                        break;
                }
            }
        });
        final int i15 = 1;
        c3325cM5245d.f9733f.observe(this, new Observer(this) { // from class: s1.w0

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ WebLauncherActivity f9247b;

            {
                this.f9247b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i16 = i15;
                WebLauncherActivity webLauncherActivity = this.f9247b;
                switch (i16) {
                    case 0:
                        String str = (String) obj;
                        String str2 = WebLauncherActivity.f1739l;
                        if (str != null) {
                            webLauncherActivity.m1643A(str);
                        }
                        break;
                    case 1:
                        C3129a c3129a = (C3129a) obj;
                        String str3 = WebLauncherActivity.f1739l;
                        if (c3129a != null) {
                            webLauncherActivity.m1644B(c3129a);
                        }
                        break;
                    case 2:
                        Location location = (Location) obj;
                        String str4 = WebLauncherActivity.f1739l;
                        if (location != null) {
                            webLauncherActivity.m1660z(location);
                        }
                        break;
                    case 3:
                        Integer num = (Integer) obj;
                        String str5 = WebLauncherActivity.f1739l;
                        if (num != null) {
                            webLauncherActivity.m1647E(num.intValue());
                        }
                        break;
                    case 4:
                        Integer num2 = (Integer) obj;
                        String str6 = WebLauncherActivity.f1739l;
                        if (num2 != null) {
                            webLauncherActivity.m1645C(num2.intValue());
                        }
                        break;
                    case 5:
                        C2052b c2052b = (C2052b) obj;
                        String str7 = WebLauncherActivity.f1739l;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            webLauncherActivity.m1648F(c2052b.f5608d, AbstractC1178q.m2075i(new byte[]{-92, 54}, new byte[]{102, -122, 52, 2, -22, -70, -11, 15}, sb));
                        }
                        break;
                    default:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        String str8 = WebLauncherActivity.f1739l;
                        if (hUDMassageObj != null) {
                            webLauncherActivity.m1659y(hUDMassageObj);
                        }
                        break;
                }
            }
        });
        final int i16 = 2;
        c3325cM5245d.f9734g.observe(this, new Observer(this) { // from class: s1.w0

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ WebLauncherActivity f9247b;

            {
                this.f9247b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i17 = i16;
                WebLauncherActivity webLauncherActivity = this.f9247b;
                switch (i17) {
                    case 0:
                        String str = (String) obj;
                        String str2 = WebLauncherActivity.f1739l;
                        if (str != null) {
                            webLauncherActivity.m1643A(str);
                        }
                        break;
                    case 1:
                        C3129a c3129a = (C3129a) obj;
                        String str3 = WebLauncherActivity.f1739l;
                        if (c3129a != null) {
                            webLauncherActivity.m1644B(c3129a);
                        }
                        break;
                    case 2:
                        Location location = (Location) obj;
                        String str4 = WebLauncherActivity.f1739l;
                        if (location != null) {
                            webLauncherActivity.m1660z(location);
                        }
                        break;
                    case 3:
                        Integer num = (Integer) obj;
                        String str5 = WebLauncherActivity.f1739l;
                        if (num != null) {
                            webLauncherActivity.m1647E(num.intValue());
                        }
                        break;
                    case 4:
                        Integer num2 = (Integer) obj;
                        String str6 = WebLauncherActivity.f1739l;
                        if (num2 != null) {
                            webLauncherActivity.m1645C(num2.intValue());
                        }
                        break;
                    case 5:
                        C2052b c2052b = (C2052b) obj;
                        String str7 = WebLauncherActivity.f1739l;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            webLauncherActivity.m1648F(c2052b.f5608d, AbstractC1178q.m2075i(new byte[]{-92, 54}, new byte[]{102, -122, 52, 2, -22, -70, -11, 15}, sb));
                        }
                        break;
                    default:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        String str8 = WebLauncherActivity.f1739l;
                        if (hUDMassageObj != null) {
                            webLauncherActivity.m1659y(hUDMassageObj);
                        }
                        break;
                }
            }
        });
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
        getWindow().setStatusBarColor(0);
        getWindow().setNavigationBarColor(0);
        FrameLayout frameLayout = new FrameLayout(this);
        this.f1741b = frameLayout;
        frameLayout.setBackgroundColor(Color.rgb(8, 12, 18));
        setContentView(this.f1741b);
        FrameLayout frameLayout2 = new FrameLayout(this);
        this.f1742c = frameLayout2;
        this.f1741b.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
        C3153k c3153k = new C3153k(this);
        this.f1743d = c3153k;
        this.f1741b.addView(c3153k, new FrameLayout.LayoutParams(-1, -1));
        C3153k c3153k2 = this.f1743d;
        RunnableC3176v0 runnableC3176v0 = new RunnableC3176v0(this, i14);
        c3153k2.f9068p = runnableC3176v0;
        c3153k2.removeCallbacks(runnableC3176v0);
        c3153k2.post(runnableC3176v0);
        this.f1743d.f9069q = new RunnableC3176v0(this, i10);
        getOnBackPressedDispatcher().addCallback(this, new C3182y0(this));
        ViewCompat.setOnApplyWindowInsetsListener(this.f1741b, new C3042f(i10, this));
        m1651I();
        ViewCompat.requestApplyInsets(this.f1741b);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        C3166q0 c3166q0 = this.f1748i;
        if (c3166q0 != null) {
            c3166q0.m5040D();
        }
        m1656v();
        super.onDestroy();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        m1651I();
        C3166q0 c3166q0 = this.f1748i;
        if (c3166q0 != null) {
            c3166q0.m5075x(true);
        }
        m1654t();
        C3153k c3153k = this.f1743d;
        if (c3153k != null && c3153k.f9061i) {
            c3153k.m5002n();
        }
        Intent intent = getIntent();
        if (intent != null) {
            String str = f1739l;
            if (intent.getBooleanExtra(str, false)) {
                intent.removeExtra(str);
                C3153k c3153k2 = this.f1743d;
                if (c3153k2 != null) {
                    c3153k2.post(new RunnableC3143f(c3153k2, 2));
                }
            }
        }
        try {
            C1652b.m2734a();
            C1652b.m2736d().m1618c(new JSONObject().put(AbstractC1387m.m2421h(new byte[]{18, 29, 85}, new byte[]{113, 112, 49, -109, -86, 44, -115, -21}), AbstractC1387m.m2421h(new byte[]{16, -19, -58, 108, 123, -90, -1, 98, 35, -2, -42, 99, 124, -73}, new byte[]{124, -116, -77, 2, 24, -50, -102, 16})));
        } catch (Exception e) {
            Log.w(AbstractC1387m.m2421h(new byte[]{60, 60, 109, -115, -12, -48, -88, 113, 3, 60, 125, ByteCompanionObject.MIN_VALUE, -10, -47, -81, 100, 2, 45, 118}, new byte[]{107, 89, 15, -63, -107, -91, -58, 18}), AbstractC1387m.m2421h(new byte[]{-114, 91, -45, -127, -26, -104, -111, -88, -94, 78, -44, -119, -16, -52, -35, -89, -72, 84, -34, -121, -20, -98, -111, -76, -88, 91, -39, -106}, new byte[]{-51, 58, -67, -17, -119, -20, -79, -58}), e);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        C3166q0 c3166q0 = this.f1748i;
        if (c3166q0 != null) {
            c3166q0.m5075x(false);
        }
        if (!isChangingConfigurations()) {
            boolean z9 = true;
            AllWidgetServices.f1209h = true;
            AllWidgetServices allWidgetServices = AllWidgetServices.f1208g;
            if (allWidgetServices == null) {
                AllWidgetServices.m1384c(this);
            } else {
                allWidgetServices.f1211b.post(new RunnableC1001e(allWidgetServices, z9, 3));
            }
        }
        super.onStop();
    }

    @Override // p016b1.InterfaceC0878s
    /* JADX INFO: renamed from: p */
    public final void mo995p(String str, String str2, String str3) {
        C1652b.m2734a().m2755j().m1637lo(str, str2, str3);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x007b  */
    /* JADX INFO: renamed from: s */
    public final void m1653s() {
        C3153k c3153k;
        int measuredHeight;
        int i10;
        int i11;
        int i12;
        if (this.f1742c == null || (c3153k = this.f1743d) == null) {
            return;
        }
        int i13 = 0;
        if (c3153k.getVisibility() != 0 || c3153k.f9054b.m5083f()) {
            measuredHeight = 0;
        } else {
            C3153k c3153k2 = this.f1743d;
            EnumC3161o enumC3161oM4999k = c3153k2.m4999k();
            measuredHeight = (enumC3161oM4999k == EnumC3161o.f9136d || enumC3161oM4999k == EnumC3161o.f9137e) ? c3153k2.f9056d.getMeasuredHeight() : c3153k2.f9057e.getMeasuredWidth();
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f1742c.getLayoutParams();
        if (measuredHeight <= 0) {
            i10 = 0;
            i11 = 0;
            i12 = i11;
        } else {
            int iOrdinal = this.f1743d.m4999k().ordinal();
            if (iOrdinal == 0) {
                i11 = 0;
                i12 = 0;
                i13 = measuredHeight + this.f1750k.left;
                i10 = 0;
            } else if (iOrdinal == 1) {
                i11 = measuredHeight + this.f1750k.right;
                i10 = 0;
                i12 = 0;
            } else if (iOrdinal == 2) {
                i10 = measuredHeight + this.f1750k.top;
                i11 = 0;
                i12 = i11;
            } else if (iOrdinal != 3) {
                i10 = 0;
                i11 = 0;
                i12 = i11;
            } else {
                i12 = measuredHeight + this.f1750k.bottom;
                i10 = 0;
                i11 = 0;
            }
        }
        if (layoutParams.leftMargin == i13 && layoutParams.topMargin == i10 && layoutParams.rightMargin == i11 && layoutParams.bottomMargin == i12) {
            m1646D(m1652J());
            return;
        }
        layoutParams.setMargins(i13, i10, i11, i12);
        this.f1742c.setLayoutParams(layoutParams);
        m1646D(m1652J());
    }

    /* JADX INFO: renamed from: t */
    public final void m1654t() {
        boolean z9 = new C3167r(this).f9201a.getBoolean(C3167r.f9198i, true);
        AllWidgetServices.f1209h = z9;
        AllWidgetServices allWidgetServices = AllWidgetServices.f1208g;
        if (allWidgetServices == null) {
            AllWidgetServices.m1384c(this);
        } else {
            allWidgetServices.f1211b.post(new RunnableC1001e(allWidgetServices, z9, 3));
        }
        C3153k c3153k = this.f1743d;
        if (c3153k != null) {
            c3153k.setVisibility((z9 || this.f1749j) ? 8 : 0);
        }
        m1653s();
    }

    /* JADX INFO: renamed from: u */
    public final void m1655u(Insets insets) {
        C3166q0 c3166q0 = this.f1748i;
        if (c3166q0 != null) {
            c3166q0.setPadding(m1657w(24) + insets.left, m1657w(20) + insets.top, m1657w(24) + insets.right, m1657w(24) + insets.bottom);
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m1656v() {
        WebView webView = this.f1744e;
        this.f1744e = null;
        this.f1745f = null;
        if (webView != null) {
            FrameLayout frameLayout = this.f1742c;
            if (frameLayout != null) {
                frameLayout.removeView(webView);
            }
            webView.stopLoading();
            webView.setWebViewClient(null);
            webView.loadUrl(AbstractC1387m.m2421h(new byte[]{112, 104, -116, -126, 34, -57, -114, 106, 112, 100, -120}, new byte[]{17, 10, -29, -9, 86, -3, -20, 6}));
            webView.clearHistory();
            webView.removeAllViews();
            webView.destroy();
        }
    }

    /* JADX INFO: renamed from: w */
    public final int m1657w(int i10) {
        return Math.round(i10 * getResources().getDisplayMetrics().density);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: x */
    public final void m1658x() {
        C3325c c3325cM5245d = C3326d.m5242a().m5245d();
        Integer num = (Integer) c3325cM5245d.f9728a.getValue();
        Integer num2 = (Integer) c3325cM5245d.f9729b.getValue();
        C2052b c2052b = (C2052b) c3325cM5245d.f9730c.getValue();
        HUDMassageObj hUDMassageObj = (HUDMassageObj) c3325cM5245d.f9731d.getValue();
        String str = (String) c3325cM5245d.f9732e.getValue();
        C3129a c3129a = (C3129a) c3325cM5245d.f9733f.getValue();
        Location location = (Location) c3325cM5245d.f9734g.getValue();
        if (num != null) {
            m1647E(num.intValue());
        }
        if (num2 != null) {
            m1645C(num2.intValue());
        }
        if (c2052b != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(c2052b.f5606b);
            m1648F(c2052b.f5608d, AbstractC1178q.m2075i(new byte[]{29, ByteCompanionObject.MIN_VALUE}, new byte[]{-33, 48, -23, -16, 118, 12, 73, 23}, sb));
        }
        if (hUDMassageObj != null) {
            m1659y(hUDMassageObj);
        }
        if (str != null) {
            m1643A(str);
        }
        if (c3129a != null) {
            m1644B(c3129a);
        }
        if (location != null) {
            m1660z(location);
        }
    }

    /* JADX INFO: renamed from: y */
    public final void m1659y(HUDMassageObj hUDMassageObj) {
        try {
            JSONObject jSONObject = new JSONObject();
            String strM2421h = AbstractC1387m.m2421h(new byte[]{-125, -92, -83, -34, 16, -47, 46, -82, -103, -123, -80, -3, 16}, new byte[]{-21, -47, -55, -115, 117, -65, 74, -53});
            HUDMassageObj.HudSenderType hudSenderType = hUDMassageObj.hudSenderType;
            jSONObject.put(strM2421h, hudSenderType == null ? "" : hudSenderType.name());
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-105, 95, 121, -70, 28, 82, -126, 53}, new byte[]{-10, 45, 24, -34, 125, 32, -51, 91}), hUDMassageObj.AradarOn);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{123, -27, -13, 30, 85, -70}, new byte[]{21, -124, -123, 119, 26, -44, -9, 0}), hUDMassageObj.NaviOn);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{86, -97, -127, 121, 8, 11, -85, -30}, new byte[]{34, -22, -13, 23, 92, 114, -37, -121}), hUDMassageObj.v_mTurnType);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{99, -33, 123, 64, -21, -72, ByteCompanionObject.MIN_VALUE, -23}, new byte[]{23, -86, 9, 46, -81, -47, -13, -99}), hUDMassageObj.v_mTurnDis);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-19, -109, 100, -54, 72, -89, -31, 11, -20, -126}, new byte[]{-97, -10, 9, -85, 33, -55, -91, 98}), hUDMassageObj.v_mRemainDis);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{58, -75, -113, -2, 94, -37, -22, 54}, new byte[]{84, -48, -9, -118, 12, -76, -117, 82}), hUDMassageObj.v_mNextRoad);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{32, 52, 44, 0, 4, -44, 52, 79, 58, 48}, new byte[]{83, 68, 73, 101, 96, -104, 93, 34}), hUDMassageObj.getSpeedlimit());
            mo988e(AbstractC1387m.m2421h(new byte[]{-65, -35, -39}, new byte[]{-41, -88, -67, -35, 39, -72, -7, -45}), jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: z */
    public final void m1660z(Location location) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-112, -90, -69}, new byte[]{-4, -57, -49, -23, -55, -11, -78, kotlin.p118io.encoding.Base64.padSymbol}), location.getLatitude());
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-60, 88, 73}, new byte[]{-88, 55, 39, 39, 8, -121, 33, 111}), location.getLongitude());
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{22, -71, -106, -102, -106}, new byte[]{101, -55, -13, -1, -14, -39, -12, 105}), location.getSpeed());
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-118, -66, 84, 88, -123, 42, -76}, new byte[]{-30, -37, 53, 60, -20, 68, -45, 15}), location.getBearing());
            mo988e(AbstractC1387m.m2421h(new byte[]{-6, 10, -94}, new byte[]{-99, 122, -47, -83, 112, 90, -51, 65}), jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    @Override // androidx.core.app.ComponentActivity, p016b1.InterfaceC0878s
    /* JADX INFO: renamed from: b */
    public final void mo464b() {
    }

    @Override // p016b1.InterfaceC0878s
    /* JADX INFO: renamed from: c */
    public final void mo987c() {
    }
}
