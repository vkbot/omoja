package e0;

import android.animation.Animator;
import android.app.job.JobParameters;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageInstaller$Session;
import android.content.pm.PackageInstaller$SessionParams;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.os.Build$VERSION;
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
import androidx.fragment.app.FragmentManager;
import com.example.navistart.MainActivity;
import com.example.navistart.ProgressActivity;
import com.example.navistart.SystemMessageReceiver;
import com.example.navistart.TestSpaceActivity;
import com.example.navistart.punto;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.android.material.button.MaterialButton;
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
import java.util.Map$Entry;
import java.util.concurrent.TimeUnit;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import o7.i4;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Request$Builder;
import okhttp3.RequestBody;
import org.apache.commons.io.input.ReadAheadInputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class j2 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1871b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j2(androidx.fragment.app.h hVar, String str) {
        this.f1871b = 13;
        this.c = str;
        this.d = hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void a() {
        com.bumptech.glide.m mVar = (com.bumptech.glide.m) this.d;
        JSONObject jSONObject = (JSONObject) this.c;
        f1.e eVar = (f1.e) mVar.c;
        if (eVar.f2178o && eVar.isAdded()) {
            if (jSONObject == null || !jSONObject.optBoolean(m.h(new byte[]{-96, 81, -114, -27, -63, -11, 46}, new byte[]{-45, 36, -19, -122, -92, -122, 93, -119}), false)) {
                eVar.Q(false);
            } else {
                eVar.f2177n = true;
                eVar.f2176m = jSONObject;
                eVar.Q(jSONObject.optBoolean(m.h(new byte[]{-106, 116, 11, -53, -21, -86, 44, -51, -110}, new byte[]{-9, 2, 106, -94, -121, -53, 78, -95}), false));
                eVar.P(m.h(new byte[]{60, 10, -16, -97, 54}, new byte[]{76, 101, -121, -6, 68, -50, ByteCompanionObject.MAX_VALUE, 17}), jSONObject.optBoolean(m.h(new byte[]{83, 4, 120, 47, 85}, new byte[]{35, 107, 15, 74, 39, 36, -16, 66})));
                eVar.P(m.h(new byte[]{95, -99}, new byte[]{62, -2, -56, -121, 60, -64, -50, -86}), jSONObject.optBoolean(m.h(new byte[]{47, -45}, new byte[]{78, -80, -103, 52, 107, -106, 26, 28})));
                eVar.P(m.h(new byte[]{77, -49, -21, 72}, new byte[]{44, -70, -97, 39, 0, 122, 10, 15}), jSONObject.optBoolean(m.h(new byte[]{-123, 87, -58, -112}, new byte[]{-28, 34, -78, -1, -71, 36, 47, 89})));
                eVar.P(m.h(new byte[]{84, -112, 123, 96}, new byte[]{39, -23, 21, 3, Base64.padSymbol, -95, 75, -80}), jSONObject.optBoolean(m.h(new byte[]{83, -92, 97, 31}, new byte[]{32, -35, 15, 124, 91, -57, 83, -2})));
                eVar.P(m.h(new byte[]{29, -35, -123, -38, -10, 100, -81, -79, 14, -52, -113, -36, -22}, new byte[]{111, -72, -26, -77, -124, 7, -38, -35}), jSONObject.optBoolean(m.h(new byte[]{-18, 55, 102, 101, 96, -36, 42, -86, -3, 38, 108, 99, 124}, new byte[]{-100, 82, 5, 12, 18, -65, 95, -58})));
                eVar.P(m.h(new byte[]{81, 109, -72, 3, -64, -32, 126, 13, 69, 112, -92, 25}, new byte[]{55, 31, -41, 109, -76, -92, 27, 107}), jSONObject.optBoolean(m.h(new byte[]{112, 65, -111, 114, 34, 122, -78, 79, 100, 92, -115, 104}, new byte[]{22, 51, -2, 28, 86, 62, -41, 41})));
                eVar.P(m.h(new byte[]{-62, 76, -124, 19, 122, -111, 44, -98, -33, 90, -111}, new byte[]{-80, 41, -27, 97, 62, -12, 74, -20}), jSONObject.optBoolean(m.h(new byte[]{18, 34, -9, -85, 14, -86, -63, -2, 15, 52, -30}, new byte[]{96, 71, -106, -39, 74, -49, -89, -116})));
                eVar.P(m.h(new byte[]{115, -55, 85, 80, 82, 92, 67, -84, 102, -56, 114, 91, 71, 111}, new byte[]{21, -69, 58, 62, 38, 27, 47, -51}), jSONObject.optBoolean(m.h(new byte[]{90, -50, -10, 59, -18, 14, 80, -93, 79, -49, -47, 48, -5, Base64.padSymbol}, new byte[]{60, -68, -103, 85, -102, 73, 60, -62})));
                eVar.P(m.h(new byte[]{17, -20, -111, 117, 39, -81, -19, 105, 53, -16, -111, 117, 57, -114, -26, 111, 22}, new byte[]{98, -104, -12, 16, 85, -58, -125, 14}), jSONObject.optBoolean(m.h(new byte[]{115, -105, 73, -47, -93, -104, -26, -1, 87, -117, 73, -47, -67, -71, -19, -7, 116}, new byte[]{0, -29, 44, -76, -47, -15, -120, -104})));
                eVar.K(1, (float) jSONObject.optDouble(m.h(new byte[]{85, -119, -61, 34, -37, -53, -17, 46, 92, -117, -49, 38, -33, -51, -50, 57, 84}, new byte[]{49, -5, -86, 84, -66, -71, -69, 75}), 22.0d));
                eVar.K(2, (float) jSONObject.optDouble(m.h(new byte[]{110, -123, -18, -32, 106, -36, -49, -75, 108, -80, -8, -2, ByteCompanionObject.MAX_VALUE, -41, -38, -79, 106, -111, -17, -10}, new byte[]{30, -28, -99, -109, 15, -78, -88, -48}), 22.0d));
                int iMax = Math.max(f1.e.B(), Math.min(f1.e.A(), jSONObject.optInt(m.h(new byte[]{-36, 3, 100, 81, 30, -9, 41, 65}, new byte[]{-70, 98, 10, 2, 110, -110, 76, 37}), f1.e.B())));
                eVar.f2175l.setProgress(iMax - f1.e.B());
                eVar.f2174k.setText(String.format(Locale.US, m.h(new byte[]{-46, -97, -42, 40, 21, 96, -109}, new byte[]{-9, -5, -10, 7, 53, 69, -9, 105}), Integer.valueOf(iMax), Integer.valueOf(f1.e.A())));
                int iOptInt = jSONObject.optInt(m.h(new byte[]{-90, -86, -47, -76, 109, 22, 60}, new byte[]{-57, -61, -93, -7, 2, 114, 89, 101}), -1);
                for (Map$Entry map$Entry : eVar.e.entrySet()) {
                    eVar.S((MaterialButton) map$Entry.getValue(), ((Integer) map$Entry.getKey()).intValue() == iOptInt, f1.e.f2165v);
                }
                String strH = m.h(new byte[]{-105, -44, -25, -52, 93, -42, -111, -65, -110, -46, -58, -33, 89, -48}, new byte[]{-13, -90, -114, -70, 56, -92, -62, -38});
                int i9 = f1.e.f2166x;
                eVar.I(jSONObject, strH, i9);
                String strH2 = m.h(new byte[]{-22, 16, -52, -90, 72, -121, -66, 5, -17, 22, -13, -75, 67, -127}, new byte[]{-114, 98, -91, -48, 45, -11, -19, 96});
                int i10 = f1.e.f2167y;
                eVar.I(jSONObject, strH2, i10);
                eVar.I(jSONObject, m.h(new byte[]{-8, 5, -42, 45, -63, -45, 107, 101, -6, 55, -64, 63, -48, -11, 105, 97, -4}, new byte[]{-120, 100, -91, 94, -92, -67, 12, 0}), i9);
                eVar.I(jSONObject, m.h(new byte[]{-65, -79, -16, -127, 29, 69, 26, -64, -67, -125, -26, -109, 12, 125, 24, -53, -69}, new byte[]{-49, -48, -125, -14, 120, 43, 125, -91}), i10);
                eVar.f2177n = false;
            }
            eVar.f2168b.postDelayed(mVar, 900L);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void b() {
        p0.j jVar = (p0.j) this.d;
        i4 i4Var = (i4) this.c;
        Handler handler = jVar.d;
        jVar.f4573k = false;
        jVar.f4572j = 0;
        if (i4Var.c == 0) {
            jVar.i(100, 100);
            handler.postDelayed(new p0.g(jVar, 2), 300L);
            return;
        }
        TextView textView = jVar.f4571i;
        if (textView != null) {
            textView.setAlpha(1.0f);
            jVar.f4571i.setText(m.h(new byte[]{82, 37, -56}, new byte[]{23, 119, -102, -26, -19, 24, -45, 55}));
            jVar.g(m.h(new byte[]{74, 115, -81, 116, 89, -24, 30, 88, 89}, new byte[]{105, 48, -20, 54, 105, -40, 46, 106}));
            handler.postDelayed(new p0.g(jVar, 3), 1200L);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void c() {
        s1.n nVar = (s1.n) this.d;
        j0.e eVar = (j0.e) this.c;
        try {
            h0.b.a();
            h0.b.f().j(eVar, null);
        } catch (RuntimeException unused) {
            nVar.post(new d(nVar, 2));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void d() {
        String message;
        s1.x xVar = (s1.x) this.d;
        q0.f fVar = (q0.f) this.c;
        m.h(new byte[]{-106, -18, 24, -118, -53, 81, -69, 0, 7, 30, -118, 20, -54, 109, -70, 55, 6, 41, -118, 21, -53, 89, -69, 8}, new byte[]{-41, -86, 90, -86, 27, -20, 107, -75});
        try {
            if (Build$VERSION.SDK_INT < 29) {
                throw new IOException(m.h(new byte[]{-92, 75, 72, 103, 65, 31, 14, -72, 84, 4, 26, 12, 17, 114, 107, -40, -59, 4, 27, 12, 31, 115, 92, 40, 53, -69, -4, -81, -2, -53, -70, 40, 69, -27, -72, 13, 41, 114, 101, -40, -52, -11, 72, 96, 65, 28, 14, -70, -92, 96, 72, 104}, new byte[]{116, -43, -104, -35, -111, -94, -34, 8}));
            }
            if (!m.h(new byte[]{112, 75}, new byte[]{63, 0, 33, 15, 106, -80, -64, -106}).equals(xVar.c(m.h(new byte[]{-87, 22, 20, 63}, new byte[]{-7, 95, 90, 120, 119, -12, -98, -87})))) {
                d1.a aVarN = com.bumptech.glide.d.n(xVar.f5226a);
                try {
                    if (!aVarN.y(m.h(new byte[]{-106, 78, -26, 85, -56}, new byte[]{-1, 42, -58, 120, -67, 26, 7, 119})).trim().equals(m.h(new byte[]{-46, 0, 10, 100}, new byte[]{-32, 48, 58, 84, 95, -34, -87, -54}))) {
                        throw new IOException(m.h(new byte[]{-75, -81, -73, 74, -5, 89, -50, -34, -104, -53, 37, -41, 88, -124, 123, 6, 36, 85, 36, -21, 89, -77, 122, 49, 36, 84, 37, -33, 88, -116}, new byte[]{-12, -21, -11, 106, -120, 49, -85, -78}));
                    }
                    aVarN.y(m.h(new byte[]{92, -30, -13, -101, -102, -57, -122, -60, 87, -109}, new byte[]{31, -82, -78, -56, -55, -105, -57, -112}) + s1.x.b(xVar.f5226a.getApplicationInfo().sourceDir) + m.h(new byte[]{-117, 107, 27, 58, 98, -14, -60, -33, -50, 113, 7, 59, 115, -94, -123, -36, -37, 90, 4, 32, 120, -31, -127, -33, -40, 37, 91, 114, 116, -19, -119, -126, -50, 125, 21, 63, 103, -18, -127, -126, -59, 100, 2, 59, 100, -10, -123, -34, -33, 43, 28, Base64.padSymbol, 122, -25, -54, -32, -54, 112, 26, 49, ByteCompanionObject.MAX_VALUE, -25, -106, -5, -62, 107, 16, Base64.padSymbol, 96, -47, -116, -55, -57, 105, 84}, new byte[]{-85, 5, 116, 82, 23, -126, -28, -84}) + s1.x.b(xVar.f5227b) + " " + s1.x.b(xVar.f5226a.getPackageName()) + m.h(new byte[]{-29, -118, -11, 77, -62, -21, -111, 51, -74, -38, -74, 9, -103, -78, -38, 56, -75, -103, -76, 92, -53, -15, -98, 111, -3, -112, -21, 9, -127}, new byte[]{-61, -74, -38, 41, -89, -99, -66, 93}));
                    aVarN.close();
                    int i9 = 0;
                    while (true) {
                        if (i9 >= 10) {
                            throw new IOException(m.h(new byte[]{125, 98, 70, 104, 3, 15, -90, -19, 25, 47, 38, 13, -104, 14, -101, -20, 44, 46, 26, -3, -13, 105, -11, -115, 125, 64, 71, 94, -14, 95, -12, -65, 125, 71, 71, 95, -14, 82, 5, -19, 18, 47, 40, 13, -97, 14, -101, -20, 36, 47, 43, 13, -101, 14, -97, 29, 125, 65, 70, 103, -13, 96, -11, ByteCompanionObject.MIN_VALUE}, new byte[]{-83, -1, -106, -35, 35, -34, 37, Base64.padSymbol}));
                        }
                        if (m.h(new byte[]{-95, -109}, new byte[]{-18, -40, -115, -1, 42, -68, -65, 32}).equals(xVar.c(m.h(new byte[]{-17, 48, -126, 89}, new byte[]{-65, 121, -52, 30, 125, -108, 23, -85})))) {
                            break;
                        }
                        Thread.sleep(150L);
                        i9++;
                    }
                } catch (Throwable th) {
                    aVarN.close();
                    throw th;
                }
            }
            xVar.f5228f = true;
            message = m.h(new byte[]{96, 116, 116, -43, 105, 34, -112, -54, -16, -78, -26, 75, 105, 35}, new byte[]{33, 48, 54, -11, -71, -111, 64, 116});
        } catch (Exception e) {
            xVar.f5228f = false;
            message = e.getMessage();
        }
        synchronized (xVar) {
            xVar.f5229g = false;
        }
        boolean z8 = xVar.f5228f;
        String strH = m.h(new byte[]{118, -116, -24, 101, -126, 74, 58, -3, 123, -99, -19, 92, -120, 76, 59, -32, 77}, new byte[]{58, -19, -99, 11, -31, 34, 95, -113});
        StringBuilder sb = new StringBuilder();
        sb.append(m.h(new byte[]{74, -111, -118, 56, 68, -65, 91, -58, 96, -122, ByteCompanionObject.MIN_VALUE, 55, 25, -6}, new byte[]{8, -29, -29, 92, 35, -38, 123, -91}));
        sb.append(z8);
        com.google.protobuf.q.u(new byte[]{-33, 86}, new byte[]{-1, 126, 114, -53, 102, -10, 72, Base64.padSymbol}, sb, message);
        sb.append(m.h(new byte[]{-37}, new byte[]{-14, -110, -4, 124, 26, -91, -17, -79}));
        Log.i(strH, sb.toString());
        xVar.c.post(new e2(fVar, z8, message, 4));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void e() {
        s1.w wVar = (s1.w) this.d;
        String str = (String) this.c;
        wVar.b(str, m.h(new byte[]{64, 82}, new byte[]{15, 25, 73, 16, -69, -28, 83, -9}).equals(str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int iCreateSession;
        FileInputStream fileInputStream;
        int i9;
        String str;
        int i10 = 1;
        int i11 = 0;
        switch (this.f1871b) {
            case 0:
                b1.m.j((ContentResolver) this.d, (String) this.c);
                return;
            case 1:
                ProgressActivity progressActivity = (ProgressActivity) this.d;
                String str2 = (String) this.c;
                String str3 = ProgressActivity.e;
                PackageManager packageManager = progressActivity.getPackageManager();
                if (!str2.equals("") && packageManager != null) {
                    File file = new File(str2);
                    if (file.exists()) {
                        PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(str2, 69);
                        if (packageArchiveInfo != null) {
                            String str4 = packageArchiveInfo.packageName;
                            int i12 = packageArchiveInfo.versionCode;
                            String str5 = packageArchiveInfo.versionName;
                            String strH = m.h(new byte[]{2, -104, 34, 97, -72, 96, 122, 22, 124, -98, 14, 81, -92, 100, 121, 3, 37, -98}, new byte[]{81, -50, 99, 18, -53, 9, 9, 98});
                            StringBuilder sb = new StringBuilder();
                            com.google.protobuf.q.u(new byte[]{52, 9, 77, -51, 32, -80, -10, 64, 60, 9, 79, -37, 58, -78, -1, 113, 79, 16, 66, -35, 63, -80, -3, 73, 33, 1, 78, -37, 105}, new byte[]{111, 96, 35, -66, 84, -47, -102, 44}, sb, str4);
                            com.google.protobuf.q.t(new byte[]{-30, -121, 84, -70, -117, -120, -112, -89, -96, -28, 77, -69, -100, -58}, new byte[]{-50, -89, 34, -33, -7, -5, -7, -56}, sb, i12);
                            sb.append(m.h(new byte[]{4, -66, 121, -21, -66, -119, -79, -106, 70, -48, 110, -29, -87, -57}, new byte[]{40, -98, 15, -114, -52, -6, -40, -7}));
                            sb.append(str5);
                            Log.e(strH, sb.toString());
                            PackageInstaller packageInstaller = packageManager.getPackageInstaller();
                            PackageInstaller$SessionParams packageInstaller$SessionParams = new PackageInstaller$SessionParams(1);
                            packageInstaller$SessionParams.setSize(file.length());
                            try {
                                iCreateSession = packageInstaller.createSession(packageInstaller$SessionParams);
                            } catch (IOException e) {
                                e.printStackTrace();
                                iCreateSession = -1;
                            }
                            if (iCreateSession != -1) {
                                try {
                                    PackageInstaller$Session packageInstaller$SessionOpenSession = packageInstaller.openSession(iCreateSession);
                                    try {
                                        FileInputStream fileInputStream2 = new FileInputStream(str2);
                                        try {
                                            OutputStream outputStreamOpenWrite = packageInstaller$SessionOpenSession.openWrite(m.h(new byte[]{-111, -51, 27, -5, -29, -110, 77}, new byte[]{-31, -84, 120, -112, -126, -11, 40, 77}), 0L, -1L);
                                            try {
                                                try {
                                                    byte[] bArr = new byte[1024];
                                                    long length = new File(str2).length();
                                                    int i13 = 0;
                                                    while (true) {
                                                        int i14 = fileInputStream2.read(bArr);
                                                        if (i14 != -1) {
                                                            outputStreamOpenWrite.write(bArr, i11, i14);
                                                            i13 += i14;
                                                            fileInputStream = fileInputStream2;
                                                            try {
                                                                progressActivity.runOnUiThread(new k2(progressActivity, (int) ((((long) i13) * 100) / length), 1));
                                                                fileInputStream2 = fileInputStream;
                                                                i11 = 0;
                                                            } catch (Throwable th) {
                                                                th = th;
                                                            }
                                                        } else {
                                                            fileInputStream = fileInputStream2;
                                                            packageInstaller$SessionOpenSession.fsync(outputStreamOpenWrite);
                                                            if (outputStreamOpenWrite != null) {
                                                                outputStreamOpenWrite.close();
                                                            }
                                                            fileInputStream.close();
                                                            packageInstaller$SessionOpenSession.close();
                                                            if (m.g(progressActivity, packageInstaller, iCreateSession)) {
                                                                Log.e(m.h(new byte[]{-63, 107, -97, -115, 103, -107, 13, 119, -65, 109, -77, -67, 123, -111, 14, 98, -26, 109}, new byte[]{-110, Base64.padSymbol, -34, -2, 20, -4, 126, 3}), m.h(new byte[]{-14, 108, -36, 0, 77, 15, 68, 20, -49, 107, -64, 26, 12, 7, 71, 27, -34}, new byte[]{-69, 2, -81, 116, 44, 99, 40, 117}));
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
                                                    Throwable th5 = th;
                                                    try {
                                                        fileInputStream.close();
                                                        throw th5;
                                                    } catch (Throwable th6) {
                                                        th5.addSuppressed(th6);
                                                        throw th5;
                                                    }
                                                }
                                            } catch (Throwable th7) {
                                                th = th7;
                                                fileInputStream = fileInputStream2;
                                            }
                                        } catch (Throwable th8) {
                                            th = th8;
                                            fileInputStream = fileInputStream2;
                                        }
                                    } catch (Throwable th9) {
                                        if (packageInstaller$SessionOpenSession == null) {
                                            throw th9;
                                        }
                                        try {
                                            packageInstaller$SessionOpenSession.close();
                                            throw th9;
                                        } catch (Throwable th10) {
                                            th9.addSuppressed(th10);
                                            throw th9;
                                        }
                                        i10 = -1;
                                        progressActivity.runOnUiThread(new k2(progressActivity, i10, 0));
                                        return;
                                    }
                                } catch (IOException e6) {
                                    Log.e(m.h(new byte[]{93, 105, 86, -114, -101, 2, -56, -91, 35, 111, 122, -66, -121, 6, -53, -80, 122, 111}, new byte[]{14, 63, 23, -3, -24, 107, -69, -47}), m.h(new byte[]{-53, -98, -28, 15, 32, -46, -6, -51, -17, -126, -27, 6, 55, ByteCompanionObject.MIN_VALUE, -4, -42, -32, -117, -74, 33, 2, -71, -82, -53, -31, -52, -27, 5, 33, -127, -25, -48, -32}, new byte[]{-114, -20, -106, 96, 82, -14, -114, -65}), e6);
                                }
                            }
                        }
                    } else {
                        Log.e(m.h(new byte[]{-49, -17, -115, 14, 66, -50, -109, 84, -79, -23, -95, 62, 94, -54, -112, 65, -24, -23}, new byte[]{-100, -71, -52, 125, 49, -89, -32, 32}), m.h(new byte[]{-118, 91, 104, -71, 17, 83, 63, 2, -126, 91, 106, -81, 11, 81, 54, 51, -15, 83, 118, -95, 69, 92, 60, 26, -15, 87, 126, -93, 22, 70, ByteCompanionObject.MAX_VALUE, 78, -94, 93, 38, -72, 0, 70, 38, 28, -65, 28}, new byte[]{-47, 50, 6, -54, 101, 50, 83, 110}));
                    }
                    i10 = -1;
                    break;
                } else {
                    i10 = -1;
                }
                progressActivity.runOnUiThread(new k2(progressActivity, i10, 0));
                return;
            case 2:
                SystemMessageReceiver systemMessageReceiver = (SystemMessageReceiver) this.d;
                Context context = (Context) this.c;
                int i15 = SystemMessageReceiver.e;
                MainActivity.w();
                MainActivity.v(context.getApplicationContext());
                systemMessageReceiver.f843a.schedule(new a4.g(19, systemMessageReceiver), 100000L, TimeUnit.MILLISECONDS);
                return;
            case 3:
                TestSpaceActivity testSpaceActivity = (TestSpaceActivity) this.d;
                SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) this.c;
                if (testSpaceActivity.f848b != null) {
                    try {
                        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(spannableStringBuilder);
                        ForegroundColorSpan[] foregroundColorSpanArr = (ForegroundColorSpan[]) spannableStringBuilder2.getSpans(0, spannableStringBuilder2.length(), ForegroundColorSpan.class);
                        int length2 = foregroundColorSpanArr.length;
                        while (i11 < length2) {
                            ForegroundColorSpan foregroundColorSpan = foregroundColorSpanArr[i11];
                            int foregroundColor = foregroundColorSpan.getForegroundColor();
                            if (foregroundColor == -16777216) {
                                i9 = 2131035009;
                            } else if (foregroundColor == -65536) {
                                i9 = 2131035000;
                            } else {
                                if (foregroundColor == -16711936) {
                                    i9 = 2131035006;
                                }
                                i11++;
                            }
                            int spanStart = spannableStringBuilder2.getSpanStart(foregroundColorSpan);
                            int spanEnd = spannableStringBuilder2.getSpanEnd(foregroundColorSpan);
                            int spanFlags = spannableStringBuilder2.getSpanFlags(foregroundColorSpan);
                            spannableStringBuilder2.removeSpan(foregroundColorSpan);
                            spannableStringBuilder2.setSpan(new ForegroundColorSpan(testSpaceActivity.getColor(i9)), spanStart, spanEnd, spanFlags);
                            i11++;
                        }
                        testSpaceActivity.f848b.setText(spannableStringBuilder2);
                        if (testSpaceActivity.c == null || !h0.b.o().loadBoolean(m.h(new byte[]{-22, -22, -105, -81, -48, -89, 125, 86, -37, -26, -111, -76, -45, -90, 125, 92, -22, -3}, new byte[]{-103, -119, -27, -64, -68, -53, 41, 57}), true)) {
                            return;
                        }
                        testSpaceActivity.c.post(new a4.g(21, testSpaceActivity));
                        return;
                    } catch (IndexOutOfBoundsException unused) {
                        return;
                    }
                }
                return;
            case 4:
                y2 y2Var = (y2) this.d;
                AppCompatActivity appCompatActivity = (AppCompatActivity) this.c;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(appCompatActivity.getFilesDir().getPath());
                y2Var.c = com.google.protobuf.q.i(new byte[]{12}, new byte[]{35, -105, 94, 84, 63, ByteCompanionObject.MAX_VALUE, -106, -99}, sb2);
                String str6 = appCompatActivity.getResources().getString(2131952625) + appCompatActivity.getResources().getString(2131951931);
                a4.g gVar = new a4.g(22, y2Var);
                g2 g2Var = new g2();
                FragmentManager supportFragmentManager = appCompatActivity.getSupportFragmentManager();
                g2Var.f1846h = str6;
                g2Var.e = appCompatActivity;
                g2Var.f1845g = gVar;
                g2Var.f1847i = g2Var;
                g2Var.show(supportFragmentManager, m.h(new byte[]{34, 112, 111}, new byte[]{86, 17, 8, -70, -93, -32, -104, -76}));
                y2Var.f2007a = g2Var;
                if (!z2.f2016b || (str = y2Var.d) == null || str.trim().isEmpty()) {
                    y2Var.b(appCompatActivity);
                    return;
                }
                y2Var.f2008b = false;
                y2Var.f2010g = 0;
                File file2 = new File(y2Var.c, y2Var.e);
                if (file2.exists()) {
                    file2.delete();
                }
                y2Var.d(appCompatActivity);
                return;
            case 5:
                ((y2) this.d).d((Context) this.c);
                return;
            case 6:
                punto puntoVar = (punto) this.d;
                s3 s3Var = (s3) this.c;
                String str7 = punto.r;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(m.h(new byte[]{119, 91}, new byte[]{18, 54, -117, 44, 109, -108, -47, 65}), (String) s3Var.c);
                    jSONObject.put(m.h(new byte[]{-100, -68}, new byte[]{-11, -40, 126, -117, 13, -50, -15, 33}), (String) s3Var.d);
                    jSONObject.put(m.h(new byte[]{113, -4}, new byte[]{2, -108, 59, -100, -24, -87, 13, 17}), (String) s3Var.e);
                    jSONObject.put(m.h(new byte[]{-109, -12}, new byte[]{-29, -99, -98, 21, 3, 53, -118, -110}), (String) s3Var.f1952f);
                    jSONObject.put(m.h(new byte[]{ByteCompanionObject.MIN_VALUE, -79}, new byte[]{-29, -36, -107, -86, 42, -64, 93, 67}), (String) s3Var.f1953g);
                    jSONObject.put(m.h(new byte[]{-45, -47, 89}, new byte[]{-70, -65, 63, -36, -106, -48, 12, -38}), y5.k.i());
                    String strH2 = m.h(new byte[]{83, -62, 117}, new byte[]{59, -79, 29, 83, -121, 115, -79, -127});
                    String str8 = MainActivity.f688e1;
                    String packageName = puntoVar.getApplicationContext().getPackageName();
                    long jValueOf = 0L;
                    for (PackageInfo packageInfo : puntoVar.getPackageManager().getInstalledPackages(0)) {
                        if (packageName.equals(packageInfo.packageName)) {
                            jValueOf = Long.valueOf(packageInfo.firstInstallTime);
                        }
                    }
                    jSONObject.put(strH2, jValueOf);
                    break;
                } catch (JSONException unused2) {
                }
                Request requestBuild = new Request$Builder().url(m.h(new byte[]{35, 106, 2, -94, -6, 28, -75, -70}, new byte[]{75, 30, 118, -46, -119, 38, -102, -107}) + punto.f1003u).post(RequestBody.create(jSONObject.toString(), MediaType.parse(m.h(new byte[]{78, -103, -49, -70, 48, 17, -104, 69, 70, -122, -47, -7, 51, 1, -106, 95, 20, -55, -36, -66, 56, 0, -118, 84, 91, -44, -54, -94, 63, 95, -63}, new byte[]{47, -23, -65, -42, 89, 114, -7, 49})))).addHeader(m.h(new byte[]{-82, 68, -49, -108, -108, -14, 117, -90, -71, 82, -47, -123}, new byte[]{-19, 43, -95, -32, -15, -100, 1, -117}), m.h(new byte[]{16, -121, 126, -19, -22, -40, 66, -19, 24, -104, 96, -82, -23, -56, 76, -9}, new byte[]{113, -9, 14, -127, -125, -69, 35, -103})).addHeader(m.h(new byte[]{-24, 50, -64, 24, -59, 95}, new byte[]{-87, 81, -93, 125, -75, 43, 16, 116}), m.h(new byte[]{19, 22, -38, 123, -119, 112, -66, -58, 27, 9, -60, 56, -118, 96, -80, -36}, new byte[]{114, 102, -86, 23, -32, 19, -33, -78})).build();
                h0.b.a();
                h0.b.m().newCall(requestBuild).enqueue(new r5.c(8, puntoVar));
                return;
            case 7:
                a();
                return;
            case 8:
                f5.a aVar = (f5.a) this.d;
                d5.i iVar = (d5.i) this.c;
                aVar.getClass();
                try {
                    e3.d.m("Updating active experiment: ".concat(iVar.toString()));
                    aVar.f2183a.a(new p4.b(iVar.o(), iVar.t(), iVar.r(), new Date(iVar.p()), iVar.s(), iVar.q()));
                    return;
                } catch (p4.a e9) {
                    Log.e("FIAM.Headless", "Unable to set experiment as active with ABT, missing analytics?\n" + e9.getMessage());
                    return;
                }
            case 9:
                RadarActivity radarActivity = (RadarActivity) this.d;
                i7.n nVar = (i7.n) this.c;
                RadarView radarView = radarActivity.f1611b;
                double latitude = nVar.f2705a.getLatitude();
                double longitude = nVar.f2705a.getLongitude();
                radarView.f1619j = latitude;
                radarView.f1620k = longitude;
                radarView.invalidate();
                radarActivity.f1611b.setCarDirection(nVar.f2706b);
                radarActivity.f1611b.setRadarRadius(nVar.d);
                radarActivity.f1611b.setCameras(nVar.c);
                return;
            case 10:
                ((j0.c) this.d).j((j0.e) this.c, null);
                return;
            case 11:
                JobInfoSchedulerService jobInfoSchedulerService = (JobInfoSchedulerService) this.d;
                JobParameters jobParameters = (JobParameters) this.c;
                int i16 = JobInfoSchedulerService.f1069b;
                jobInfoSchedulerService.jobFinished(jobParameters, false);
                return;
            case 12:
                try {
                    Toast.makeText((Context) this.d, (CharSequence) this.c, 1).show();
                    return;
                } catch (Exception unused3) {
                    return;
                }
            case 13:
                String str9 = (String) this.c;
                androidx.fragment.app.h hVar = (androidx.fragment.app.h) this.d;
                WeatherService.h(true);
                k7.b bVarE = WeatherService.a().e(str9);
                if (bVarE != null) {
                    WeatherService.g(bVarE);
                }
                if (hVar != null) {
                    b1.s sVar = ((b1.l) hVar.c).c;
                    if (bVarE != null) {
                        sVar.e(m.h(new byte[]{124, 83, 123, 12, -17, 117, -56}, new byte[]{11, 54, 26, 120, -121, 16, -70, -97}), b1.l.N(bVarE));
                    } else {
                        sVar.e(m.h(new byte[]{15, 60, 91, -12, -44, 32, -4}, new byte[]{120, 89, 58, ByteCompanionObject.MIN_VALUE, -68, 69, -114, 87}), b1.l.e(m.h(new byte[]{86, -118, -16, 95, 84, -17, -70, -126, 65, -120, -12}, new byte[]{35, -28, -111, 41, 53, -122, -42, -29})));
                    }
                }
                WeatherService.h(false);
                return;
            case 14:
                ((WeatherService) this.d).f1631b.setLoad((Boolean) this.c);
                return;
            case 15:
                l0.a aVar2 = (l0.a) this.d;
                View view = (View) this.c;
                String str10 = l0.a.d;
                if (view.isAttachedToWindow()) {
                    int width = view.getWidth() / 2;
                    int height = view.getHeight() / 2;
                    Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, width, height, 0.0f, (float) Math.hypot(width, height));
                    view.setVisibility(0);
                    animatorCreateCircularReveal.setDuration(700L);
                    animatorCreateCircularReveal.addListener(new e3.c(4, aVar2));
                    animatorCreateCircularReveal.start();
                    return;
                }
                return;
            case 16:
                m0.v vVar = (m0.v) this.d;
                ArrayList arrayList = (ArrayList) this.c;
                String str11 = m0.v.f3604h;
                if (vVar.isAdded()) {
                    vVar.D(arrayList);
                    return;
                }
                return;
            case 17:
                m0.o0 o0Var = (m0.o0) this.d;
                String str12 = (String) this.c;
                WebView webView = o0Var.f3554b;
                if (webView != null) {
                    webView.evaluateJavascript(str12, null);
                    return;
                }
                return;
            case 18:
                m0.i1 i1Var = (m0.i1) this.d;
                ArrayList arrayList2 = (ArrayList) this.c;
                ArrayList arrayList3 = i1Var.e;
                arrayList3.clear();
                arrayList3.addAll(arrayList2);
                i1Var.f3472b.setAdapter(new m0.g1(i1Var, arrayList3, new androidx.fragment.app.h(21, i1Var)));
                return;
            case 19:
                m0.l1 l1Var = (m0.l1) this.d;
                String str13 = (String) this.c;
                WebView webView2 = l1Var.c;
                if (webView2 != null) {
                    webView2.evaluateJavascript(str13, null);
                    return;
                }
                return;
            case 20:
                ((m0.n1) this.d).d.seteditTextMessadge((String) this.c);
                return;
            case 21:
                m0.c3 c3Var = (m0.c3) this.d;
                Runnable runnable = (Runnable) this.c;
                if (c3Var.isAdded()) {
                    runnable.run();
                    return;
                }
                return;
            case 22:
                ReadAheadInputStream.b((ReadAheadInputStream) this.d, (byte[]) this.c);
                return;
            case 23:
                f5.f fVar = (f5.f) this.d;
                m0.b3 b3Var = (m0.b3) this.c;
                fVar.getClass();
                boolean z8 = b3Var.f3341a;
                m0.s0 s0Var = (m0.s0) fVar.c;
                p0.a aVar3 = (p0.a) fVar.d;
                if (!s0Var.isAdded() || p0.b.e(aVar3)) {
                    return;
                }
                if (z8 || b3Var.f3342b != null) {
                    y5.k.x(s0Var.requireContext(), s0Var.getString(z8 ? 2131952119 : 2131952118));
                    return;
                }
                return;
            case 24:
                b();
                return;
            case 25:
                c();
                return;
            case 26:
                d();
                return;
            case 27:
                e();
                return;
            case 28:
                ((s1.x) this.d).c((String) this.c);
                return;
            default:
                s1.q0 q0Var = (s1.q0) this.d;
                Bitmap bitmap = (Bitmap) this.c;
                if (q0Var.E) {
                    return;
                }
                q0Var.c.setImageBitmap(bitmap);
                return;
        }
    }

    public /* synthetic */ j2(int i9, Object obj, Object obj2) {
        this.f1871b = i9;
        this.d = obj;
        this.c = obj2;
    }
}
