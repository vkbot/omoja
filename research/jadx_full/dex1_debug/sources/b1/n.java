package b1;

import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.media.session.MediaController;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.accessibility.AccessibilityNodeInfo;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.MyA11yService;
import com.example.navistart.MyCarReceiver;
import com.example.navistart.cores.ColorText;
import com.example.navistart.home.WebLauncherActivity;
import e0.j2;
import e0.x1;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.b3;
import m0.c3;
import m0.i1;
import m0.j3;
import m0.s2;
import org.json.JSONObject;
import s1.h0;
import s1.i0;
import s1.q0;
import s1.w;
import s1.x;
import w0.a0;
import w0.k1;
import w0.l1;
import w0.r0;
import w0.u0;
import w0.v0;
import w0.z;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class n implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f271b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ n(MyA11yService myA11yService, AccessibilityNodeInfo accessibilityNodeInfo, String str, String str2) {
        this.f271b = 2;
        this.c = accessibilityNodeInfo;
        this.d = str;
        this.e = str2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        String simpleName;
        File file;
        String string;
        b3 b3VarA;
        File file2 = null;
        switch (this.f271b) {
            case 0:
                r rVar = (r) this.c;
                String str = (String) this.d;
                String str2 = (String) this.e;
                if (rVar.c == null) {
                    return;
                }
                StringBuilder sb = new StringBuilder();
                com.google.protobuf.q.u(new byte[]{-115, 64, -117, -45, 25, -99, 68, 52, -108, 104, -117, -45, 4, -123, 3, 63, -65, 95, ByteCompanionObject.MIN_VALUE, -39, 2, -54, 76, 125, -38, 94, -116, -39, 18, -123, 29, 117, -107, 71, -92, -39, 18, -104, 5, 50, -98, 108, -109, -46, 24, -98, 66, 124}, new byte[]{-6, 41, -27, -73, 118, -22, 106, 91}, sb, str);
                com.google.protobuf.q.u(new byte[]{-102, -27, 22}, new byte[]{-67, -55, 54, 80, -47, -47, -68, -19}, sb, str2);
                String strI = com.google.protobuf.q.i(new byte[]{-120, 44}, new byte[]{-95, 23, 75, 108, -8, 8, -19, 125}, sb);
                try {
                    if (rVar.f280b) {
                        rVar.c.post(new a1.a(9, rVar, strI));
                        return;
                    }
                    return;
                } catch (NullPointerException unused) {
                    return;
                }
            case 1:
                x1 x1Var = (x1) this.c;
                MediaController mediaController = (MediaController) this.d;
                MediaController mediaController2 = (MediaController) this.e;
                if (x1Var.f2001o) {
                    x1Var.f2001o = false;
                    if (mediaController != null) {
                        x1Var.e(mediaController);
                        x1Var.f2001o = true;
                        return;
                    }
                    if (mediaController2 != null) {
                        mediaController2.registerCallback(x1Var);
                    }
                    x1.d(mediaController2);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(e0.m.h(new byte[]{-75, -58, 28, 18, 36, 35, -4, 107, -116, -47, 23, 23, 41, 5, -31, 37, -43, -125}, new byte[]{-8, -93, 120, 123, 69, 96, -109, 5}));
                    sb2.append(mediaController2 != null ? mediaController2.getPackageName() : e0.m.h(new byte[]{-126, -6, -100, 1}, new byte[]{-20, -113, -16, 109, -39, 44, 125, -121}));
                    h0.b.w(sb2.toString(), ColorText.RED);
                    x1Var.f2001o = true;
                    return;
                }
                return;
            case 2:
                AccessibilityNodeInfo accessibilityNodeInfo = (AccessibilityNodeInfo) this.c;
                String str3 = (String) this.d;
                String str4 = (String) this.e;
                MyA11yService myA11yService = MyA11yService.c;
                StringBuilder sbU = ai.onnxruntime.a.u(str3);
                sbU.append(e0.m.h(new byte[]{30, -71, 13, 54, -44, 19, 91, -112, 78, -88, 9, 58, -1, 47, 69, -100, 93, -90, 85}, new byte[]{62, -51, 104, 78, -96, 76, 41, -11}));
                sbU.append(str4);
                MyA11yService.c(accessibilityNodeInfo, sbU.toString());
                return;
            case 3:
                MyCarReceiver myCarReceiver = (MyCarReceiver) this.c;
                Context context = (Context) this.d;
                Intent intent = (Intent) this.e;
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = MyCarReceiver.c;
                myCarReceiver.onReceive(context, intent);
                return;
            case 4:
                MyCarReceiver myCarReceiver2 = (MyCarReceiver) this.c;
                a1.a aVar = (a1.a) this.e;
                String str5 = (String) this.d;
                ConcurrentHashMap concurrentHashMap = myCarReceiver2.f790a;
                try {
                    aVar.run();
                    return;
                } finally {
                    concurrentHashMap.remove(str5);
                }
            case 5:
                f1.e eVar = (f1.e) this.c;
                JSONObject jSONObjectV = f1.e.v((String) this.d, (JSONObject) this.e);
                if (jSONObjectV == null || !jSONObjectV.optBoolean(e0.m.h(new byte[]{99, 15, -37, -120, 69, -120, -93}, new byte[]{16, 122, -72, -21, 32, -5, -48, -10}), false)) {
                    eVar.f2168b.post(new a4.g(28, eVar));
                    return;
                }
                return;
            case 6:
                h7.k kVar = (h7.k) this.c;
                String str6 = (String) this.d;
                Context context2 = (Context) this.e;
                kVar.getClass();
                Log.d(h7.k.f2501k, e0.m.h(new byte[]{-3, 15, 57, -66, 94, -113, 16, -65, -21, 15, 51, -83, 66, -103, 28, -65, -8, 12, 33, -70, 85, -54}, new byte[]{-103, 106, 85, -33, 39, -22, 116, -97}) + str6);
                kVar.o(context2);
                return;
            case 7:
                Bundle bundle = (Bundle) this.c;
                Context context3 = (Context) this.d;
                Intent intent2 = (Intent) this.e;
                try {
                    if (bundle != null) {
                        context3.startActivity(intent2, bundle);
                    } else {
                        context3.startActivity(intent2);
                    }
                    return;
                } catch (Exception unused2) {
                    return;
                }
            case 8:
                i1 i1Var = (i1) this.c;
                RecyclerView recyclerView = (RecyclerView) this.d;
                Runnable runnable = (Runnable) this.e;
                String str7 = i1.f3465i;
                if (i1Var.isAdded() && recyclerView != null && i1Var.f3472b == recyclerView) {
                    runnable.run();
                    return;
                }
                return;
            case 9:
                c3 c3Var = (c3) this.c;
                String str8 = (String) this.d;
                File file3 = (File) this.e;
                c3Var.H(null, false);
                if (str8 != null) {
                    c3Var.I(c3Var.getString(2131952698, str8));
                    return;
                }
                File file4 = c3Var.f3369u;
                if (file4 != null && c3.G(file4).equals(c3.G(file3))) {
                    c3Var.f3369u = null;
                    c3Var.K();
                }
                c3Var.v();
                c3Var.I(c3Var.getString(2131952697, file3.getName()));
                c3Var.D(c3Var.t);
                return;
            case 10:
                c3 c3Var2 = (c3) this.c;
                File file5 = (File) this.d;
                File file6 = (File) this.e;
                try {
                    File fileU = c3.u(file5, file6.getName());
                    try {
                        if (file6.isDirectory()) {
                            String strG = c3.G(file6);
                            String strG2 = c3.G(file5);
                            if (!strG2.equals(strG)) {
                                if (!strG2.startsWith(strG + File.separator)) {
                                }
                            }
                            try {
                                string = c3Var2.getString(2131952726);
                                break;
                            } catch (Exception unused3) {
                                string = "";
                            }
                            throw new IOException(string);
                        }
                        c3.x(file6, fileU);
                        file = fileU;
                        simpleName = null;
                    } catch (Exception e) {
                        e = e;
                        file2 = fileU;
                        simpleName = e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage();
                        file = file2;
                    }
                } catch (Exception e6) {
                    e = e6;
                }
                c3Var2.F(new s2(0, c3Var2, simpleName, file, file5));
                return;
            case 11:
                p0.b bVar = (p0.b) this.c;
                ComponentName componentName = (ComponentName) this.d;
                f5.f fVar = (f5.f) this.e;
                try {
                    synchronized (p0.b.c) {
                        try {
                            b3VarA = bVar.a(componentName);
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                } catch (SecurityException unused4) {
                    b3VarA = new b3(true, (String) null);
                } catch (Exception e9) {
                    b3VarA = b3.a(e9.getClass().getSimpleName());
                }
                new Handler(Looper.getMainLooper()).post(new j2(23, fVar, b3VarA));
                return;
            case 12:
                x xVar = (x) this.c;
                String str9 = (String) this.d;
                w wVar = (w) this.e;
                String strC = xVar.c(str9);
                if (!e0.m.h(new byte[]{-73, 125}, new byte[]{-8, 54, -28, -103, -1, 9, -120, -13}).equals(strC)) {
                    Log.w(e0.m.h(new byte[]{68, 38, 22, -10, 117, -60, -126, 99, 73, 55, 19, -49, ByteCompanionObject.MAX_VALUE, -62, -125, 126, ByteCompanionObject.MAX_VALUE}, new byte[]{8, 71, 99, -104, 22, -84, -25, 17}), str9.split(" ")[0] + e0.m.h(new byte[]{-120, 105, -15, 43, -27, 16, 29, 63, -120}, new byte[]{-88, 15, -112, 66, -119, 117, 121, 5}) + strC);
                }
                xVar.c.post(new j2(27, wVar, strC));
                return;
            case 13:
                q0 q0Var = (q0) this.c;
                ArrayList arrayList = (ArrayList) this.d;
                ArrayList arrayList2 = (ArrayList) this.e;
                if (!q0Var.E && q0Var.f5183s && q0Var.isAttachedToWindow()) {
                    if (arrayList.isEmpty()) {
                        y5.k.x(q0Var.getContext(), e0.m.h(new byte[]{0, 64, 26, -46, -71, 23, -56, 5, 100, 13, 116, -74, -23, 68, 106, 4, 83, 13, 117, -73, -43, 68, 99, 4, 85, -3, 26, -40, -71, 21, 56, 109, 0, 102, 26, -39, -72, 35, 56, 96, 0, 96, 26, -33, -72, 44}, new byte[]{-48, -35, -54, 103, 104, -107, -24, -43}));
                        return;
                    }
                    LinearLayout linearLayoutJ = q0Var.j();
                    TextView textViewP = q0Var.P(e0.m.h(new byte[]{-54, 80, -96, -61, 53, -45, 71, -43, -54, 113, -95, -11, 53, -34, 71, -45, -54, 119, -95, -10, -59, -69, 37, 78, -54, 113, -95, -7, 53, -42, 71, -37}, new byte[]{26, -49, 113, 67, -27, 107, -105, 110}), 25, -1);
                    textViewP.setTypeface(Typeface.DEFAULT_BOLD);
                    textViewP.setMaxLines(1);
                    linearLayoutJ.addView(textViewP);
                    linearLayoutJ.addView(q0Var.k(e0.m.h(new byte[]{75, 63, -81, -39, 87, -122, 84, -6, 74, 45, -82, -22, 86, -75, 84, -6, -69, 125, -63, -125, 7, -25, 60, -97, 32, 125, -64, -126, 49, -25, 49, -97, 38, 125, -58, -126, 50, 23, 84, -5, 75, 22, -81, -35, -89, -25, 51, -97, 43, 125, -63, -125, 4, -26, 5, -97, 33, 125, -50, 114, 87, -123, -92, -97, 37, 125, -60, -126, 58, -25, 49}, new byte[]{-101, -83, 126, 82, -121, 55, -124, 79})));
                    EditText editText = new EditText(q0Var.getContext());
                    editText.setSingleLine(true);
                    editText.setTextSize(16.0f);
                    editText.setTextColor(-1);
                    editText.setHintTextColor(-8218712);
                    editText.setHint(e0.m.h(new byte[]{57, -94, -116, -72, 14, -95, -5, 48, 57, -121, 124, -42, 97, -55, -108, -111, 57, ByteCompanionObject.MIN_VALUE, -116, -74, 14, -82, -6, 3, 57, -115, -116, -69, 14, -95, -5, 63}, new byte[]{-23, Base64.padSymbol, 92, 6, -34, 25, 42, -79}));
                    editText.setPadding(q0Var.l(18), 0, q0Var.l(18), 0);
                    editText.setBackground(q0Var.G(-15721692, 15, -13547174));
                    LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, q0Var.l(54));
                    linearLayout$LayoutParams.topMargin = q0Var.l(14);
                    linearLayout$LayoutParams.bottomMargin = q0Var.l(12);
                    linearLayoutJ.addView(editText, linearLayout$LayoutParams);
                    ListView listView = new ListView(q0Var.getContext());
                    listView.setDivider(null);
                    listView.setDividerHeight(0);
                    listView.setCacheColorHint(0);
                    listView.setBackgroundColor(0);
                    i0 i0Var = new i0(q0Var, arrayList);
                    listView.setAdapter((ListAdapter) i0Var);
                    linearLayoutJ.addView(listView, new LinearLayout$LayoutParams(-1, 0, 1.0f));
                    Button buttonR = q0Var.R(e0.m.h(new byte[]{-87, 75, -114, 42, 112, -37, 82, 75, -87, 104, -113, 24}, new byte[]{121, -43, 95, -88, -96, 103, -126, -2}), false);
                    buttonR.setTextSize(16.0f);
                    LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(q0Var.l(170), q0Var.l(50));
                    linearLayout$LayoutParams2.gravity = 5;
                    linearLayout$LayoutParams2.topMargin = q0Var.l(12);
                    linearLayoutJ.addView(buttonR, linearLayout$LayoutParams2);
                    AlertDialog alertDialogCreate = new AlertDialog$Builder(q0Var.getContext()).setView(linearLayoutJ).create();
                    listView.setOnItemClickListener(new j3(q0Var, arrayList, i0Var, arrayList2, alertDialogCreate, 1));
                    editText.addTextChangedListener(new h0(i0Var, 0));
                    buttonR.setOnClickListener(new r0.d(alertDialogCreate, 2));
                    q0Var.N(alertDialogCreate, 820);
                    return;
                }
                return;
            case 14:
                WebLauncherActivity webLauncherActivity = (WebLauncherActivity) this.c;
                String str10 = (String) this.d;
                String str11 = (String) this.e;
                WebView webView = webLauncherActivity.e;
                if (webView != null) {
                    StringBuilder sb3 = new StringBuilder();
                    com.google.protobuf.q.u(new byte[]{-76, -114, 3, 3, -20, 39, -94, -83, -83, -90, 3, 3, -15, 63, -27, -90, -122, -111, 8, 9, -9, 118, -86, -75, -86, -119, 9, 8, -12, 126, -29, -84, -126, -119, 9, 21, -20, 57, -24, -121, -75, -126, 3, 19, -85}, new byte[]{-61, -25, 109, 103, -125, 80, -116, -62}, sb3, str10);
                    com.google.protobuf.q.u(new byte[]{-1}, new byte[]{-45, -119, -71, 64, -75, -29, -30, 116}, sb3, str11);
                    sb3.append(e0.m.h(new byte[]{-18, -33}, new byte[]{-57, -28, -90, -46, -18, -43, -66, 10}));
                    webView.evaluateJavascript(sb3.toString(), null);
                    return;
                }
                return;
            case 15:
                v0 v0Var = (v0) this.c;
                Context context4 = (Context) this.d;
                k1 k1Var = (k1) this.e;
                try {
                    a0.b();
                    l1.f(context4, k1Var, new u0(v0Var));
                    h0.b.o().saveString(e0.m.h(new byte[]{-125, 25, -84, 30, -106, 111, 45, 62, -110, 3, -66, 18, -84, 92, 33, 63, -111, 19, -77}, new byte[]{-11, 118, -33, 117, -55, 3, 76, 80}), k1Var.name());
                    synchronized (a0.class) {
                        try {
                            a0.b();
                            if (a0.d instanceof w0.x) {
                                ((w0.x) a0.d).t();
                            }
                            a0.d = null;
                            a0.g(context4.getApplicationContext());
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    String string2 = context4.getString(2131952849, context4.getString(k1Var.f5689b));
                    if (v0Var.isAdded()) {
                        v0Var.requireActivity().runOnUiThread(new r0(v0Var, string2, 1));
                        return;
                    }
                    return;
                } catch (Exception e10) {
                    a0.g(context4);
                    String string3 = context4.getString(2131952848, e10.getMessage() == null ? e10.getClass().getSimpleName() : e10.getMessage());
                    if (v0Var.isAdded()) {
                        v0Var.requireActivity().runOnUiThread(new r0(v0Var, string3, 1));
                        return;
                    }
                    return;
                }
            default:
                v0 v0Var2 = (v0) this.c;
                Context context5 = (Context) this.d;
                z zVar = (z) this.e;
                try {
                    w0.a.e(context5, new u0(v0Var2));
                    a0.h(context5, zVar);
                    String string4 = context5.getString(zVar == z.d ? 2131952810 : 2131952807);
                    if (v0Var2.isAdded()) {
                        v0Var2.requireActivity().runOnUiThread(new r0(v0Var2, string4, 0));
                        return;
                    }
                    return;
                } catch (Exception e11) {
                    a0.h(context5, z.f5831b);
                    String string5 = context5.getString(2131952812, e11.getMessage() == null ? e11.getClass().getSimpleName() : e11.getMessage());
                    if (v0Var2.isAdded()) {
                        v0Var2.requireActivity().runOnUiThread(new r0(v0Var2, string5, 0));
                        return;
                    }
                    return;
                }
        }
    }

    public /* synthetic */ n(MyCarReceiver myCarReceiver, a1.a aVar, String str) {
        this.f271b = 4;
        this.c = myCarReceiver;
        this.e = aVar;
        this.d = str;
    }

    public /* synthetic */ n(Object obj, Object obj2, Object obj3, int i9) {
        this.f271b = i9;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }
}
