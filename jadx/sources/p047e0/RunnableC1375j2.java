package p047e0;

import android.animation.Animator;
import android.app.job.JobParameters;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.webkit.WebView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.C0566h;
import androidx.fragment.app.FragmentManager;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.RunnableC1054m;
import com.example.navistart.MainActivity;
import com.example.navistart.ProgressActivity;
import com.example.navistart.R;
import com.example.navistart.SystemMessageReceiver;
import com.example.navistart.TestSpaceActivity;
import com.example.navistart.punto;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.android.material.button.MaterialButton;
import com.google.protobuf.AbstractC1178q;
import com.woha.atir.RadarActivity;
import com.woha.atir.RadarView;
import com.woha.pogoda.WeatherService;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.apache.commons.p161io.input.ReadAheadInputStream;
import org.json.JSONException;
import org.json.JSONObject;
import p005a4.RunnableC0014g;
import p016b1.C0871l;
import p016b1.C0872m;
import p016b1.InterfaceC0878s;
import p038d1.C1241a;
import p042d5.C1288i;
import p050e3.C1460c;
import p050e3.C1461d;
import p058f1.C1532e;
import p062f5.C1538a;
import p062f5.C1548f;
import p078h0.C1652b;
import p094i7.C1765n;
import p098j0.C1917c;
import p098j0.C1919e;
import p115k7.C2052b;
import p121l0.C2194a;
import p132m0.C2271b3;
import p132m0.C2276c3;
import p132m0.C2294g1;
import p132m0.C2304i1;
import p132m0.C2319l1;
import p132m0.C2329n1;
import p132m0.C2333o0;
import p132m0.C2349s0;
import p132m0.C2360v;
import p157o7.C2652i4;
import p164p0.C2948a;
import p164p0.C2949b;
import p164p0.C2957j;
import p164p0.RunnableC2954g;
import p167p4.C2969a;
import p167p4.C2970b;
import p173q0.C3042f;
import p184r5.C3105c;
import p190s1.C3159n;
import p190s1.C3166q0;
import p190s1.C3179x;
import p190s1.InterfaceC3177w;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: e0.j2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1375j2 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3282b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f3283c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f3284d;

    public /* synthetic */ RunnableC1375j2(C0566h c0566h, String str) {
        this.f3282b = 13;
        this.f3283c = str;
        this.f3284d = c0566h;
    }

    /* JADX INFO: renamed from: a */
    private final void m2408a() {
        RunnableC1054m runnableC1054m = (RunnableC1054m) this.f3284d;
        JSONObject jSONObject = (JSONObject) this.f3283c;
        C1532e c1532e = (C1532e) runnableC1054m.f1148c;
        if (c1532e.f3779o && c1532e.isAdded()) {
            if (jSONObject == null || !jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{-96, 81, -114, -27, -63, -11, 46}, new byte[]{-45, 36, -19, -122, -92, -122, 93, -119}), false)) {
                c1532e.m2620Q(false);
            } else {
                c1532e.f3778n = true;
                c1532e.f3777m = jSONObject;
                c1532e.m2620Q(jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{-106, 116, 11, -53, -21, -86, 44, -51, -110}, new byte[]{-9, 2, 106, -94, -121, -53, 78, -95}), false));
                c1532e.m2619P(AbstractC1387m.m2421h(new byte[]{60, 10, -16, -97, 54}, new byte[]{76, 101, -121, -6, 68, -50, ByteCompanionObject.MAX_VALUE, 17}), jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{83, 4, 120, 47, 85}, new byte[]{35, 107, 15, 74, 39, 36, -16, 66})));
                c1532e.m2619P(AbstractC1387m.m2421h(new byte[]{95, -99}, new byte[]{62, -2, -56, -121, 60, -64, -50, -86}), jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{47, -45}, new byte[]{78, -80, -103, 52, 107, -106, 26, 28})));
                c1532e.m2619P(AbstractC1387m.m2421h(new byte[]{77, -49, -21, 72}, new byte[]{44, -70, -97, 39, 0, 122, 10, 15}), jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{-123, 87, -58, -112}, new byte[]{-28, 34, -78, -1, -71, 36, 47, 89})));
                c1532e.m2619P(AbstractC1387m.m2421h(new byte[]{84, -112, 123, 96}, new byte[]{39, -23, 21, 3, Base64.padSymbol, -95, 75, -80}), jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{83, -92, 97, 31}, new byte[]{32, -35, 15, 124, 91, -57, 83, -2})));
                c1532e.m2619P(AbstractC1387m.m2421h(new byte[]{29, -35, -123, -38, -10, 100, -81, -79, 14, -52, -113, -36, -22}, new byte[]{111, -72, -26, -77, -124, 7, -38, -35}), jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{-18, 55, 102, 101, 96, -36, 42, -86, -3, 38, 108, 99, 124}, new byte[]{-100, 82, 5, 12, 18, -65, 95, -58})));
                c1532e.m2619P(AbstractC1387m.m2421h(new byte[]{81, 109, -72, 3, -64, -32, 126, 13, 69, 112, -92, 25}, new byte[]{55, 31, -41, 109, -76, -92, 27, 107}), jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{112, 65, -111, 114, 34, 122, -78, 79, 100, 92, -115, 104}, new byte[]{22, 51, -2, 28, 86, 62, -41, 41})));
                c1532e.m2619P(AbstractC1387m.m2421h(new byte[]{-62, 76, -124, 19, 122, -111, 44, -98, -33, 90, -111}, new byte[]{-80, 41, -27, 97, 62, -12, 74, -20}), jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{18, 34, -9, -85, 14, -86, -63, -2, 15, 52, -30}, new byte[]{96, 71, -106, -39, 74, -49, -89, -116})));
                c1532e.m2619P(AbstractC1387m.m2421h(new byte[]{115, -55, 85, 80, 82, 92, 67, -84, 102, -56, 114, 91, 71, 111}, new byte[]{21, -69, 58, 62, 38, 27, 47, -51}), jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{90, -50, -10, 59, -18, 14, 80, -93, 79, -49, -47, 48, -5, Base64.padSymbol}, new byte[]{60, -68, -103, 85, -102, 73, 60, -62})));
                c1532e.m2619P(AbstractC1387m.m2421h(new byte[]{17, -20, -111, 117, 39, -81, -19, 105, 53, -16, -111, 117, 57, -114, -26, 111, 22}, new byte[]{98, -104, -12, 16, 85, -58, -125, 14}), jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{115, -105, 73, -47, -93, -104, -26, -1, 87, -117, 73, -47, -67, -71, -19, -7, 116}, new byte[]{0, -29, 44, -76, -47, -15, -120, -104})));
                c1532e.m2615K(1, (float) jSONObject.optDouble(AbstractC1387m.m2421h(new byte[]{85, -119, -61, 34, -37, -53, -17, 46, 92, -117, -49, 38, -33, -51, -50, 57, 84}, new byte[]{49, -5, -86, 84, -66, -71, -69, 75}), 22.0d));
                c1532e.m2615K(2, (float) jSONObject.optDouble(AbstractC1387m.m2421h(new byte[]{110, -123, -18, -32, 106, -36, -49, -75, 108, -80, -8, -2, ByteCompanionObject.MAX_VALUE, -41, -38, -79, 106, -111, -17, -10}, new byte[]{30, -28, -99, -109, 15, -78, -88, -48}), 22.0d));
                int iMax = Math.max(C1532e.m2602B(), Math.min(C1532e.m2601A(), jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{-36, 3, 100, 81, 30, -9, 41, 65}, new byte[]{-70, 98, 10, 2, 110, -110, 76, 37}), C1532e.m2602B())));
                c1532e.f3776l.setProgress(iMax - C1532e.m2602B());
                c1532e.f3775k.setText(String.format(Locale.US, AbstractC1387m.m2421h(new byte[]{-46, -97, -42, 40, 21, 96, -109}, new byte[]{-9, -5, -10, 7, 53, 69, -9, 105}), Integer.valueOf(iMax), Integer.valueOf(C1532e.m2601A())));
                int iOptInt = jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{-90, -86, -47, -76, 109, 22, 60}, new byte[]{-57, -61, -93, -7, 2, 114, 89, 101}), -1);
                for (Map.Entry entry : c1532e.f3769e.entrySet()) {
                    c1532e.m2622S((MaterialButton) entry.getValue(), ((Integer) entry.getKey()).intValue() == iOptInt, C1532e.f3762v);
                }
                String strM2421h = AbstractC1387m.m2421h(new byte[]{-105, -44, -25, -52, 93, -42, -111, -65, -110, -46, -58, -33, 89, -48}, new byte[]{-13, -90, -114, -70, 56, -92, -62, -38});
                int i10 = C1532e.f3764x;
                c1532e.m2613I(jSONObject, strM2421h, i10);
                String strM2421h2 = AbstractC1387m.m2421h(new byte[]{-22, 16, -52, -90, 72, -121, -66, 5, -17, 22, -13, -75, 67, -127}, new byte[]{-114, 98, -91, -48, 45, -11, -19, 96});
                int i11 = C1532e.f3765y;
                c1532e.m2613I(jSONObject, strM2421h2, i11);
                c1532e.m2613I(jSONObject, AbstractC1387m.m2421h(new byte[]{-8, 5, -42, 45, -63, -45, 107, 101, -6, 55, -64, 63, -48, -11, 105, 97, -4}, new byte[]{-120, 100, -91, 94, -92, -67, 12, 0}), i10);
                c1532e.m2613I(jSONObject, AbstractC1387m.m2421h(new byte[]{-65, -79, -16, -127, 29, 69, 26, -64, -67, -125, -26, -109, 12, 125, 24, -53, -69}, new byte[]{-49, -48, -125, -14, 120, 43, 125, -91}), i11);
                c1532e.f3778n = false;
            }
            c1532e.f3766b.postDelayed(runnableC1054m, 900L);
        }
    }

    /* JADX INFO: renamed from: b */
    private final void m2409b() {
        C2957j c2957j = (C2957j) this.f3284d;
        C2652i4 c2652i4 = (C2652i4) this.f3283c;
        Handler handler = c2957j.f8230d;
        c2957j.f8237k = false;
        c2957j.f8236j = 0;
        if (c2652i4.f7528c == 0) {
            c2957j.m4746i(100, 100);
            handler.postDelayed(new RunnableC2954g(c2957j, 2), 300L);
            return;
        }
        TextView textView = c2957j.f8235i;
        if (textView != null) {
            textView.setAlpha(1.0f);
            c2957j.f8235i.setText(AbstractC1387m.m2421h(new byte[]{82, 37, -56}, new byte[]{23, 119, -102, -26, -19, 24, -45, 55}));
            c2957j.m4744g(AbstractC1387m.m2421h(new byte[]{74, 115, -81, 116, 89, -24, 30, 88, 89}, new byte[]{105, 48, -20, 54, 105, -40, 46, 106}));
            handler.postDelayed(new RunnableC2954g(c2957j, 3), 1200L);
        }
    }

    /* JADX INFO: renamed from: c */
    private final void m2410c() {
        C3159n c3159n = (C3159n) this.f3284d;
        C1919e c1919e = (C1919e) this.f3283c;
        try {
            C1652b.m2734a();
            C1652b.m2737f().m2994j(c1919e, null);
        } catch (RuntimeException unused) {
            c3159n.post(new RunnableC1342d(c3159n, 2));
        }
    }

    /* JADX INFO: renamed from: d */
    private final void m2411d() {
        String message;
        C3179x c3179x = (C3179x) this.f3284d;
        C3042f c3042f = (C3042f) this.f3283c;
        AbstractC1387m.m2421h(new byte[]{-106, -18, 24, -118, -53, 81, -69, 0, 7, 30, -118, 20, -54, 109, -70, 55, 6, 41, -118, 21, -53, 89, -69, 8}, new byte[]{-41, -86, 90, -86, 27, -20, 107, -75});
        int i10 = 4;
        try {
            if (Build.VERSION.SDK_INT < 29) {
                throw new IOException(AbstractC1387m.m2421h(new byte[]{-92, 75, 72, 103, 65, 31, 14, -72, 84, 4, 26, 12, 17, 114, 107, -40, -59, 4, 27, 12, 31, 115, 92, 40, 53, -69, -4, -81, -2, -53, -70, 40, 69, -27, -72, 13, 41, 114, 101, -40, -52, -11, 72, 96, 65, 28, 14, -70, -92, 96, 72, 104}, new byte[]{116, -43, -104, -35, -111, -94, -34, 8}));
            }
            if (!AbstractC1387m.m2421h(new byte[]{112, 75}, new byte[]{63, 0, 33, 15, 106, -80, -64, -106}).equals(c3179x.m5109c(AbstractC1387m.m2421h(new byte[]{-87, 22, 20, 63}, new byte[]{-7, 95, 90, 120, 119, -12, -98, -87})))) {
                C1241a c1241aM1284n = AbstractC1031d.m1284n(c3179x.f9249a);
                try {
                    if (!c1241aM1284n.m2229y(AbstractC1387m.m2421h(new byte[]{-106, 78, -26, 85, -56}, new byte[]{-1, 42, -58, 120, -67, 26, 7, 119})).trim().equals(AbstractC1387m.m2421h(new byte[]{-46, 0, 10, 100}, new byte[]{-32, 48, 58, 84, 95, -34, -87, -54}))) {
                        throw new IOException(AbstractC1387m.m2421h(new byte[]{-75, -81, -73, 74, -5, 89, -50, -34, -104, -53, 37, -41, 88, -124, 123, 6, 36, 85, 36, -21, 89, -77, 122, 49, 36, 84, 37, -33, 88, -116}, new byte[]{-12, -21, -11, 106, -120, 49, -85, -78}));
                    }
                    c1241aM1284n.m2229y(AbstractC1387m.m2421h(new byte[]{92, -30, -13, -101, -102, -57, -122, -60, 87, -109}, new byte[]{31, -82, -78, -56, -55, -105, -57, -112}) + C3179x.m5108b(c3179x.f9249a.getApplicationInfo().sourceDir) + AbstractC1387m.m2421h(new byte[]{-117, 107, 27, 58, 98, -14, -60, -33, -50, 113, 7, 59, 115, -94, -123, -36, -37, 90, 4, 32, 120, -31, -127, -33, -40, 37, 91, 114, 116, -19, -119, -126, -50, 125, 21, 63, 103, -18, -127, -126, -59, 100, 2, 59, 100, -10, -123, -34, -33, 43, 28, Base64.padSymbol, 122, -25, -54, -32, -54, 112, 26, 49, ByteCompanionObject.MAX_VALUE, -25, -106, -5, -62, 107, 16, Base64.padSymbol, 96, -47, -116, -55, -57, 105, 84}, new byte[]{-85, 5, 116, 82, 23, -126, -28, -84}) + C3179x.m5108b(c3179x.f9250b) + " " + C3179x.m5108b(c3179x.f9249a.getPackageName()) + AbstractC1387m.m2421h(new byte[]{-29, -118, -11, 77, -62, -21, -111, 51, -74, -38, -74, 9, -103, -78, -38, 56, -75, -103, -76, 92, -53, -15, -98, 111, -3, -112, -21, 9, -127}, new byte[]{-61, -74, -38, 41, -89, -99, -66, 93}));
                    c1241aM1284n.close();
                    int i11 = 0;
                    while (true) {
                        if (i11 >= 10) {
                            throw new IOException(AbstractC1387m.m2421h(new byte[]{125, 98, 70, 104, 3, 15, -90, -19, 25, 47, 38, 13, -104, 14, -101, -20, 44, 46, 26, -3, -13, 105, -11, -115, 125, 64, 71, 94, -14, 95, -12, -65, 125, 71, 71, 95, -14, 82, 5, -19, 18, 47, 40, 13, -97, 14, -101, -20, 36, 47, 43, 13, -101, 14, -97, 29, 125, 65, 70, 103, -13, 96, -11, ByteCompanionObject.MIN_VALUE}, new byte[]{-83, -1, -106, -35, 35, -34, 37, Base64.padSymbol}));
                        }
                        if (AbstractC1387m.m2421h(new byte[]{-95, -109}, new byte[]{-18, -40, -115, -1, 42, -68, -65, 32}).equals(c3179x.m5109c(AbstractC1387m.m2421h(new byte[]{-17, 48, -126, 89}, new byte[]{-65, 121, -52, 30, 125, -108, 23, -85})))) {
                            break;
                        }
                        Thread.sleep(150L);
                        i11++;
                    }
                } catch (Throwable th) {
                    c1241aM1284n.close();
                    throw th;
                }
            }
            c3179x.f9254f = true;
            message = AbstractC1387m.m2421h(new byte[]{96, 116, 116, -43, 105, 34, -112, -54, -16, -78, -26, 75, 105, 35}, new byte[]{33, 48, 54, -11, -71, -111, 64, 116});
        } catch (Exception e) {
            c3179x.f9254f = false;
            message = e.getMessage();
        }
        synchronized (c3179x) {
            c3179x.f9255g = false;
        }
        boolean z9 = c3179x.f9254f;
        String strM2421h = AbstractC1387m.m2421h(new byte[]{118, -116, -24, 101, -126, 74, 58, -3, 123, -99, -19, 92, -120, 76, 59, -32, 77}, new byte[]{58, -19, -99, 11, -31, 34, 95, -113});
        StringBuilder sb = new StringBuilder();
        sb.append(AbstractC1387m.m2421h(new byte[]{74, -111, -118, 56, 68, -65, 91, -58, 96, -122, ByteCompanionObject.MIN_VALUE, 55, 25, -6}, new byte[]{8, -29, -29, 92, 35, -38, 123, -91}));
        sb.append(z9);
        AbstractC1178q.m2087u(new byte[]{-33, 86}, new byte[]{-1, 126, 114, -53, 102, -10, 72, Base64.padSymbol}, sb, message);
        sb.append(AbstractC1387m.m2421h(new byte[]{-37}, new byte[]{-14, -110, -4, 124, 26, -91, -17, -79}));
        Log.i(strM2421h, sb.toString());
        c3179x.f9251c.post(new RunnableC1350e2(c3042f, z9, message, i10));
    }

    /* JADX INFO: renamed from: e */
    private final void m2412e() {
        InterfaceC3177w interfaceC3177w = (InterfaceC3177w) this.f3284d;
        String str = (String) this.f3283c;
        interfaceC3177w.mo886b(str, AbstractC1387m.m2421h(new byte[]{64, 82}, new byte[]{15, 25, 73, 16, -69, -28, 83, -9}).equals(str));
    }

    @Override // java.lang.Runnable
    public final void run() {
        int iCreateSession;
        FileInputStream fileInputStream;
        int i10;
        String str;
        final int i11 = 1;
        int i12 = 0;
        int i13 = 8;
        switch (this.f3282b) {
            case 0:
                C0872m.m976j((ContentResolver) this.f3284d, (String) this.f3283c);
                return;
            case 1:
                final ProgressActivity progressActivity = (ProgressActivity) this.f3284d;
                String str2 = (String) this.f3283c;
                String str3 = ProgressActivity.f1510e;
                PackageManager packageManager = progressActivity.getPackageManager();
                if (!str2.equals("") && packageManager != null) {
                    File file = new File(str2);
                    if (file.exists()) {
                        PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(str2, 69);
                        if (packageArchiveInfo != null) {
                            String str4 = packageArchiveInfo.packageName;
                            int i14 = packageArchiveInfo.versionCode;
                            String str5 = packageArchiveInfo.versionName;
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{2, -104, 34, 97, -72, 96, 122, 22, 124, -98, 14, 81, -92, 100, 121, 3, 37, -98}, new byte[]{81, -50, 99, 18, -53, 9, 9, 98});
                            StringBuilder sb = new StringBuilder();
                            AbstractC1178q.m2087u(new byte[]{52, 9, 77, -51, 32, -80, -10, 64, 60, 9, 79, -37, 58, -78, -1, 113, 79, 16, 66, -35, 63, -80, -3, 73, 33, 1, 78, -37, 105}, new byte[]{111, 96, 35, -66, 84, -47, -102, 44}, sb, str4);
                            AbstractC1178q.m2086t(new byte[]{-30, -121, 84, -70, -117, -120, -112, -89, -96, -28, 77, -69, -100, -58}, new byte[]{-50, -89, 34, -33, -7, -5, -7, -56}, sb, i14);
                            sb.append(AbstractC1387m.m2421h(new byte[]{4, -66, 121, -21, -66, -119, -79, -106, 70, -48, 110, -29, -87, -57}, new byte[]{40, -98, 15, -114, -52, -6, -40, -7}));
                            sb.append(str5);
                            Log.e(strM2421h, sb.toString());
                            PackageInstaller packageInstaller = packageManager.getPackageInstaller();
                            PackageInstaller.SessionParams sessionParams = new PackageInstaller.SessionParams(1);
                            sessionParams.setSize(file.length());
                            try {
                                iCreateSession = packageInstaller.createSession(sessionParams);
                            } catch (IOException e) {
                                e.printStackTrace();
                                iCreateSession = -1;
                            }
                            if (iCreateSession != -1) {
                                try {
                                    PackageInstaller.Session sessionOpenSession = packageInstaller.openSession(iCreateSession);
                                    try {
                                        FileInputStream fileInputStream2 = new FileInputStream(str2);
                                        try {
                                            OutputStream outputStreamOpenWrite = sessionOpenSession.openWrite(AbstractC1387m.m2421h(new byte[]{-111, -51, 27, -5, -29, -110, 77}, new byte[]{-31, -84, 120, -112, -126, -11, 40, 77}), 0L, -1L);
                                            try {
                                                try {
                                                    byte[] bArr = new byte[1024];
                                                    long length = new File(str2).length();
                                                    int i15 = 0;
                                                    while (true) {
                                                        int i16 = fileInputStream2.read(bArr);
                                                        if (i16 != -1) {
                                                            outputStreamOpenWrite.write(bArr, i12, i16);
                                                            i15 += i16;
                                                            fileInputStream = fileInputStream2;
                                                            try {
                                                                final int i17 = (int) ((((long) i15) * 100) / length);
                                                                progressActivity.runOnUiThread(new Runnable() { // from class: e0.k2
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        int i18 = i11;
                                                                        int i19 = i17;
                                                                        ProgressActivity progressActivity2 = progressActivity;
                                                                        switch (i18) {
                                                                            case 0:
                                                                                String str6 = ProgressActivity.f1510e;
                                                                                if (i19 == 1) {
                                                                                    AbstractC3656k.m5878x(progressActivity2, AbstractC1387m.m2421h(new byte[]{39, 77, 81, 41, -92, 34, 77, 114, 39, 83, 80, 22, -91, 18, 77, 120, 39, 94, -96, 120, -62, 112, 45, 18, 69, 62, 53, 121, -11, 113, 21, 18, 66, 62, Base64.padSymbol, 120, -59, ByteCompanionObject.MIN_VALUE, 76, 65, 38, 111, 80, 23, -91, 21, 76, 74, 39, 83, 80, 22, 84}, new byte[]{-9, -18, ByteCompanionObject.MIN_VALUE, -88, 117, -96, -99, -62}));
                                                                                } else {
                                                                                    AbstractC3656k.m5878x(progressActivity2, AbstractC1387m.m2421h(new byte[]{112, -120, 26, 45, 53, -68, -72, -41, 112, -84, 27, 21, -59, -43, -21, -73, 33, -57, 73, 117, 85, -44, -43, -74, 30, -58, 121, 117, 95, -44, -48, 72}, new byte[]{-96, 22, -53, -91, -27, 4, 104, 102}));
                                                                                }
                                                                                progressActivity2.finish();
                                                                                break;
                                                                            default:
                                                                                progressActivity2.f1512c.setProgress(i19);
                                                                                TextView textView = progressActivity2.f1513d;
                                                                                StringBuilder sb2 = new StringBuilder();
                                                                                AbstractC1178q.m2086t(new byte[]{-36, 28, -8, -24, 47, 103, 13, 62, -35, 3, -7, -35, 46, 88, 12, 12, 54, -93}, new byte[]{12, -125, 41, 104, -1, -39, -35, -115}, sb2, i19);
                                                                                sb2.append(AbstractC1387m.m2421h(new byte[]{25}, new byte[]{60, -18, 64, -62, 95, 26, -26, 54}));
                                                                                textView.setText(sb2.toString());
                                                                                break;
                                                                        }
                                                                    }
                                                                });
                                                                fileInputStream2 = fileInputStream;
                                                                i12 = 0;
                                                            } catch (Throwable th) {
                                                                th = th;
                                                            }
                                                        } else {
                                                            fileInputStream = fileInputStream2;
                                                            sessionOpenSession.fsync(outputStreamOpenWrite);
                                                            if (outputStreamOpenWrite != null) {
                                                                outputStreamOpenWrite.close();
                                                            }
                                                            fileInputStream.close();
                                                            sessionOpenSession.close();
                                                            if (AbstractC1387m.m2420g(progressActivity, packageInstaller, iCreateSession)) {
                                                                Log.e(AbstractC1387m.m2421h(new byte[]{-63, 107, -97, -115, 103, -107, 13, 119, -65, 109, -77, -67, 123, -111, 14, 98, -26, 109}, new byte[]{-110, Base64.padSymbol, -34, -2, 20, -4, 126, 3}), AbstractC1387m.m2421h(new byte[]{-14, 108, -36, 0, 77, 15, 68, 20, -49, 107, -64, 26, 12, 7, 71, 27, -34}, new byte[]{-69, 2, -81, 116, 44, 99, 40, 117}));
                                                            }
                                                        }
                                                        th = th;
                                                        Throwable th2 = th;
                                                        if (outputStreamOpenWrite == null) {
                                                            throw th2;
                                                        }
                                                        try {
                                                            outputStreamOpenWrite.close();
                                                            throw th2;
                                                        } catch (Throwable th3) {
                                                            th2.addSuppressed(th3);
                                                            throw th2;
                                                        }
                                                    }
                                                } catch (Throwable th4) {
                                                    th = th4;
                                                    fileInputStream = fileInputStream2;
                                                }
                                            } catch (Throwable th5) {
                                                th = th5;
                                                Throwable th6 = th;
                                                try {
                                                    fileInputStream.close();
                                                    throw th6;
                                                } catch (Throwable th7) {
                                                    th6.addSuppressed(th7);
                                                    throw th6;
                                                }
                                            }
                                        } catch (Throwable th8) {
                                            th = th8;
                                            fileInputStream = fileInputStream2;
                                        }
                                    } catch (Throwable th9) {
                                        if (sessionOpenSession == null) {
                                            throw th9;
                                        }
                                        try {
                                            sessionOpenSession.close();
                                            throw th9;
                                        } catch (Throwable th10) {
                                            th9.addSuppressed(th10);
                                            throw th9;
                                        }
                                        i11 = -1;
                                        final int i18 = 0;
                                        progressActivity.runOnUiThread(new Runnable() { // from class: e0.k2
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                int i19 = i18;
                                                int i110 = i11;
                                                ProgressActivity progressActivity2 = progressActivity;
                                                switch (i19) {
                                                    case 0:
                                                        String str6 = ProgressActivity.f1510e;
                                                        if (i110 == 1) {
                                                            AbstractC3656k.m5878x(progressActivity2, AbstractC1387m.m2421h(new byte[]{39, 77, 81, 41, -92, 34, 77, 114, 39, 83, 80, 22, -91, 18, 77, 120, 39, 94, -96, 120, -62, 112, 45, 18, 69, 62, 53, 121, -11, 113, 21, 18, 66, 62, Base64.padSymbol, 120, -59, ByteCompanionObject.MIN_VALUE, 76, 65, 38, 111, 80, 23, -91, 21, 76, 74, 39, 83, 80, 22, 84}, new byte[]{-9, -18, ByteCompanionObject.MIN_VALUE, -88, 117, -96, -99, -62}));
                                                        } else {
                                                            AbstractC3656k.m5878x(progressActivity2, AbstractC1387m.m2421h(new byte[]{112, -120, 26, 45, 53, -68, -72, -41, 112, -84, 27, 21, -59, -43, -21, -73, 33, -57, 73, 117, 85, -44, -43, -74, 30, -58, 121, 117, 95, -44, -48, 72}, new byte[]{-96, 22, -53, -91, -27, 4, 104, 102}));
                                                        }
                                                        progressActivity2.finish();
                                                        break;
                                                    default:
                                                        progressActivity2.f1512c.setProgress(i110);
                                                        TextView textView = progressActivity2.f1513d;
                                                        StringBuilder sb2 = new StringBuilder();
                                                        AbstractC1178q.m2086t(new byte[]{-36, 28, -8, -24, 47, 103, 13, 62, -35, 3, -7, -35, 46, 88, 12, 12, 54, -93}, new byte[]{12, -125, 41, 104, -1, -39, -35, -115}, sb2, i110);
                                                        sb2.append(AbstractC1387m.m2421h(new byte[]{25}, new byte[]{60, -18, 64, -62, 95, 26, -26, 54}));
                                                        textView.setText(sb2.toString());
                                                        break;
                                                }
                                            }
                                        });
                                        return;
                                    }
                                } catch (IOException e6) {
                                    Log.e(AbstractC1387m.m2421h(new byte[]{93, 105, 86, -114, -101, 2, -56, -91, 35, 111, 122, -66, -121, 6, -53, -80, 122, 111}, new byte[]{14, 63, 23, -3, -24, 107, -69, -47}), AbstractC1387m.m2421h(new byte[]{-53, -98, -28, 15, 32, -46, -6, -51, -17, -126, -27, 6, 55, ByteCompanionObject.MIN_VALUE, -4, -42, -32, -117, -74, 33, 2, -71, -82, -53, -31, -52, -27, 5, 33, -127, -25, -48, -32}, new byte[]{-114, -20, -106, 96, 82, -14, -114, -65}), e6);
                                }
                            }
                        }
                    } else {
                        Log.e(AbstractC1387m.m2421h(new byte[]{-49, -17, -115, 14, 66, -50, -109, 84, -79, -23, -95, 62, 94, -54, -112, 65, -24, -23}, new byte[]{-100, -71, -52, 125, 49, -89, -32, 32}), AbstractC1387m.m2421h(new byte[]{-118, 91, 104, -71, 17, 83, 63, 2, -126, 91, 106, -81, 11, 81, 54, 51, -15, 83, 118, -95, 69, 92, 60, 26, -15, 87, 126, -93, 22, 70, ByteCompanionObject.MAX_VALUE, 78, -94, 93, 38, -72, 0, 70, 38, 28, -65, 28}, new byte[]{-47, 50, 6, -54, 101, 50, 83, 110}));
                    }
                    i11 = -1;
                    break;
                } else {
                    i11 = -1;
                }
                final int i19 = 0;
                progressActivity.runOnUiThread(new Runnable() { // from class: e0.k2
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i110 = i19;
                        int i111 = i11;
                        ProgressActivity progressActivity2 = progressActivity;
                        switch (i110) {
                            case 0:
                                String str6 = ProgressActivity.f1510e;
                                if (i111 == 1) {
                                    AbstractC3656k.m5878x(progressActivity2, AbstractC1387m.m2421h(new byte[]{39, 77, 81, 41, -92, 34, 77, 114, 39, 83, 80, 22, -91, 18, 77, 120, 39, 94, -96, 120, -62, 112, 45, 18, 69, 62, 53, 121, -11, 113, 21, 18, 66, 62, Base64.padSymbol, 120, -59, ByteCompanionObject.MIN_VALUE, 76, 65, 38, 111, 80, 23, -91, 21, 76, 74, 39, 83, 80, 22, 84}, new byte[]{-9, -18, ByteCompanionObject.MIN_VALUE, -88, 117, -96, -99, -62}));
                                } else {
                                    AbstractC3656k.m5878x(progressActivity2, AbstractC1387m.m2421h(new byte[]{112, -120, 26, 45, 53, -68, -72, -41, 112, -84, 27, 21, -59, -43, -21, -73, 33, -57, 73, 117, 85, -44, -43, -74, 30, -58, 121, 117, 95, -44, -48, 72}, new byte[]{-96, 22, -53, -91, -27, 4, 104, 102}));
                                }
                                progressActivity2.finish();
                                break;
                            default:
                                progressActivity2.f1512c.setProgress(i111);
                                TextView textView = progressActivity2.f1513d;
                                StringBuilder sb2 = new StringBuilder();
                                AbstractC1178q.m2086t(new byte[]{-36, 28, -8, -24, 47, 103, 13, 62, -35, 3, -7, -35, 46, 88, 12, 12, 54, -93}, new byte[]{12, -125, 41, 104, -1, -39, -35, -115}, sb2, i111);
                                sb2.append(AbstractC1387m.m2421h(new byte[]{25}, new byte[]{60, -18, 64, -62, 95, 26, -26, 54}));
                                textView.setText(sb2.toString());
                                break;
                        }
                    }
                });
                return;
            case 2:
                SystemMessageReceiver systemMessageReceiver = (SystemMessageReceiver) this.f3284d;
                Context context = (Context) this.f3283c;
                int i20 = SystemMessageReceiver.f1635e;
                MainActivity.m1426w();
                MainActivity.m1425v(context.getApplicationContext());
                systemMessageReceiver.f1636a.schedule(new RunnableC0014g(19, systemMessageReceiver), 100000L, TimeUnit.MILLISECONDS);
                return;
            case 3:
                TestSpaceActivity testSpaceActivity = (TestSpaceActivity) this.f3284d;
                SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) this.f3283c;
                if (testSpaceActivity.f1646b != null) {
                    try {
                        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(spannableStringBuilder);
                        ForegroundColorSpan[] foregroundColorSpanArr = (ForegroundColorSpan[]) spannableStringBuilder2.getSpans(0, spannableStringBuilder2.length(), ForegroundColorSpan.class);
                        int length2 = foregroundColorSpanArr.length;
                        while (i12 < length2) {
                            ForegroundColorSpan foregroundColorSpan = foregroundColorSpanArr[i12];
                            int foregroundColor = foregroundColorSpan.getForegroundColor();
                            if (foregroundColor == -16777216) {
                                i10 = R.color.modern_text;
                            } else if (foregroundColor == -65536) {
                                i10 = R.color.modern_danger;
                            } else {
                                if (foregroundColor == -16711936) {
                                    i10 = R.color.modern_success;
                                }
                                i12++;
                            }
                            int spanStart = spannableStringBuilder2.getSpanStart(foregroundColorSpan);
                            int spanEnd = spannableStringBuilder2.getSpanEnd(foregroundColorSpan);
                            int spanFlags = spannableStringBuilder2.getSpanFlags(foregroundColorSpan);
                            spannableStringBuilder2.removeSpan(foregroundColorSpan);
                            spannableStringBuilder2.setSpan(new ForegroundColorSpan(testSpaceActivity.getColor(i10)), spanStart, spanEnd, spanFlags);
                            i12++;
                        }
                        testSpaceActivity.f1646b.setText(spannableStringBuilder2);
                        if (testSpaceActivity.f1647c == null || !C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-22, -22, -105, -81, -48, -89, 125, 86, -37, -26, -111, -76, -45, -90, 125, 92, -22, -3}, new byte[]{-103, -119, -27, -64, -68, -53, 41, 57}), true)) {
                            return;
                        }
                        testSpaceActivity.f1647c.post(new RunnableC0014g(21, testSpaceActivity));
                        return;
                    } catch (IndexOutOfBoundsException unused) {
                        return;
                    }
                }
                return;
            case 4:
                C1445y2 c1445y2 = (C1445y2) this.f3284d;
                AppCompatActivity appCompatActivity = (AppCompatActivity) this.f3283c;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(appCompatActivity.getFilesDir().getPath());
                c1445y2.f3501c = AbstractC1178q.m2075i(new byte[]{12}, new byte[]{35, -105, 94, 84, 63, ByteCompanionObject.MAX_VALUE, -106, -99}, sb2);
                String str6 = appCompatActivity.getResources().getString(R.string.toast_update_YM) + appCompatActivity.getResources().getString(R.string.downloading);
                RunnableC0014g runnableC0014g = new RunnableC0014g(22, c1445y2);
                C1360g2 c1360g2 = new C1360g2();
                FragmentManager supportFragmentManager = appCompatActivity.getSupportFragmentManager();
                c1360g2.f3245h = str6;
                c1360g2.f3242e = appCompatActivity;
                c1360g2.f3244g = runnableC0014g;
                c1360g2.f3246i = c1360g2;
                c1360g2.show(supportFragmentManager, AbstractC1387m.m2421h(new byte[]{34, 112, 111}, new byte[]{86, 17, 8, -70, -93, -32, -104, -76}));
                c1445y2.f3499a = c1360g2;
                if (!AbstractAsyncTaskC1449z2.f3518b || (str = c1445y2.f3502d) == null || str.trim().isEmpty()) {
                    c1445y2.m2494b(appCompatActivity);
                    return;
                }
                c1445y2.f3500b = false;
                c1445y2.f3505g = 0;
                File file2 = new File(c1445y2.f3501c, c1445y2.f3503e);
                if (file2.exists()) {
                    file2.delete();
                }
                c1445y2.m2495d(appCompatActivity);
                return;
            case 5:
                ((C1445y2) this.f3284d).m2495d((Context) this.f3283c);
                return;
            case 6:
                punto puntoVar = (punto) this.f3284d;
                C1421s3 c1421s3 = (C1421s3) this.f3283c;
                String str7 = punto.f1867r;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{119, 91}, new byte[]{18, 54, -117, 44, 109, -108, -47, 65}), (String) c1421s3.f3413c);
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{-100, -68}, new byte[]{-11, -40, 126, -117, 13, -50, -15, 33}), (String) c1421s3.f3414d);
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{113, -4}, new byte[]{2, -108, 59, -100, -24, -87, 13, 17}), (String) c1421s3.f3415e);
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{-109, -12}, new byte[]{-29, -99, -98, 21, 3, 53, -118, -110}), (String) c1421s3.f3416f);
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -79}, new byte[]{-29, -36, -107, -86, 42, -64, 93, 67}), (String) c1421s3.f3417g);
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{-45, -47, 89}, new byte[]{-70, -65, 63, -36, -106, -48, 12, -38}), AbstractC3656k.m5863i());
                    String strM2421h2 = AbstractC1387m.m2421h(new byte[]{83, -62, 117}, new byte[]{59, -79, 29, 83, -121, 115, -79, -127});
                    String str8 = MainActivity.f1288e1;
                    String packageName = puntoVar.getApplicationContext().getPackageName();
                    long jValueOf = 0L;
                    for (PackageInfo packageInfo : puntoVar.getPackageManager().getInstalledPackages(0)) {
                        if (packageName.equals(packageInfo.packageName)) {
                            jValueOf = Long.valueOf(packageInfo.firstInstallTime);
                        }
                    }
                    jSONObject.put(strM2421h2, jValueOf);
                    break;
                } catch (JSONException unused2) {
                }
                Request requestBuild = new Request.Builder().url(AbstractC1387m.m2421h(new byte[]{35, 106, 2, -94, -6, 28, -75, -70}, new byte[]{75, 30, 118, -46, -119, 38, -102, -107}) + punto.f1870u).post(RequestBody.create(jSONObject.toString(), MediaType.parse(AbstractC1387m.m2421h(new byte[]{78, -103, -49, -70, 48, 17, -104, 69, 70, -122, -47, -7, 51, 1, -106, 95, 20, -55, -36, -66, 56, 0, -118, 84, 91, -44, -54, -94, 63, 95, -63}, new byte[]{47, -23, -65, -42, 89, 114, -7, 49})))).addHeader(AbstractC1387m.m2421h(new byte[]{-82, 68, -49, -108, -108, -14, 117, -90, -71, 82, -47, -123}, new byte[]{-19, 43, -95, -32, -15, -100, 1, -117}), AbstractC1387m.m2421h(new byte[]{16, -121, 126, -19, -22, -40, 66, -19, 24, -104, 96, -82, -23, -56, 76, -9}, new byte[]{113, -9, 14, -127, -125, -69, 35, -103})).addHeader(AbstractC1387m.m2421h(new byte[]{-24, 50, -64, 24, -59, 95}, new byte[]{-87, 81, -93, 125, -75, 43, 16, 116}), AbstractC1387m.m2421h(new byte[]{19, 22, -38, 123, -119, 112, -66, -58, 27, 9, -60, 56, -118, 96, -80, -36}, new byte[]{114, 102, -86, 23, -32, 19, -33, -78})).build();
                C1652b.m2734a();
                C1652b.m2743m().newCall(requestBuild).enqueue(new C3105c(i13, puntoVar));
                return;
            case 7:
                m2408a();
                return;
            case 8:
                C1538a c1538a = (C1538a) this.f3284d;
                C1288i c1288i = (C1288i) this.f3283c;
                c1538a.getClass();
                try {
                    C1461d.m2513m("Updating active experiment: ".concat(c1288i.toString()));
                    c1538a.f3786a.m4758a(new C2970b(c1288i.m2293o(), c1288i.m2298t(), c1288i.m2296r(), new Date(c1288i.m2294p()), c1288i.m2297s(), c1288i.m2295q()));
                    return;
                } catch (C2969a e10) {
                    Log.e("FIAM.Headless", "Unable to set experiment as active with ABT, missing analytics?\n" + e10.getMessage());
                    return;
                }
            case 9:
                RadarActivity radarActivity = (RadarActivity) this.f3284d;
                C1765n c1765n = (C1765n) this.f3283c;
                RadarView radarView = radarActivity.f2857b;
                double latitude = c1765n.f4625a.getLatitude();
                double longitude = c1765n.f4625a.getLongitude();
                radarView.f2871j = latitude;
                radarView.f2872k = longitude;
                radarView.invalidate();
                radarActivity.f2857b.setCarDirection(c1765n.f4626b);
                radarActivity.f2857b.setRadarRadius(c1765n.f4628d);
                radarActivity.f2857b.setCameras(c1765n.f4627c);
                return;
            case 10:
                ((C1917c) this.f3284d).m2994j((C1919e) this.f3283c, null);
                return;
            case 11:
                JobInfoSchedulerService jobInfoSchedulerService = (JobInfoSchedulerService) this.f3284d;
                JobParameters jobParameters = (JobParameters) this.f3283c;
                int i21 = JobInfoSchedulerService.f1998b;
                jobInfoSchedulerService.jobFinished(jobParameters, false);
                return;
            case 12:
                try {
                    Toast.makeText((Context) this.f3284d, (CharSequence) this.f3283c, 1).show();
                    return;
                } catch (Exception unused3) {
                    return;
                }
            case 13:
                String str9 = (String) this.f3283c;
                C0566h c0566h = (C0566h) this.f3284d;
                WeatherService.m2209h(true);
                C2052b c2052bMo3152e = WeatherService.m2203a().mo3152e(str9);
                if (c2052bMo3152e != null) {
                    WeatherService.m2208g(c2052bMo3152e);
                }
                if (c0566h != null) {
                    InterfaceC0878s interfaceC0878s = ((C0871l) c0566h.f453c).f597c;
                    if (c2052bMo3152e != null) {
                        interfaceC0878s.mo988e(AbstractC1387m.m2421h(new byte[]{124, 83, 123, 12, -17, 117, -56}, new byte[]{11, 54, 26, 120, -121, 16, -70, -97}), C0871l.m944N(c2052bMo3152e));
                    } else {
                        interfaceC0878s.mo988e(AbstractC1387m.m2421h(new byte[]{15, 60, 91, -12, -44, 32, -4}, new byte[]{120, 89, 58, ByteCompanionObject.MIN_VALUE, -68, 69, -114, 87}), C0871l.m948e(AbstractC1387m.m2421h(new byte[]{86, -118, -16, 95, 84, -17, -70, -126, 65, -120, -12}, new byte[]{35, -28, -111, 41, 53, -122, -42, -29})));
                    }
                }
                WeatherService.m2209h(false);
                return;
            case 14:
                ((WeatherService) this.f3284d).f2884b.setLoad((Boolean) this.f3283c);
                return;
            case 15:
                C2194a c2194a = (C2194a) this.f3284d;
                View view = (View) this.f3283c;
                String str10 = C2194a.f5725d;
                if (view.isAttachedToWindow()) {
                    int width = view.getWidth() / 2;
                    int height = view.getHeight() / 2;
                    Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, width, height, 0.0f, (float) Math.hypot(width, height));
                    view.setVisibility(0);
                    animatorCreateCircularReveal.setDuration(700L);
                    animatorCreateCircularReveal.addListener(new C1460c(4, c2194a));
                    animatorCreateCircularReveal.start();
                    return;
                }
                return;
            case 16:
                C2360v c2360v = (C2360v) this.f3284d;
                ArrayList arrayList = (ArrayList) this.f3283c;
                String str11 = C2360v.f6378h;
                if (c2360v.isAdded()) {
                    c2360v.m3733D(arrayList);
                    return;
                }
                return;
            case 17:
                C2333o0 c2333o0 = (C2333o0) this.f3284d;
                String str12 = (String) this.f3283c;
                WebView webView = c2333o0.f6283b;
                if (webView != null) {
                    webView.evaluateJavascript(str12, null);
                    return;
                }
                return;
            case 18:
                C2304i1 c2304i1 = (C2304i1) this.f3284d;
                ArrayList arrayList2 = (ArrayList) this.f3283c;
                ArrayList arrayList3 = c2304i1.f6152e;
                arrayList3.clear();
                arrayList3.addAll(arrayList2);
                c2304i1.f6149b.setAdapter(new C2294g1(c2304i1, arrayList3, new C0566h(21, c2304i1)));
                return;
            case 19:
                C2319l1 c2319l1 = (C2319l1) this.f3284d;
                String str13 = (String) this.f3283c;
                WebView webView2 = c2319l1.f6211c;
                if (webView2 != null) {
                    webView2.evaluateJavascript(str13, null);
                    return;
                }
                return;
            case 20:
                ((C2329n1) this.f3284d).f6250d.seteditTextMessadge((String) this.f3283c);
                return;
            case 21:
                C2276c3 c2276c3 = (C2276c3) this.f3284d;
                Runnable runnable = (Runnable) this.f3283c;
                if (c2276c3.isAdded()) {
                    runnable.run();
                    return;
                }
                return;
            case 22:
                ((ReadAheadInputStream) this.f3284d).lambda$readAsync$1((byte[]) this.f3283c);
                return;
            case 23:
                C1548f c1548f = (C1548f) this.f3284d;
                C2271b3 c2271b3 = (C2271b3) this.f3283c;
                c1548f.getClass();
                boolean z9 = c2271b3.f5945a;
                C2349s0 c2349s0 = (C2349s0) c1548f.f3805c;
                C2948a c2948a = (C2948a) c1548f.f3806d;
                if (!c2349s0.isAdded() || C2949b.m4718e(c2948a)) {
                    return;
                }
                if (z9 || c2271b3.f5946b != null) {
                    AbstractC3656k.m5878x(c2349s0.requireContext(), c2349s0.getString(z9 ? R.string.launcher_shortcuts_disabled_no_access : R.string.launcher_shortcuts_disabled_cleanup_error));
                    return;
                }
                return;
            case 24:
                m2409b();
                return;
            case 25:
                m2410c();
                return;
            case 26:
                m2411d();
                return;
            case 27:
                m2412e();
                return;
            case 28:
                ((C3179x) this.f3284d).m5109c((String) this.f3283c);
                return;
            default:
                C3166q0 c3166q0 = (C3166q0) this.f3284d;
                Bitmap bitmap = (Bitmap) this.f3283c;
                if (c3166q0.f9160E) {
                    return;
                }
                c3166q0.f9167c.setImageBitmap(bitmap);
                return;
        }
    }

    public /* synthetic */ RunnableC1375j2(int i10, Object obj, Object obj2) {
        this.f3282b = i10;
        this.f3284d = obj;
        this.f3283c = obj2;
    }
}
