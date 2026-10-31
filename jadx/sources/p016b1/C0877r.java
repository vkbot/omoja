package p016b1;

import android.content.Context;
import android.content.IntentFilter;
import android.location.Location;
import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.example.navistart.cores.HUDMassageObj;
import com.google.protobuf.AbstractC1178q;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONException;
import org.json.JSONObject;
import p005a4.RunnableC0010c;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.AbstractC1434w;
import p047e0.C1440x1;
import p078h0.C1652b;
import p206u0.C3277a;

/* JADX INFO: renamed from: b1.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0877r implements InterfaceC0878s, InterfaceC0864e {

    /* JADX INFO: renamed from: s */
    public static final ScheduledThreadPoolExecutor f623s;

    /* JADX INFO: renamed from: c */
    public WebView f625c;

    /* JADX INFO: renamed from: d */
    public C0867h f626d;

    /* JADX INFO: renamed from: e */
    public final Context f627e;

    /* JADX INFO: renamed from: g */
    public C0865f f629g;

    /* JADX INFO: renamed from: h */
    public volatile boolean f630h;

    /* JADX INFO: renamed from: j */
    public byte[] f632j;

    /* JADX INFO: renamed from: k */
    public long f633k;

    /* JADX INFO: renamed from: l */
    public long f634l;

    /* JADX INFO: renamed from: m */
    public long f635m;

    /* JADX INFO: renamed from: n */
    public long f636n;

    /* JADX INFO: renamed from: o */
    public boolean f637o;

    /* JADX INFO: renamed from: p */
    public long f638p;

    /* JADX INFO: renamed from: r */
    public boolean f640r;

    /* JADX INFO: renamed from: b */
    public boolean f624b = false;

    /* JADX INFO: renamed from: f */
    public String f628f = "";

    /* JADX INFO: renamed from: i */
    public final Object f631i = new Object();

    /* JADX INFO: renamed from: q */
    public int f639q = Integer.MIN_VALUE;

    static {
        AbstractC1387m.m2421h(new byte[]{77, 54, -97, -96, -82, -107, 43, 4, 81, 56, -103, -69, -93, -30, 68, 98, 43}, new byte[]{30, 115, -36, -11, -4, -48, 116, 80});
        f623s = AbstractC1434w.m2482c(1, AbstractC1387m.m2421h(new byte[]{-18, -94, 113, -7, -56, 78, 76, 83, -51, -111, 122, -53, -42}, new byte[]{-71, -57, 19, -82, -95, 42, 43, 54}));
    }

    public C0877r(Context context, WebView webView, C0879t c0879t) {
        this.f627e = context;
        String str = c0879t.f642b;
        String str2 = c0879t.f643c;
        this.f625c = webView;
        webView.setBackgroundColor(0);
        this.f625c.setLayerType(2, null);
        WebSettings settings = this.f625c.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setBlockNetworkLoads(false);
        settings.setBlockNetworkImage(false);
        settings.setAllowFileAccess(true);
        settings.setAllowContentAccess(true);
        settings.setAllowUniversalAccessFromFileURLs(true);
        settings.setAllowFileAccessFromFileURLs(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        this.f625c.setWebChromeClient(new WebChromeClient());
        this.f625c.setWebViewClient(new WebViewClient());
        WebView webView2 = this.f625c;
        String strM2421h = AbstractC1387m.m2421h(new byte[]{66, -97, Base64.padSymbol, -75, -58, -80, 26, -10, 94, -111, 59, -82, -53, -57, 117, -112, 36}, new byte[]{17, -38, 126, -32, -108, -11, 69, -94});
        C1652b.m2734a();
        webView2.addJavascriptInterface(new C0871l(strM2421h, C1652b.m2737f(), this), AbstractC1387m.m2421h(new byte[]{-114, -117, -8, -120, 54, -36, 123, -7, -97, -116}, new byte[]{-17, -27, -100, -6, 89, -75, 31, -72}));
        File file = new File(context.getFilesDir(), c0879t.f641a);
        C1652b.m2734a();
        String strLoadString = C1652b.m2745o().loadString(str, str2);
        File file2 = new File(file, strLoadString);
        if (new File(file2, AbstractC1387m.m2421h(new byte[]{-36, -106, -107, 59, -75, 122, 126, -69, -40, -108}, new byte[]{-75, -8, -15, 94, -51, 84, 22, -49})).isFile()) {
            str2 = strLoadString;
        } else {
            file2 = new File(file, str2);
        }
        if (!new File(file2, AbstractC1387m.m2421h(new byte[]{-14, -7, -45, -65, -100, -8, 77, -93, -10, -5}, new byte[]{-101, -105, -73, -38, -28, -42, 37, -41})).isFile() && (AbstractC1387m.m2421h(new byte[]{56, -51, -62, -111, -65, 18, -57, -68, 43, -51, -58, -81, -88, 18, -46, ByteCompanionObject.MIN_VALUE, 55}, new byte[]{92, -88, -92, -16, -54, 126, -77, -29}).equals(str2) || AbstractC1387m.m2421h(new byte[]{-104, -53, 23, 102, -111, 54, 38, -107, -108, -37, 21}, new byte[]{-4, -82, 113, 7, -28, 90, 82, -54}).equals(str2))) {
            try {
                new C0872m(context, str2 + AbstractC1387m.m2421h(new byte[]{-4, -67, 8, 29}, new byte[]{-46, -57, 97, 109, 83, -26, 51, -110}), file, str2).m982g();
            } catch (IOException e) {
                Log.e(AbstractC1387m.m2421h(new byte[]{116, -92, 30, -60, 29, 53, -70, -60, 87, -105, 21, -10, 3}, new byte[]{35, -63, 124, -109, 116, 81, -35, -95}), AbstractC1387m.m2421h(new byte[]{75, -38, 99, 42, 14, ByteCompanionObject.MAX_VALUE, 9, -7, 122, -34, 125, 37, 19, 110, 9}, new byte[]{8, -69, 13, 68, 97, 11, 41, -119}) + file2, e);
            }
        }
        String str3 = AbstractC1387m.m2421h(new byte[]{-32, 118, -3, 28, 86, -34, -4}, new byte[]{-122, 31, -111, 121, 108, -15, -45, Base64.padSymbol}) + new File(file2, AbstractC1387m.m2421h(new byte[]{104, -18, 84, -95, 41, -72, 116, 8, 108, -20}, new byte[]{1, ByteCompanionObject.MIN_VALUE, 48, -60, 81, -106, 28, 124})).getAbsolutePath();
        new File(str3).exists();
        this.f625c.loadUrl(str3);
    }

    /* JADX INFO: renamed from: d */
    public static void m984d(final C0877r c0877r) {
        byte[] bArr;
        long j10;
        long j11;
        long j12;
        long j13;
        synchronized (c0877r.f631i) {
            if (c0877r.f630h && (bArr = c0877r.f632j) != null) {
                long j14 = c0877r.f633k;
                long j15 = c0877r.f636n;
                c0877r.f632j = null;
                c0877r.f633k = 0L;
                c0877r.f634l = j14;
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                final long j16 = c0877r.f638p + 1;
                c0877r.f638p = j16;
                boolean z9 = j16 % 10 == 0;
                try {
                    JSONObject jSONObject = new JSONObject();
                    String strM2421h = AbstractC1387m.m2421h(new byte[]{96, -58, 84, 79, 80}, new byte[]{9, -85, 53, 40, 53, -123, -70, -112});
                    StringBuilder sb = new StringBuilder();
                    final boolean z10 = z9;
                    sb.append(AbstractC1387m.m2421h(new byte[]{48, -22, 92, -68, -70, -108, 120, 36, 51, -18, 7, -73, -16, -104, 114, 126, 54, -22, 91, -72, -74, -55, 57}, new byte[]{84, -117, 40, -35, ByteCompanionObject.MIN_VALUE, -3, 21, 69}));
                    sb.append(android.util.Base64.encodeToString(bArr, 2));
                    jSONObject.put(strM2421h, sb.toString());
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{77, -94, 56, 65, 19, -40, 112, 126, 73}, new byte[]{57, -53, 85, 36, 96, -84, 17, 19}), j14);
                    final String str = AbstractC1387m.m2421h(new byte[]{-62, -68, -16, -116, -63, 107, -85, -114, -37, -108, -16, -116, -36, 115, -20, -123, -16, -93, -5, -122, -38, 60, -93, -57, -107, -94, -9, -122, -54, 115, -14, -49, -38, -69, -33, -122, -54, 110, -22, -120, -47, -112, -24, -115, -64, 104, -83, -58, -40, -68, -16, -127, -29, 125, -11, -89, -57, -76, -13, -115, -119, 48, -91}, new byte[]{-75, -43, -98, -24, -82, 28, -123, -31}) + jSONObject + AbstractC1387m.m2421h(new byte[]{63, 46}, new byte[]{22, 21, 68, 102, 7, -47, 107, -77});
                    if (z10) {
                        try {
                            String strM2421h2 = AbstractC1387m.m2421h(new byte[]{126, 35, -114, 8, -101, 109, 67, 122, 86, 56, -122}, new byte[]{51, 74, -32, 97, -42, 12, 51, 42});
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(AbstractC1387m.m2421h(new byte[]{-84, 104, -27, -55, -65, 19, 57, -8, -81, 116, -25, -53, -66, 75}, new byte[]{-55, 6, -122, -90, -37, 118, 93, -40}));
                            sb2.append(j16);
                            sb2.append(AbstractC1387m.m2421h(new byte[]{-66, 64, 113, -62, 88, -51, 120}, new byte[]{-98, 33, 22, -89, 21, -66, 69, -51}));
                            j12 = j14;
                            j13 = j15;
                            try {
                                sb2.append(Math.max(0L, SystemClock.elapsedRealtime() - j12));
                                sb2.append(AbstractC1387m.m2421h(new byte[]{-90, 111, -42, 97, 83, -3, -45, 96, -11, 55}, new byte[]{-122, 10, -72, 2, 60, -103, -74, 45}));
                                sb2.append(SystemClock.elapsedRealtime() - jElapsedRealtime);
                                sb2.append(AbstractC1387m.m2421h(new byte[]{49, -125, -73, 64, 57, 125, -117}, new byte[]{17, -31, -50, 52, 92, 14, -74, 89}));
                                sb2.append(bArr.length);
                                Log.i(strM2421h2, sb2.toString());
                            } catch (JSONException unused) {
                                j11 = j13;
                                j10 = j12;
                                c0877r.m989g(j10, j11, false);
                                return;
                            }
                        } catch (JSONException unused2) {
                            j12 = j14;
                            j13 = j15;
                        }
                    } else {
                        j12 = j14;
                        j13 = j15;
                    }
                    final WebView webView = c0877r.f625c;
                    if (!m985f().booleanValue() || !c0877r.f624b || webView == null) {
                        c0877r.m989g(j12, j13, false);
                        return;
                    }
                    final long j17 = j13;
                    final long j18 = j12;
                    if (webView.post(new Runnable() { // from class: b1.p
                        @Override // java.lang.Runnable
                        public final void run() {
                            long j19;
                            final C0877r c0877r2 = this.f611b;
                            final long j20 = j17;
                            final long j21 = j18;
                            WebView webView2 = webView;
                            String str2 = str;
                            final boolean z11 = z10;
                            final long j22 = j16;
                            synchronized (c0877r2.f631i) {
                                if (!c0877r2.f630h || j20 != c0877r2.f636n || j21 <= c0877r2.f635m) {
                                    c0877r2.m989g(j21, j20, false);
                                    return;
                                }
                                if (c0877r2.f625c != webView2 || !c0877r2.f624b) {
                                    c0877r2.m989g(j21, j20, false);
                                    return;
                                }
                                try {
                                    ValueCallback<String> valueCallback = new ValueCallback() { // from class: b1.q
                                        @Override // android.webkit.ValueCallback
                                        public final void onReceiveValue(Object obj) {
                                            boolean z12 = z11;
                                            long j23 = j21;
                                            if (z12) {
                                                Log.i(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -91, -7, 110, 72, 91, -127, 59, -88, -66, -15}, new byte[]{-51, -52, -105, 7, 5, 58, -15, 107}), AbstractC1387m.m2421h(new byte[]{60, -103, 35, -49, -93, -82, -38, -28, 41, -99, 34, -124, -32, -87, -60, -23, 38, -103, 124}, new byte[]{75, -4, 65, -17, -64, -49, -74, -120}) + j22 + AbstractC1387m.m2421h(new byte[]{102, 71, 66, 48, -69, ByteCompanionObject.MAX_VALUE, 81}, new byte[]{70, 38, 37, 85, -10, 12, 108, 71}) + Math.max(0L, SystemClock.elapsedRealtime() - j23));
                                            }
                                            c0877r2.m989g(j23, j20, true);
                                        }
                                    };
                                    j19 = j21;
                                    try {
                                        webView2.evaluateJavascript(str2, valueCallback);
                                    } catch (RuntimeException unused3) {
                                        c0877r2.m989g(j19, j20, false);
                                    }
                                } catch (RuntimeException unused4) {
                                    j19 = j21;
                                }
                            }
                        }
                    })) {
                        return;
                    }
                    c0877r.m989g(j18, j17, false);
                    return;
                } catch (JSONException unused3) {
                    j10 = j14;
                    j11 = j15;
                }
            }
            c0877r.f637o = false;
            c0877r.f634l = 0L;
        }
    }

    /* JADX INFO: renamed from: f */
    public static Boolean m985f() {
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{87}, new byte[]{103, 69, -18, -39, 7, 112, -49, -1}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    @Override // p016b1.InterfaceC0878s
    /* JADX INFO: renamed from: a */
    public final void mo986a() {
        this.f624b = true;
        mo988e(AbstractC1387m.m2421h(new byte[]{97, -3, 13, 40, -103}, new byte[]{21, -107, 104, 69, -4, 102, -124, -92}), AbstractC1387m.m2421h(new byte[]{46, 50, 106, -101, 18, 30, -21, 17, 111, 50, 106}, new byte[]{85, 18, 72, -10, 125, 122, -114, 51}) + this.f628f + AbstractC1387m.m2421h(new byte[]{96, -97, 47}, new byte[]{66, -65, 82, -25, -24, 101, -85, 68}));
    }

    @Override // p016b1.InterfaceC0878s
    /* JADX INFO: renamed from: b */
    public final void mo464b() {
        C0867h c0867h = this.f626d;
        if (c0867h != null) {
            c0867h.mo923b();
        }
    }

    @Override // p016b1.InterfaceC0878s
    /* JADX INFO: renamed from: c */
    public final void mo987c() {
        C0867h c0867h = this.f626d;
        if (c0867h != null) {
            c0867h.mo924c();
        }
    }

    @Override // p016b1.InterfaceC0878s
    /* JADX INFO: renamed from: e */
    public final void mo988e(String str, String str2) {
        if (m985f().booleanValue()) {
            f623s.execute(new RunnableC0873n(this, str, str2, 0));
        }
    }

    /* JADX INFO: renamed from: g */
    public final void m989g(long j10, long j11, boolean z9) {
        boolean z10;
        synchronized (this.f631i) {
            try {
                if (j11 != this.f636n) {
                    return;
                }
                if (z9 && j10 > this.f635m) {
                    this.f635m = j10;
                }
                this.f634l = 0L;
                if (!this.f630h || this.f632j == null) {
                    z10 = false;
                    this.f637o = false;
                } else {
                    z10 = true;
                }
                if (z10) {
                    f623s.execute(new RunnableC0874o(this, 1));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: h */
    public final void m990h(HUDMassageObj hUDMassageObj) {
        if (hUDMassageObj == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(AbstractC1387m.m2421h(new byte[]{76, 27, 109, 76, 12, -62, 0, -37, 83, 92, 119, 109, 17, -31, 0, -105, 13, 27}, new byte[]{55, 57, 5, 57, 104, -111, 101, -75}));
        sb.append(hUDMassageObj.hudSenderType.name());
        sb.append(AbstractC1387m.m2421h(new byte[]{-51, -95, -89, -52, -49, 20, 79, 43, -99, -62, -21, -113, -121}, new byte[]{-17, -115, -123, -83, -67, 117, 43, 74}));
        sb.append(hUDMassageObj.AradarOn);
        sb.append(AbstractC1387m.m2421h(new byte[]{83, -98, 112, -21, -3, -59, -90, -8, 93, -122}, new byte[]{ByteCompanionObject.MAX_VALUE, -68, 30, -118, -117, -84, -23, -106}));
        sb.append(hUDMassageObj.NaviOn);
        sb.append(AbstractC1387m.m2421h(new byte[]{-50, 35, 2, -98, -127, -97, 60, -113, -110, 100, 84, -47}, new byte[]{-30, 1, 118, -21, -13, -15, 104, -10}));
        sb.append(hUDMassageObj.v_mTurnType);
        sb.append(AbstractC1387m.m2421h(new byte[]{8, 33, 120, -24, -32, 4, -103, -45, 87, 119, 46, -89}, new byte[]{36, 3, 12, -99, -110, 106, -35, -70}));
        sb.append(hUDMassageObj.v_mTurnDis);
        sb.append(AbstractC1387m.m2421h(new byte[]{26, 6, 76, 119, 125, -85, 66, 75, 114, 77, 77, 102, 50, -16}, new byte[]{54, 36, 62, 18, 16, -54, 43, 37}));
        sb.append(hUDMassageObj.v_mRemainDis);
        sb.append(AbstractC1387m.m2421h(new byte[]{-13, 93, 42, 11, 35, -4, 40, 101, -66, 27, 102, 84, 121}, new byte[]{-33, ByteCompanionObject.MAX_VALUE, 68, 110, 91, -120, 122, 10}));
        sb.append(hUDMassageObj.v_mNextRoad);
        sb.append(AbstractC1387m.m2421h(new byte[]{-13, 117, -54, 86, -48, -52, 64, -1, -99, 48, -123, 76, -44, -117, 31}, new byte[]{-47, 89, -24, 37, -96, -87, 37, -101}));
        sb.append(hUDMassageObj.getSpeedlimit());
        mo988e(AbstractC1387m.m2421h(new byte[]{69, 17, 91}, new byte[]{45, 100, 63, 114, -54, 81, 29, 86}), AbstractC1178q.m2075i(new byte[]{-39}, new byte[]{-92, 76, 96, 11, -57, -31, -101, -52}, sb));
    }

    /* JADX INFO: renamed from: i */
    public final void m991i(Location location) {
        StringBuilder sb = new StringBuilder();
        sb.append(AbstractC1387m.m2421h(new byte[]{-10, -96, 59, -13, 29, -44, 99}, new byte[]{-115, -126, 87, -110, 105, -10, 89, 108}));
        sb.append(location.getLatitude());
        sb.append(AbstractC1387m.m2421h(new byte[]{12, -55, 47, 59, 84, 46, -111}, new byte[]{32, -21, 67, 84, 58, 12, -85, 27}));
        sb.append(location.getLongitude());
        sb.append(AbstractC1387m.m2421h(new byte[]{16, -110, -96, -109, -102, 51, 123, -117, 6}, new byte[]{60, -80, -45, -29, -1, 86, 31, -87}));
        sb.append(location.getSpeed());
        sb.append(AbstractC1387m.m2421h(new byte[]{103, 2, 80, -126, 32, 104, 29, ByteCompanionObject.MIN_VALUE, 44, 2, 2}, new byte[]{75, 32, 56, -25, 65, 12, 116, -18}));
        sb.append(location.getBearing());
        mo988e(AbstractC1387m.m2421h(new byte[]{-58, -31, 112}, new byte[]{-95, -111, 3, 35, -109, -27, -101, -32}), AbstractC1178q.m2075i(new byte[]{-9}, new byte[]{-118, 81, 44, 107, -15, -71, 19, -52}, sb));
    }

    @Override // p016b1.InterfaceC0878s
    /* JADX INFO: renamed from: j */
    public final void mo992j(boolean z9) {
        if (z9 == this.f630h) {
            return;
        }
        this.f630h = z9;
        synchronized (this.f631i) {
            this.f636n++;
            this.f632j = null;
            this.f633k = 0L;
            this.f634l = 0L;
            this.f635m = 0L;
            this.f637o = false;
        }
        final C0865f c0865f = this.f629g;
        if (!z9) {
            if (c0865f != null) {
                final int i10 = 0;
                c0865f.f554b.post(new Runnable() { // from class: b1.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i10) {
                            case 0:
                                C0865f c0865f2 = c0865f;
                                c0865f2.f557e.remove(this);
                                if (c0865f2.f557e.isEmpty()) {
                                    c0865f2.f554b.removeCallbacks(c0865f2.f567o);
                                    c0865f2.f554b.removeCallbacks(c0865f2.f568p);
                                    c0865f2.m920c();
                                    if (c0865f2.f566n) {
                                        try {
                                            c0865f2.f553a.unregisterReceiver(c0865f2.f569q);
                                            break;
                                        } catch (IllegalArgumentException unused) {
                                        }
                                        c0865f2.f566n = false;
                                    }
                                    c0865f2.f560h = null;
                                    c0865f2.f561i = 0L;
                                }
                                break;
                            default:
                                C0865f c0865f3 = c0865f;
                                C0877r c0877r = this;
                                boolean zIsEmpty = c0865f3.f557e.isEmpty();
                                if (c0865f3.f557e.size() != 1 || !c0865f3.f557e.contains(c0877r)) {
                                    int size = c0865f3.f557e.size();
                                    c0865f3.f557e.clear();
                                    c0865f3.f557e.add(c0877r);
                                    if (size > 0) {
                                        Log.i(C0865f.f547s, AbstractC1387m.m2421h(new byte[]{34, 83, -64, -127, -68, -71, 59, 59, 80, 69, -60, -116, -79, -65, 126, 50, 25, 88, -39, -64, -80, -69, 46, ByteCompanionObject.MAX_VALUE, 28, 95, -61, -103, -72, -76, 59, 45, 3, 11}, new byte[]{112, 54, -80, -19, -35, -38, 94, 95}) + size);
                                    }
                                    byte[] bArr = c0865f3.f560h;
                                    if (bArr != null) {
                                        try {
                                            c0877r.m993k(bArr, c0865f3.f561i);
                                        } catch (RuntimeException e) {
                                            Log.w(C0865f.f547s, AbstractC1387m.m2421h(new byte[]{26, 119, -127, 8, -116, 80, -94, 88, 119, 114, -122, 18, -43, 88, -83, 77, 37, 62, -99, 4, -53, 88, -96, 92, 50, 122, -49, 2, -64, 94, -85, 77, 51, 62, -119, 19, -64, 80, -90}, new byte[]{87, 30, -17, 97, -95, Base64.padSymbol, -61, 40}), e);
                                        }
                                    }
                                    if (zIsEmpty) {
                                        C0862c c0862c = c0865f3.f569q;
                                        if (!c0865f3.f566n) {
                                            IntentFilter intentFilter = new IntentFilter(C0865f.f551w);
                                            int i11 = Build.VERSION.SDK_INT;
                                            Context context = c0865f3.f553a;
                                            if (i11 >= 33) {
                                                context.registerReceiver(c0862c, intentFilter, 2);
                                            } else {
                                                context.registerReceiver(c0862c, intentFilter);
                                            }
                                            c0865f3.f566n = true;
                                        }
                                    }
                                    c0865f3.m921d();
                                }
                                break;
                        }
                    }
                });
                return;
            }
            return;
        }
        if (c0865f == null) {
            this.f629g = C0865f.m918b(this.f627e);
        }
        final C0865f c0865f2 = this.f629g;
        final int i11 = 1;
        c0865f2.f554b.post(new Runnable() { // from class: b1.a
            @Override // java.lang.Runnable
            public final void run() {
                switch (i11) {
                    case 0:
                        C0865f c0865f3 = c0865f2;
                        c0865f3.f557e.remove(this);
                        if (c0865f3.f557e.isEmpty()) {
                            c0865f3.f554b.removeCallbacks(c0865f3.f567o);
                            c0865f3.f554b.removeCallbacks(c0865f3.f568p);
                            c0865f3.m920c();
                            if (c0865f3.f566n) {
                                try {
                                    c0865f3.f553a.unregisterReceiver(c0865f3.f569q);
                                    break;
                                } catch (IllegalArgumentException unused) {
                                }
                                c0865f3.f566n = false;
                            }
                            c0865f3.f560h = null;
                            c0865f3.f561i = 0L;
                        }
                        break;
                    default:
                        C0865f c0865f4 = c0865f2;
                        C0877r c0877r = this;
                        boolean zIsEmpty = c0865f4.f557e.isEmpty();
                        if (c0865f4.f557e.size() != 1 || !c0865f4.f557e.contains(c0877r)) {
                            int size = c0865f4.f557e.size();
                            c0865f4.f557e.clear();
                            c0865f4.f557e.add(c0877r);
                            if (size > 0) {
                                Log.i(C0865f.f547s, AbstractC1387m.m2421h(new byte[]{34, 83, -64, -127, -68, -71, 59, 59, 80, 69, -60, -116, -79, -65, 126, 50, 25, 88, -39, -64, -80, -69, 46, ByteCompanionObject.MAX_VALUE, 28, 95, -61, -103, -72, -76, 59, 45, 3, 11}, new byte[]{112, 54, -80, -19, -35, -38, 94, 95}) + size);
                            }
                            byte[] bArr = c0865f4.f560h;
                            if (bArr != null) {
                                try {
                                    c0877r.m993k(bArr, c0865f4.f561i);
                                } catch (RuntimeException e) {
                                    Log.w(C0865f.f547s, AbstractC1387m.m2421h(new byte[]{26, 119, -127, 8, -116, 80, -94, 88, 119, 114, -122, 18, -43, 88, -83, 77, 37, 62, -99, 4, -53, 88, -96, 92, 50, 122, -49, 2, -64, 94, -85, 77, 51, 62, -119, 19, -64, 80, -90}, new byte[]{87, 30, -17, 97, -95, Base64.padSymbol, -61, 40}), e);
                                }
                            }
                            if (zIsEmpty) {
                                C0862c c0862c = c0865f4.f569q;
                                if (!c0865f4.f566n) {
                                    IntentFilter intentFilter = new IntentFilter(C0865f.f551w);
                                    int i12 = Build.VERSION.SDK_INT;
                                    Context context = c0865f4.f553a;
                                    if (i12 >= 33) {
                                        context.registerReceiver(c0862c, intentFilter, 2);
                                    } else {
                                        context.registerReceiver(c0862c, intentFilter);
                                    }
                                    c0865f4.f566n = true;
                                }
                            }
                            c0865f4.m921d();
                        }
                        break;
                }
            }
        });
    }

    /* JADX INFO: renamed from: k */
    public final void m993k(byte[] bArr, long j10) {
        boolean z9;
        if (!this.f630h || bArr == null || bArr.length == 0) {
            return;
        }
        synchronized (this.f631i) {
            try {
                if (j10 <= Math.max(this.f635m, Math.max(this.f634l, this.f633k))) {
                    return;
                }
                this.f632j = bArr;
                this.f633k = j10;
                if (this.f637o) {
                    z9 = false;
                } else {
                    z9 = true;
                    this.f637o = true;
                }
                if (z9) {
                    f623s.execute(new RunnableC0874o(this, 1));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p016b1.InterfaceC0878s
    /* JADX INFO: renamed from: n */
    public final void mo994n(String str) {
        if (this.f629g == null) {
            this.f629g = C0865f.m918b(this.f627e);
        }
        C0865f c0865f = this.f629g;
        c0865f.getClass();
        c0865f.f554b.post(new RunnableC0010c(c0865f, !AbstractC1387m.m2421h(new byte[]{-94, 21, -31, 56, -99}, new byte[]{-52, 124, -122, 80, -23, 39, -109, -13}).equalsIgnoreCase(str) ? 0 : 1, 2));
    }

    @Override // p016b1.InterfaceC0878s
    /* JADX INFO: renamed from: p */
    public final void mo995p(String str, String str2, String str3) {
        C1652b.m2734a().m2755j().m1637lo(str, str2, str3);
    }
}
