package b1;

import android.content.Context;
import android.location.Location;
import android.os.SystemClock;
import android.util.Log;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.example.navistart.cores.HUDMassageObj;
import e0.p3;
import e0.w;
import e0.x1;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class r implements s, e {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final ScheduledThreadPoolExecutor f279s;
    public WebView c;
    public h d;
    public final Context e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public f f282g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile boolean f283h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte[] f285j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f286k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f287l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f288m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f289n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f290o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f291p;
    public boolean r;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f280b = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f281f = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f284i = new Object();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f292q = Integer.MIN_VALUE;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        e0.m.h(new byte[]{77, 54, -97, -96, -82, -107, 43, 4, 81, 56, -103, -69, -93, -30, 68, 98, 43}, new byte[]{30, 115, -36, -11, -4, -48, 116, 80});
        f279s = w.c(1, e0.m.h(new byte[]{-18, -94, 113, -7, -56, 78, 76, 83, -51, -111, 122, -53, -42}, new byte[]{-71, -57, 19, -82, -95, 42, 43, 54}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public r(Context context, WebView webView, t tVar) {
        this.e = context;
        String str = tVar.f294b;
        String str2 = tVar.c;
        this.c = webView;
        webView.setBackgroundColor(0);
        this.c.setLayerType(2, null);
        WebSettings settings = this.c.getSettings();
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
        this.c.setWebChromeClient(new WebChromeClient());
        this.c.setWebViewClient(new WebViewClient());
        WebView webView2 = this.c;
        String strH = e0.m.h(new byte[]{66, -97, Base64.padSymbol, -75, -58, -80, 26, -10, 94, -111, 59, -82, -53, -57, 117, -112, 36}, new byte[]{17, -38, 126, -32, -108, -11, 69, -94});
        h0.b.a();
        webView2.addJavascriptInterface(new l(strH, h0.b.f(), this), e0.m.h(new byte[]{-114, -117, -8, -120, 54, -36, 123, -7, -97, -116}, new byte[]{-17, -27, -100, -6, 89, -75, 31, -72}));
        File file = new File(context.getFilesDir(), tVar.f293a);
        h0.b.a();
        String strLoadString = h0.b.o().loadString(str, str2);
        File file2 = new File(file, strLoadString);
        if (new File(file2, e0.m.h(new byte[]{-36, -106, -107, 59, -75, 122, 126, -69, -40, -108}, new byte[]{-75, -8, -15, 94, -51, 84, 22, -49})).isFile()) {
            str2 = strLoadString;
        } else {
            file2 = new File(file, str2);
        }
        if (!new File(file2, e0.m.h(new byte[]{-14, -7, -45, -65, -100, -8, 77, -93, -10, -5}, new byte[]{-101, -105, -73, -38, -28, -42, 37, -41})).isFile() && (e0.m.h(new byte[]{56, -51, -62, -111, -65, 18, -57, -68, 43, -51, -58, -81, -88, 18, -46, ByteCompanionObject.MIN_VALUE, 55}, new byte[]{92, -88, -92, -16, -54, 126, -77, -29}).equals(str2) || e0.m.h(new byte[]{-104, -53, 23, 102, -111, 54, 38, -107, -108, -37, 21}, new byte[]{-4, -82, 113, 7, -28, 90, 82, -54}).equals(str2))) {
            try {
                new m(context, str2 + e0.m.h(new byte[]{-4, -67, 8, 29}, new byte[]{-46, -57, 97, 109, 83, -26, 51, -110}), file, str2).g();
            } catch (IOException e) {
                Log.e(e0.m.h(new byte[]{116, -92, 30, -60, 29, 53, -70, -60, 87, -105, 21, -10, 3}, new byte[]{35, -63, 124, -109, 116, 81, -35, -95}), e0.m.h(new byte[]{75, -38, 99, 42, 14, ByteCompanionObject.MAX_VALUE, 9, -7, 122, -34, 125, 37, 19, 110, 9}, new byte[]{8, -69, 13, 68, 97, 11, 41, -119}) + file2, e);
            }
        }
        String str3 = e0.m.h(new byte[]{-32, 118, -3, 28, 86, -34, -4}, new byte[]{-122, 31, -111, 121, 108, -15, -45, Base64.padSymbol}) + new File(file2, e0.m.h(new byte[]{104, -18, 84, -95, 41, -72, 116, 8, 108, -20}, new byte[]{1, ByteCompanionObject.MIN_VALUE, 48, -60, 81, -106, 28, 124})).getAbsolutePath();
        new File(str3).exists();
        this.c.loadUrl(str3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void d(r rVar) {
        byte[] bArr;
        long j9;
        long j10;
        long j11;
        long j12;
        synchronized (rVar.f284i) {
            if (rVar.f283h && (bArr = rVar.f285j) != null) {
                long j13 = rVar.f286k;
                long j14 = rVar.f289n;
                rVar.f285j = null;
                rVar.f286k = 0L;
                rVar.f287l = j13;
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                long j15 = rVar.f291p + 1;
                rVar.f291p = j15;
                boolean z8 = j15 % 10 == 0;
                try {
                    JSONObject jSONObject = new JSONObject();
                    String strH = e0.m.h(new byte[]{96, -58, 84, 79, 80}, new byte[]{9, -85, 53, 40, 53, -123, -70, -112});
                    StringBuilder sb = new StringBuilder();
                    boolean z9 = z8;
                    sb.append(e0.m.h(new byte[]{48, -22, 92, -68, -70, -108, 120, 36, 51, -18, 7, -73, -16, -104, 114, 126, 54, -22, 91, -72, -74, -55, 57}, new byte[]{84, -117, 40, -35, ByteCompanionObject.MIN_VALUE, -3, 21, 69}));
                    sb.append(android.util.Base64.encodeToString(bArr, 2));
                    jSONObject.put(strH, sb.toString());
                    jSONObject.put(e0.m.h(new byte[]{77, -94, 56, 65, 19, -40, 112, 126, 73}, new byte[]{57, -53, 85, 36, 96, -84, 17, 19}), j13);
                    String str = e0.m.h(new byte[]{-62, -68, -16, -116, -63, 107, -85, -114, -37, -108, -16, -116, -36, 115, -20, -123, -16, -93, -5, -122, -38, 60, -93, -57, -107, -94, -9, -122, -54, 115, -14, -49, -38, -69, -33, -122, -54, 110, -22, -120, -47, -112, -24, -115, -64, 104, -83, -58, -40, -68, -16, -127, -29, 125, -11, -89, -57, -76, -13, -115, -119, 48, -91}, new byte[]{-75, -43, -98, -24, -82, 28, -123, -31}) + jSONObject + e0.m.h(new byte[]{63, 46}, new byte[]{22, 21, 68, 102, 7, -47, 107, -77});
                    if (z9) {
                        try {
                            String strH2 = e0.m.h(new byte[]{126, 35, -114, 8, -101, 109, 67, 122, 86, 56, -122}, new byte[]{51, 74, -32, 97, -42, 12, 51, 42});
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(e0.m.h(new byte[]{-84, 104, -27, -55, -65, 19, 57, -8, -81, 116, -25, -53, -66, 75}, new byte[]{-55, 6, -122, -90, -37, 118, 93, -40}));
                            sb2.append(j15);
                            sb2.append(e0.m.h(new byte[]{-66, 64, 113, -62, 88, -51, 120}, new byte[]{-98, 33, 22, -89, 21, -66, 69, -51}));
                            j11 = j13;
                            j12 = j14;
                            try {
                                sb2.append(Math.max(0L, SystemClock.elapsedRealtime() - j11));
                                sb2.append(e0.m.h(new byte[]{-90, 111, -42, 97, 83, -3, -45, 96, -11, 55}, new byte[]{-122, 10, -72, 2, 60, -103, -74, 45}));
                                sb2.append(SystemClock.elapsedRealtime() - jElapsedRealtime);
                                sb2.append(e0.m.h(new byte[]{49, -125, -73, 64, 57, 125, -117}, new byte[]{17, -31, -50, 52, 92, 14, -74, 89}));
                                sb2.append(bArr.length);
                                Log.i(strH2, sb2.toString());
                            } catch (JSONException unused) {
                                j10 = j12;
                                j9 = j11;
                                rVar.g(j9, j10, false);
                                return;
                            }
                        } catch (JSONException unused2) {
                            j11 = j13;
                            j12 = j14;
                        }
                    } else {
                        j11 = j13;
                        j12 = j14;
                    }
                    WebView webView = rVar.c;
                    if (!f().booleanValue() || !rVar.f280b || webView == null) {
                        rVar.g(j11, j12, false);
                        return;
                    }
                    long j16 = j12;
                    long j17 = j11;
                    if (webView.post(new p(rVar, j16, j17, webView, str, z9, j15))) {
                        return;
                    }
                    rVar.g(j17, j16, false);
                    return;
                } catch (JSONException unused3) {
                    j9 = j13;
                    j10 = j14;
                }
            }
            rVar.f290o = false;
            rVar.f287l = 0L;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean f() {
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
            return Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{87}, new byte[]{103, 69, -18, -39, 7, 112, -49, -1}, h0.b.o(), com.google.protobuf.q.h(e0.m.f1893g, h0.b.o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.s
    public final void a() {
        this.f280b = true;
        e(e0.m.h(new byte[]{97, -3, 13, 40, -103}, new byte[]{21, -107, 104, 69, -4, 102, -124, -92}), e0.m.h(new byte[]{46, 50, 106, -101, 18, 30, -21, 17, 111, 50, 106}, new byte[]{85, 18, 72, -10, 125, 122, -114, 51}) + this.f281f + e0.m.h(new byte[]{96, -97, 47}, new byte[]{66, -65, 82, -25, -24, 101, -85, 68}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.s
    public final void b() {
        h hVar = this.d;
        if (hVar != null) {
            hVar.b();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.s
    public final void c() {
        h hVar = this.d;
        if (hVar != null) {
            hVar.c();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.s
    public final void e(String str, String str2) {
        if (f().booleanValue()) {
            f279s.execute(new n(this, str, str2, 0));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(long j9, long j10, boolean z8) {
        boolean z9;
        synchronized (this.f284i) {
            try {
                if (j10 != this.f289n) {
                    return;
                }
                if (z8 && j9 > this.f288m) {
                    this.f288m = j9;
                }
                this.f287l = 0L;
                if (!this.f283h || this.f285j == null) {
                    z9 = false;
                    this.f290o = false;
                } else {
                    z9 = true;
                }
                if (z9) {
                    f279s.execute(new o(this, 1));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(HUDMassageObj hUDMassageObj) {
        if (hUDMassageObj == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(e0.m.h(new byte[]{76, 27, 109, 76, 12, -62, 0, -37, 83, 92, 119, 109, 17, -31, 0, -105, 13, 27}, new byte[]{55, 57, 5, 57, 104, -111, 101, -75}));
        sb.append(hUDMassageObj.hudSenderType.name());
        sb.append(e0.m.h(new byte[]{-51, -95, -89, -52, -49, 20, 79, 43, -99, -62, -21, -113, -121}, new byte[]{-17, -115, -123, -83, -67, 117, 43, 74}));
        sb.append(hUDMassageObj.AradarOn);
        sb.append(e0.m.h(new byte[]{83, -98, 112, -21, -3, -59, -90, -8, 93, -122}, new byte[]{ByteCompanionObject.MAX_VALUE, -68, 30, -118, -117, -84, -23, -106}));
        sb.append(hUDMassageObj.NaviOn);
        sb.append(e0.m.h(new byte[]{-50, 35, 2, -98, -127, -97, 60, -113, -110, 100, 84, -47}, new byte[]{-30, 1, 118, -21, -13, -15, 104, -10}));
        sb.append(hUDMassageObj.v_mTurnType);
        sb.append(e0.m.h(new byte[]{8, 33, 120, -24, -32, 4, -103, -45, 87, 119, 46, -89}, new byte[]{36, 3, 12, -99, -110, 106, -35, -70}));
        sb.append(hUDMassageObj.v_mTurnDis);
        sb.append(e0.m.h(new byte[]{26, 6, 76, 119, 125, -85, 66, 75, 114, 77, 77, 102, 50, -16}, new byte[]{54, 36, 62, 18, 16, -54, 43, 37}));
        sb.append(hUDMassageObj.v_mRemainDis);
        sb.append(e0.m.h(new byte[]{-13, 93, 42, 11, 35, -4, 40, 101, -66, 27, 102, 84, 121}, new byte[]{-33, ByteCompanionObject.MAX_VALUE, 68, 110, 91, -120, 122, 10}));
        sb.append(hUDMassageObj.v_mNextRoad);
        sb.append(e0.m.h(new byte[]{-13, 117, -54, 86, -48, -52, 64, -1, -99, 48, -123, 76, -44, -117, 31}, new byte[]{-47, 89, -24, 37, -96, -87, 37, -101}));
        sb.append(hUDMassageObj.getSpeedlimit());
        e(e0.m.h(new byte[]{69, 17, 91}, new byte[]{45, 100, 63, 114, -54, 81, 29, 86}), com.google.protobuf.q.i(new byte[]{-39}, new byte[]{-92, 76, 96, 11, -57, -31, -101, -52}, sb));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(Location location) {
        StringBuilder sb = new StringBuilder();
        sb.append(e0.m.h(new byte[]{-10, -96, 59, -13, 29, -44, 99}, new byte[]{-115, -126, 87, -110, 105, -10, 89, 108}));
        sb.append(location.getLatitude());
        sb.append(e0.m.h(new byte[]{12, -55, 47, 59, 84, 46, -111}, new byte[]{32, -21, 67, 84, 58, 12, -85, 27}));
        sb.append(location.getLongitude());
        sb.append(e0.m.h(new byte[]{16, -110, -96, -109, -102, 51, 123, -117, 6}, new byte[]{60, -80, -45, -29, -1, 86, 31, -87}));
        sb.append(location.getSpeed());
        sb.append(e0.m.h(new byte[]{103, 2, 80, -126, 32, 104, 29, ByteCompanionObject.MIN_VALUE, 44, 2, 2}, new byte[]{75, 32, 56, -25, 65, 12, 116, -18}));
        sb.append(location.getBearing());
        e(e0.m.h(new byte[]{-58, -31, 112}, new byte[]{-95, -111, 3, 35, -109, -27, -101, -32}), com.google.protobuf.q.i(new byte[]{-9}, new byte[]{-118, 81, 44, 107, -15, -71, 19, -52}, sb));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.s
    public final void j(boolean z8) {
        if (z8 == this.f283h) {
            return;
        }
        this.f283h = z8;
        synchronized (this.f284i) {
            this.f289n++;
            this.f285j = null;
            this.f286k = 0L;
            this.f287l = 0L;
            this.f288m = 0L;
            this.f290o = false;
        }
        f fVar = this.f282g;
        if (!z8) {
            if (fVar != null) {
                fVar.f239b.post(new a(fVar, this, 0));
            }
        } else {
            if (fVar == null) {
                this.f282g = f.b(this.e);
            }
            f fVar2 = this.f282g;
            fVar2.f239b.post(new a(fVar2, this, 1));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k(byte[] bArr, long j9) {
        boolean z8;
        if (!this.f283h || bArr == null || bArr.length == 0) {
            return;
        }
        synchronized (this.f284i) {
            try {
                if (j9 <= Math.max(this.f288m, Math.max(this.f287l, this.f286k))) {
                    return;
                }
                this.f285j = bArr;
                this.f286k = j9;
                if (this.f290o) {
                    z8 = false;
                } else {
                    z8 = true;
                    this.f290o = true;
                }
                if (z8) {
                    f279s.execute(new o(this, 1));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.s
    public final void n(String str) {
        if (this.f282g == null) {
            this.f282g = f.b(this.e);
        }
        f fVar = this.f282g;
        fVar.getClass();
        fVar.f239b.post(new a4.c(fVar, !e0.m.h(new byte[]{-94, 21, -31, 56, -99}, new byte[]{-52, 124, -122, 80, -23, 39, -109, -13}).equalsIgnoreCase(str) ? 0 : 1, 2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.s
    public final void p(String str, String str2, String str3) {
        h0.b.a().j().lo(str, str2, str3);
    }
}
