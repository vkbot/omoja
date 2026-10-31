package com.example.navistart.home;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap$CompressFormat;
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
import android.widget.FrameLayout$LayoutParams;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import b1.l;
import b1.n;
import b1.r;
import b1.s;
import c7.e;
import com.example.navistart.AllWidgetServices;
import com.example.navistart.SystemMessageReceiver;
import com.example.navistart.W;
import com.example.navistart.cores.HUDMassageObj;
import com.example.navistart.cores.HUDMassageObj$HudSenderType;
import com.google.protobuf.q;
import e0.m;
import h0.b;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.ByteCompanionObject;
import n.p;
import n0.g;
import org.json.JSONObject;
import q0.f;
import s0.a;
import s1.k;
import s1.m0;
import s1.o;
import s1.q0;
import s1.v0;
import s1.w0;
import s1.x0;
import s1.y0;
import s1.z0;
import v1.c;
import v1.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class WebLauncherActivity extends AppCompatActivity implements s {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f910l = m.h(new byte[]{-83, ByteCompanionObject.MAX_VALUE, -79, -5, 39, 112, -43, -85, -84, 108, -68, -16, 10, 67, -57, -69, -74, 123, -67, -5, 31, 111}, new byte[]{-62, 15, -44, -107, 120, 28, -76, -34});

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f911m = m.h(new byte[]{51, -114, -120, 26, 82, 126, 46, -44, 47, ByteCompanionObject.MIN_VALUE, -114, 1, 95, 9, 65, -78, 85}, new byte[]{96, -53, -53, 79, 0, 59, 113, ByteCompanionObject.MIN_VALUE});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FrameLayout f912b;
    public FrameLayout c;
    public k d;
    public WebView e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f913f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f914g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f915h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public q0 f916i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f917j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Insets f918k = Insets.NONE;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void A(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(m.h(new byte[]{109, -94, -59, -42, 75}, new byte[]{27, -61, -87, -93, 46, 4, 17, 45}), str);
            e(m.h(new byte[]{16, -95, -89, -84, 111, 64, 90}, new byte[]{92, -50, -64, -24, 14, 52, 59, -51}), jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void B(a aVar) {
        q0 q0Var = this.f916i;
        if (q0Var != null) {
            q0Var.f5187y = aVar;
            q0Var.I(m0.d);
        }
        try {
            JSONObject jSONObject = new JSONObject();
            String strH = m.h(new byte[]{-80, 1, -105, 78, -110, 59, 75, 32}, new byte[]{-32, 109, -10, 55, -63, 79, 42, 84});
            g gVar = aVar.f5041a;
            String strEncodeToString = "";
            jSONObject.put(strH, gVar == null ? "" : gVar.name());
            jSONObject.put(m.h(new byte[]{-15, -43, 108, 81, 82, -30, 4, -71}, new byte[]{-94, -70, 2, 54, 28, -125, 105, -36}), aVar.f5042b);
            jSONObject.put(m.h(new byte[]{-75, 44, -97, -109, -3, -81, 46, -117, -107, 55}, new byte[]{-26, 67, -15, -12, -68, -35, 90, -30}), aVar.c);
            jSONObject.put(m.h(new byte[]{93, -95, -107, -9, 80, -19, 69, 40, 99}, new byte[]{14, -50, -5, -112, 17, -127, 39, 93}), aVar.d);
            String strH2 = m.h(new byte[]{-22, 43, -121, 94, -119, -22, 90, 22, -44, 20, ByteCompanionObject.MIN_VALUE, 90, -68, -13, 74, 6}, new byte[]{-71, 68, -23, 57, -56, -122, 56, 99});
            Bitmap bitmap = aVar.e;
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = r.f279s;
            if (bitmap != null) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap$CompressFormat.PNG, 30, byteArrayOutputStream);
                strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
            }
            jSONObject.put(strH2, strEncodeToString);
            jSONObject.put(m.h(new byte[]{117, 45, 26, 46, -73}, new byte[]{33, 95, 106, 65, -60, 62, -17, 126}), aVar.f5043f);
            jSONObject.put(m.h(new byte[]{-91, -9, 82, -96, 80}, new byte[]{-15, -123, 54, -43, 34, 13, kotlin.io.encoding.Base64.padSymbol, -14}), aVar.f5044g);
            e(m.h(new byte[]{-61, -44, -118, 36, 50, -86, -127, -76, -63}, new byte[]{-82, -95, -7, 77, 81, -29, -17, -46}), jSONObject.toString());
        } catch (Exception e) {
            Log.w(m.h(new byte[]{25, 102, -59, 26, -48, 49, -86, 104, 38, 102, -43, 23, -46, 48, -83, 125, 39, 119, -34}, new byte[]{78, 3, -89, 86, -79, 68, -60, 11}), m.h(new byte[]{98, 44, 4, -55, 73, ByteCompanionObject.MAX_VALUE, 88, -126, 88, 98, 21, -34, 71, 118, 17, -123, 95, 98, 8, -34, 86, 115, 27, -42, 83, 35, 17, -54}, new byte[]{55, 66, 101, -85, 37, 26, 120, -10}), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void C(int i9) {
        String strH = m.h(new byte[]{50, 79, 98}, new byte[]{64, 63, 15, 41, 65, -33, 30, 81});
        StringBuilder sb = new StringBuilder();
        q.t(new byte[]{102, -96, 100, -34, -83, 15, 42, -23, 39}, new byte[]{29, -126, 18, -65, -63, 122, 79, -53}, sb, i9);
        sb.append(m.h(new byte[]{43}, new byte[]{86, 123, 68, 67, 87, -54, 81, -113}));
        e(strH, sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void D(Insets insets) {
        WebView webView = this.e;
        u(insets);
        if (webView == null) {
            return;
        }
        float f8 = getResources().getDisplayMetrics().density;
        webView.evaluateJavascript(m.h(new byte[]{-123, 33, 100, 106, -101, 113, 20, -92, -111, 60, 67, 96, -121, 99, 78, -99, -44, 110, 125, 103, -102, 98, 85, -103, -36, 2, 105, 122, -67, 104, 73, -117, -122, 59, 34}, new byte[]{-14, 72, 10, 14, -12, 6, 58, -18}) + (insets.left / f8) + m.h(new byte[]{-60}, new byte[]{-24, -18, 41, 42, -114, 77, -71, 80}) + (insets.top / f8) + m.h(new byte[]{91}, new byte[]{119, 51, -55, 22, -71, -78, 101, -100}) + (insets.right / f8) + m.h(new byte[]{-56}, new byte[]{-28, 86, 56, 43, 76, 89, 99, -1}) + (insets.bottom / f8) + m.h(new byte[]{24, -67}, new byte[]{49, -122, -92, 122, -117, -9, 101, -4}), null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void E(int i9) {
        String strH = m.h(new byte[]{-13, -55, 4, -50, 77}, new byte[]{ByteCompanionObject.MIN_VALUE, -71, 97, -85, 41, -10, -114, 110});
        StringBuilder sb = new StringBuilder();
        q.t(new byte[]{-62, -49, -72, 46, 85, 65, -3, -126, -125}, new byte[]{-71, -19, -50, 79, 57, 52, -104, -96}, sb, i9);
        sb.append(m.h(new byte[]{-65}, new byte[]{-62, -16, kotlin.io.encoding.Base64.padSymbol, 99, -1, 100, -32, -38}));
        e(strH, sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void F(int i9, String str) {
        q0 q0Var = this.f916i;
        if (q0Var != null) {
            q0Var.w = TextUtils.isEmpty(str) ? m.h(new byte[]{99, 41, 109, -17, 29}, new byte[]{-127, -87, -7, 45, -83, ByteCompanionObject.MAX_VALUE, -21, 32}) : str;
            q0Var.f5186x = i9;
            q0Var.I(m0.c);
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(m.h(new byte[]{-52, -104, 102, 6}, new byte[]{-72, -3, 11, 118, -59, -29, 92, -19}), str);
            jSONObject.put(m.h(new byte[]{-8, -80, kotlin.io.encoding.Base64.padSymbol, 71}, new byte[]{-111, -45, 82, 41, 15, -25, -69, -81}), i9);
            e(m.h(new byte[]{-110, -11, 43, -2, -16, 68, -45}, new byte[]{-27, -112, 74, -118, -104, 33, -95, -14}), jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void G(Class cls, Bundle bundle) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        Intent intent = new Intent(this, (Class<?>) W.class);
        intent.putExtra(m.h(new byte[]{17, 103, 20, 86, -15, -90, -24, 85, 40, 71, 32, ByteCompanionObject.MAX_VALUE, -61, -105, -33, 113, 50}, new byte[]{119, 21, 117, 49, -100, -61, -122, 33}), m.h(new byte[]{108, 73, 117, -103, 53, 15, -113, -28, 113, 91, 100, -109, 63, 15}, new byte[]{62, 28, 59, -58, 113, 70, -50, -88}));
        intent.putExtra(m.h(new byte[]{-86, -3, -8, 44, 114, 84, 87, -55, -109, -20, -11, 42, 108, 66}, new byte[]{-52, -113, -103, 75, 31, 49, 57, -67}), cls.getName());
        intent.putExtra(m.h(new byte[]{-75, 14, -28, -79, -33, -43, -94, 116, -116, 29, -9, -79, -63}, new byte[]{-45, 124, -123, -42, -78, -80, -52, 0}), bundle);
        intent.addFlags(134217728);
        startActivity(intent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void H(String str) {
        v();
        this.f914g = s1.s.c.equals(s1.s.a()) ? m.h(new byte[]{4, -72, -91, -27, -60, -32, 76, -21, 23, -72, -95, -37, -35, -19, 77, -38, 3, -75, -90, -10}, new byte[]{96, -35, -61, -124, -79, -116, 56, -76}) : this.f915h;
        q0 q0Var = this.f916i;
        if (q0Var != null) {
            q0Var.D();
        }
        q0 q0Var2 = new q0(this, new p(9, this));
        this.c.removeAllViews();
        this.c.addView(q0Var2, new FrameLayout$LayoutParams(-1, -1));
        this.f916i = q0Var2;
        u(J());
        x();
        if (str != null) {
            y5.k.x(this, str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:12:0x0025  */
    public final void I() {
        String string;
        String strA = s1.s.a();
        String str = s1.s.c;
        if (str.equals(strA)) {
            this.f915h = null;
            if (!strA.equals(this.f914g) || this.f916i == null) {
                H(null);
                return;
            }
            return;
        }
        if (str.equals(strA)) {
            string = null;
        } else {
            try {
                File fileB = s1.s.b(this, strA);
                if (fileB == null || !fileB.isFile()) {
                    string = null;
                } else {
                    string = Uri.fromFile(fileB).toString();
                }
            } catch (Exception unused) {
            }
        }
        if (string == null) {
            b.o().saveString(m.h(new byte[]{-74, -120, 15, 90, 125, -62, -104, 116, -111, -108, 59, 75, 83, -13, -97, 117, -104, -103, kotlin.io.encoding.Base64.padSymbol, 77, 64, -63, -113, 111, -113, -104, 54, 88, 108, -51, -95, 126, -126}, new byte[]{-5, -15, 88, 63, 31, -110, -22, 27}), m.h(new byte[]{123, -67, -7, -42, 4, -30, 79, -9, 104, -67, -3, -24, 29, -17, 78, -58, 124, -80, -6, -59}, new byte[]{31, -40, -97, -73, 113, -114, 59, -88}));
            this.f915h = null;
            H(m.h(new byte[]{-79, 81, -104, -89, 51, 104, 100, -49, -80, 126, 104, -57, 81, 0, 63, -92, -48, 36, -56, -57, 83, 1, 9, -92, -36, 37, -10, -57, 90, -15, 101, -10, -79, 64, -104, -85, 50, 90, -108, -92, -36, 37, -3, 55, 51, 108, 100, -60, -79, 76, -104, -93, 51, 100, 100, -55, -80, 126, 102, 55, 51, 67, 100, -50, -79, 78, -103, -103, 50, 86, 100, -63, -79, 72, 104, -58, 98, 0, 54, -92, -47, 37, -11, -57, 87, 1, 4, -91, -31, 36, -54, -57, 94, 0, 63, -92, -40, -43, -103, -102, 51, 107, 101, -12, -79, 69, -104, -86, -51}, new byte[]{97, -11, 72, 23, -29, -47, -76, 116}));
            return;
        }
        if (!strA.equals(this.f915h) || this.f916i == null) {
            if (strA.equals(this.f914g) && string.equals(this.f913f) && this.e != null) {
                return;
            }
            v();
            try {
                WebView webView = new WebView(this);
                this.e = webView;
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
                webView.setWebViewClient(new z0(this));
                String str2 = f911m;
                b.a();
                webView.addJavascriptInterface(new l(str2, b.f(), this), m.h(new byte[]{-90, -122, -6, 108, -70, -127, -64, 84, -73, -127}, new byte[]{-57, -24, -98, 30, -43, -24, -92, 21}));
                this.c.removeAllViews();
                this.c.addView(webView, new FrameLayout$LayoutParams(-1, -1));
                q0 q0Var = this.f916i;
                if (q0Var != null) {
                    q0Var.D();
                }
                this.f916i = null;
                this.f915h = null;
                this.f914g = strA;
                this.f913f = string;
                webView.loadUrl(string);
                D(J());
            } catch (Throwable unused2) {
                this.f915h = strA;
                H(m.h(new byte[]{106, 88, -19, 65, -117, 123, -106, 32, 106, 122, -20, 119, -117, 119, -105, 16, 107, 69, 28, 26, -23, 26, -14, 112, 11, -25, -19, 72, -117, ByteCompanionObject.MAX_VALUE, -105, 28, 106, 122, 28, 26, -26, 26, -14, 112, 14, 26, -126, 27, -38, 27, -59, 113, 57, 26, -125, 26, -26, 26, -9, -114, -102, 26, -94, 27, -39, 26, -3, 113, 58, 27, -73, 27, -39, -22, -105, 29, 106, 122, -20, 126, -117, ByteCompanionObject.MAX_VALUE, -105, 22, 106, 119, -19, 65, -117, 115, 103, 112, 7, 26, -116, 27, -39, 26, -1, 112, 8, 26, -127, 27, -48, 26, -2, ByteCompanionObject.MIN_VALUE, 107, 71, -20, 112, -118, 74, -105, 16, 106, 119, 18}, new byte[]{-70, -54, 60, -54, 91, -54, 71, -96}));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Insets J() {
        k kVar = this.d;
        if (kVar == null || kVar.getVisibility() != 0 || kVar.f5106b.f()) {
            return this.f918k;
        }
        int iOrdinal = this.d.k().ordinal();
        if (iOrdinal == 0) {
            Insets insets = this.f918k;
            return Insets.of(0, insets.top, insets.right, insets.bottom);
        }
        if (iOrdinal == 1) {
            Insets insets2 = this.f918k;
            return Insets.of(insets2.left, insets2.top, 0, insets2.bottom);
        }
        if (iOrdinal == 2) {
            Insets insets3 = this.f918k;
            return Insets.of(insets3.left, 0, insets3.right, insets3.bottom);
        }
        if (iOrdinal != 3) {
            throw new IncompatibleClassChangeError();
        }
        Insets insets4 = this.f918k;
        return Insets.of(insets4.left, insets4.top, insets4.right, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.s
    public final void a() {
        WebView webView = this.e;
        if (webView != null) {
            webView.post(new v0(this, 1));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.s
    public final void e(String str, String str2) {
        WebView webView = this.e;
        if (webView == null) {
            return;
        }
        String strQuote = JSONObject.quote(str);
        if (str2 == null || str2.trim().isEmpty()) {
            str2 = m.h(new byte[]{120, 105}, new byte[]{3, 20, ByteCompanionObject.MIN_VALUE, -106, 38, 43, -103, 10});
        }
        webView.post(new n(this, strQuote, str2, 14));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i9, int i10, Intent intent) {
        String stringExtra;
        super.onActivityResult(i9, i10, intent);
        if (i9 != 7412 || i10 != -1 || intent == null || (stringExtra = intent.getStringExtra(m.h(new byte[]{-49, 87, 28, 5, 35, 119, -44, -126, -29, 84, 25, 12, 37}, new byte[]{-68, 50, 112, 96, 64, 3, -79, -26}))) == null) {
            return;
        }
        new Thread(new x0(1, this, stringExtra), m.h(new byte[]{2, 122, -51, -13, 28, 114, -41, 58, 32, 119, -55, -5, 26, 114, -14, 18, 33, 107, -42, -24, 30}, new byte[]{76, 27, -71, -102, 106, 23, ByteCompanionObject.MIN_VALUE, 91})).start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            new SystemMessageReceiver().onReceive(getApplicationContext(), new Intent(m.h(new byte[]{-20, -17, -20, 22, -124, -74, -48, 89, -28, -17, -4, 1, -123, -85, -102, 22, -18, -11, -31, 11, -123, -15, -10, 56, -62, -43, -41, 39, -92, -110, -28, 59, -56, -43, -51, 32}, new byte[]{-115, -127, -120, 100, -21, -33, -76, 119})));
        } catch (RuntimeException e) {
            Log.e(m.h(new byte[]{30, 29, -116, -6, 41, -111, -43, -73, 33, 29, -100, -9, 43, -112, -46, -94, 32, 12, -105}, new byte[]{73, 120, -18, -74, 72, -28, -69, -44}), m.h(new byte[]{-57, 6, 96, 42, -92, 17, -119, -24, -3, 72, 114, 60, -87, 6, -35, -68, -13, 24, 113, 36, -95, 23, -56, -24, -5, 7, 111, 104, -69, 17, -37, -22, -5, 11, 100, 59}, new byte[]{-110, 104, 1, 72, -56, 116, -87, -100}), e);
        }
        c cVarD = d.a().d();
        cVarD.f5511a.observe(this, new w0(this, 3));
        cVarD.f5512b.observe(this, new w0(this, 4));
        cVarD.c.observe(this, new w0(this, 5));
        cVarD.d.observe(this, new w0(this, 6));
        cVarD.e.observe(this, new w0(this, 0));
        cVarD.f5513f.observe(this, new w0(this, 1));
        cVarD.f5514g.observe(this, new w0(this, 2));
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
        getWindow().setStatusBarColor(0);
        getWindow().setNavigationBarColor(0);
        FrameLayout frameLayout = new FrameLayout(this);
        this.f912b = frameLayout;
        frameLayout.setBackgroundColor(Color.rgb(8, 12, 18));
        setContentView(this.f912b);
        FrameLayout frameLayout2 = new FrameLayout(this);
        this.c = frameLayout2;
        this.f912b.addView(frameLayout2, new FrameLayout$LayoutParams(-1, -1));
        k kVar = new k(this);
        this.d = kVar;
        this.f912b.addView(kVar, new FrameLayout$LayoutParams(-1, -1));
        k kVar2 = this.d;
        v0 v0Var = new v0(this, 0);
        kVar2.f5117p = v0Var;
        kVar2.removeCallbacks(v0Var);
        kVar2.post(v0Var);
        this.d.f5118q = new v0(this, 3);
        getOnBackPressedDispatcher().addCallback(this, new y0(this));
        ViewCompat.setOnApplyWindowInsetsListener(this.f912b, new f(3, this));
        I();
        ViewCompat.requestApplyInsets(this.f912b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        q0 q0Var = this.f916i;
        if (q0Var != null) {
            q0Var.D();
        }
        v();
        super.onDestroy();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        I();
        q0 q0Var = this.f916i;
        if (q0Var != null) {
            q0Var.x(true);
        }
        t();
        k kVar = this.d;
        if (kVar != null && kVar.f5110i) {
            kVar.n();
        }
        Intent intent = getIntent();
        if (intent != null) {
            String str = f910l;
            if (intent.getBooleanExtra(str, false)) {
                intent.removeExtra(str);
                k kVar2 = this.d;
                if (kVar2 != null) {
                    kVar2.post(new s1.f(kVar2, 2));
                }
            }
        }
        try {
            b.a();
            b.d().c(new JSONObject().put(m.h(new byte[]{18, 29, 85}, new byte[]{113, 112, 49, -109, -86, 44, -115, -21}), m.h(new byte[]{16, -19, -58, 108, 123, -90, -1, 98, 35, -2, -42, 99, 124, -73}, new byte[]{124, -116, -77, 2, 24, -50, -102, 16})));
        } catch (Exception e) {
            Log.w(m.h(new byte[]{60, 60, 109, -115, -12, -48, -88, 113, 3, 60, 125, ByteCompanionObject.MIN_VALUE, -10, -47, -81, 100, 2, 45, 118}, new byte[]{107, 89, 15, -63, -107, -91, -58, 18}), m.h(new byte[]{-114, 91, -45, -127, -26, -104, -111, -88, -94, 78, -44, -119, -16, -52, -35, -89, -72, 84, -34, -121, -20, -98, -111, -76, -88, 91, -39, -106}, new byte[]{-51, 58, -67, -17, -119, -20, -79, -58}), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        q0 q0Var = this.f916i;
        if (q0Var != null) {
            q0Var.x(false);
        }
        if (!isChangingConfigurations()) {
            AllWidgetServices.f632h = true;
            AllWidgetServices allWidgetServices = AllWidgetServices.f631g;
            if (allWidgetServices == null) {
                AllWidgetServices.c(this);
            } else {
                allWidgetServices.f634b.post(new e(allWidgetServices, true, 3));
            }
        }
        super.onStop();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.s
    public final void p(String str, String str2, String str3) {
        b.a().j().lo(str, str2, str3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:35:0x007b  */
    public final void s() {
        k kVar;
        int measuredHeight;
        int i9;
        int i10;
        int i11;
        if (this.c == null || (kVar = this.d) == null) {
            return;
        }
        int i12 = 0;
        if (kVar.getVisibility() != 0 || kVar.f5106b.f()) {
            measuredHeight = 0;
        } else {
            k kVar2 = this.d;
            o oVarK = kVar2.k();
            measuredHeight = (oVarK == o.d || oVarK == o.e) ? kVar2.d.getMeasuredHeight() : kVar2.e.getMeasuredWidth();
        }
        FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) this.c.getLayoutParams();
        if (measuredHeight <= 0) {
            i9 = 0;
            i10 = 0;
            i11 = i10;
        } else {
            int iOrdinal = this.d.k().ordinal();
            if (iOrdinal == 0) {
                i10 = 0;
                i11 = 0;
                i12 = measuredHeight + this.f918k.left;
                i9 = 0;
            } else if (iOrdinal == 1) {
                i10 = measuredHeight + this.f918k.right;
                i9 = 0;
                i11 = 0;
            } else if (iOrdinal == 2) {
                i9 = measuredHeight + this.f918k.top;
                i10 = 0;
                i11 = i10;
            } else if (iOrdinal != 3) {
                i9 = 0;
                i10 = 0;
                i11 = i10;
            } else {
                i11 = measuredHeight + this.f918k.bottom;
                i9 = 0;
                i10 = 0;
            }
        }
        if (frameLayout$LayoutParams.leftMargin == i12 && frameLayout$LayoutParams.topMargin == i9 && frameLayout$LayoutParams.rightMargin == i10 && frameLayout$LayoutParams.bottomMargin == i11) {
            D(J());
            return;
        }
        frameLayout$LayoutParams.setMargins(i12, i9, i10, i11);
        this.c.setLayoutParams(frameLayout$LayoutParams);
        D(J());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t() {
        boolean z8 = new s1.r(this).f5196a.getBoolean(s1.r.f5193i, true);
        AllWidgetServices.f632h = z8;
        AllWidgetServices allWidgetServices = AllWidgetServices.f631g;
        if (allWidgetServices == null) {
            AllWidgetServices.c(this);
        } else {
            allWidgetServices.f634b.post(new e(allWidgetServices, z8, 3));
        }
        k kVar = this.d;
        if (kVar != null) {
            kVar.setVisibility((z8 || this.f917j) ? 8 : 0);
        }
        s();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u(Insets insets) {
        q0 q0Var = this.f916i;
        if (q0Var != null) {
            q0Var.setPadding(w(24) + insets.left, w(20) + insets.top, w(24) + insets.right, w(24) + insets.bottom);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v() {
        WebView webView = this.e;
        this.e = null;
        this.f913f = null;
        if (webView != null) {
            FrameLayout frameLayout = this.c;
            if (frameLayout != null) {
                frameLayout.removeView(webView);
            }
            webView.stopLoading();
            webView.setWebViewClient(null);
            webView.loadUrl(m.h(new byte[]{112, 104, -116, -126, 34, -57, -114, 106, 112, 100, -120}, new byte[]{17, 10, -29, -9, 86, -3, -20, 6}));
            webView.clearHistory();
            webView.removeAllViews();
            webView.destroy();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int w(int i9) {
        return Math.round(i9 * getResources().getDisplayMetrics().density);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v3, resolved type: T */
    /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: T */
    /* JADX DEBUG: Multi-variable search result rejected for r2v1, resolved type: T */
    /* JADX DEBUG: Multi-variable search result rejected for r3v1, resolved type: T */
    /* JADX DEBUG: Multi-variable search result rejected for r4v1, resolved type: T */
    /* JADX DEBUG: Multi-variable search result rejected for r5v1, resolved type: T */
    /* JADX DEBUG: Multi-variable search result rejected for r6v1, resolved type: T */
    /* JADX WARN: Multi-variable type inference failed */
    public final void x() {
        c cVarD = d.a().d();
        Integer num = (Integer) cVarD.f5511a.getValue();
        Integer num2 = (Integer) cVarD.f5512b.getValue();
        k7.b bVar = (k7.b) cVarD.c.getValue();
        HUDMassageObj hUDMassageObj = (HUDMassageObj) cVarD.d.getValue();
        String str = (String) cVarD.e.getValue();
        a aVar = (a) cVarD.f5513f.getValue();
        Location location = (Location) cVarD.f5514g.getValue();
        if (num != null) {
            E(num.intValue());
        }
        if (num2 != null) {
            C(num2.intValue());
        }
        if (bVar != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(bVar.f3201b);
            F(bVar.d, q.i(new byte[]{29, ByteCompanionObject.MIN_VALUE}, new byte[]{-33, 48, -23, -16, 118, 12, 73, 23}, sb));
        }
        if (hUDMassageObj != null) {
            y(hUDMassageObj);
        }
        if (str != null) {
            A(str);
        }
        if (aVar != null) {
            B(aVar);
        }
        if (location != null) {
            z(location);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y(HUDMassageObj hUDMassageObj) {
        try {
            JSONObject jSONObject = new JSONObject();
            String strH = m.h(new byte[]{-125, -92, -83, -34, 16, -47, 46, -82, -103, -123, -80, -3, 16}, new byte[]{-21, -47, -55, -115, 117, -65, 74, -53});
            HUDMassageObj$HudSenderType hUDMassageObj$HudSenderType = hUDMassageObj.hudSenderType;
            jSONObject.put(strH, hUDMassageObj$HudSenderType == null ? "" : hUDMassageObj$HudSenderType.name());
            jSONObject.put(m.h(new byte[]{-105, 95, 121, -70, 28, 82, -126, 53}, new byte[]{-10, 45, 24, -34, 125, 32, -51, 91}), hUDMassageObj.AradarOn);
            jSONObject.put(m.h(new byte[]{123, -27, -13, 30, 85, -70}, new byte[]{21, -124, -123, 119, 26, -44, -9, 0}), hUDMassageObj.NaviOn);
            jSONObject.put(m.h(new byte[]{86, -97, -127, 121, 8, 11, -85, -30}, new byte[]{34, -22, -13, 23, 92, 114, -37, -121}), hUDMassageObj.v_mTurnType);
            jSONObject.put(m.h(new byte[]{99, -33, 123, 64, -21, -72, ByteCompanionObject.MIN_VALUE, -23}, new byte[]{23, -86, 9, 46, -81, -47, -13, -99}), hUDMassageObj.v_mTurnDis);
            jSONObject.put(m.h(new byte[]{-19, -109, 100, -54, 72, -89, -31, 11, -20, -126}, new byte[]{-97, -10, 9, -85, 33, -55, -91, 98}), hUDMassageObj.v_mRemainDis);
            jSONObject.put(m.h(new byte[]{58, -75, -113, -2, 94, -37, -22, 54}, new byte[]{84, -48, -9, -118, 12, -76, -117, 82}), hUDMassageObj.v_mNextRoad);
            jSONObject.put(m.h(new byte[]{32, 52, 44, 0, 4, -44, 52, 79, 58, 48}, new byte[]{83, 68, 73, 101, 96, -104, 93, 34}), hUDMassageObj.getSpeedlimit());
            e(m.h(new byte[]{-65, -35, -39}, new byte[]{-41, -88, -67, -35, 39, -72, -7, -45}), jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void z(Location location) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(m.h(new byte[]{-112, -90, -69}, new byte[]{-4, -57, -49, -23, -55, -11, -78, kotlin.io.encoding.Base64.padSymbol}), location.getLatitude());
            jSONObject.put(m.h(new byte[]{-60, 88, 73}, new byte[]{-88, 55, 39, 39, 8, -121, 33, 111}), location.getLongitude());
            jSONObject.put(m.h(new byte[]{22, -71, -106, -102, -106}, new byte[]{101, -55, -13, -1, -14, -39, -12, 105}), location.getSpeed());
            jSONObject.put(m.h(new byte[]{-118, -66, 84, 88, -123, 42, -76}, new byte[]{-30, -37, 53, 60, -20, 68, -45, 15}), location.getBearing());
            e(m.h(new byte[]{-6, 10, -94}, new byte[]{-99, 122, -47, -83, 112, 90, -51, 65}), jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    @Override // androidx.core.app.ComponentActivity, b1.s
    public final void b() {
    }

    @Override // b1.s
    public final void c() {
    }
}
