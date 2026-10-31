package p016b1;

import ai.onnxruntime.AbstractC0074a;
import android.app.AlertDialog;
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
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.MyA11yService;
import com.example.navistart.MyCarReceiver;
import com.example.navistart.R;
import com.example.navistart.cores.ColorText;
import com.example.navistart.home.WebLauncherActivity;
import com.google.protobuf.AbstractC1178q;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONObject;
import p002a1.RunnableC0003a;
import p005a4.RunnableC0014g;
import p047e0.AbstractC1387m;
import p047e0.C1440x1;
import p047e0.RunnableC1375j2;
import p058f1.C1532e;
import p062f5.C1548f;
import p078h0.C1652b;
import p084h7.C1683k;
import p132m0.C2271b3;
import p132m0.C2276c3;
import p132m0.C2304i1;
import p132m0.C2311j3;
import p132m0.RunnableC2351s2;
import p164p0.C2949b;
import p180r0.ViewOnClickListenerC3091d;
import p190s1.C3148h0;
import p190s1.C3150i0;
import p190s1.C3166q0;
import p190s1.C3179x;
import p190s1.InterfaceC3177w;
import p225w0.AbstractC3440a;
import p225w0.AbstractC3441a0;
import p225w0.AbstractC3475l1;
import p225w0.C3493u0;
import p225w0.C3495v0;
import p225w0.C3498x;
import p225w0.EnumC3472k1;
import p225w0.EnumC3502z;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: b1.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0873n implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f605b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f606c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f607d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f608e;

    public /* synthetic */ RunnableC0873n(MyA11yService myA11yService, AccessibilityNodeInfo accessibilityNodeInfo, String str, String str2) {
        this.f605b = 2;
        this.f606c = accessibilityNodeInfo;
        this.f607d = str;
        this.f608e = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String simpleName;
        File file;
        String string;
        C2271b3 c2271b3M3645a;
        final int i10 = 1;
        File file2 = null;
        int i11 = 9;
        final int i12 = 0;
        switch (this.f605b) {
            case 0:
                C0877r c0877r = (C0877r) this.f606c;
                String str = (String) this.f607d;
                String str2 = (String) this.f608e;
                if (c0877r.f625c == null) {
                    return;
                }
                StringBuilder sb = new StringBuilder();
                AbstractC1178q.m2087u(new byte[]{-115, 64, -117, -45, 25, -99, 68, 52, -108, 104, -117, -45, 4, -123, 3, 63, -65, 95, ByteCompanionObject.MIN_VALUE, -39, 2, -54, 76, 125, -38, 94, -116, -39, 18, -123, 29, 117, -107, 71, -92, -39, 18, -104, 5, 50, -98, 108, -109, -46, 24, -98, 66, 124}, new byte[]{-6, 41, -27, -73, 118, -22, 106, 91}, sb, str);
                AbstractC1178q.m2087u(new byte[]{-102, -27, 22}, new byte[]{-67, -55, 54, 80, -47, -47, -68, -19}, sb, str2);
                String strM2075i = AbstractC1178q.m2075i(new byte[]{-120, 44}, new byte[]{-95, 23, 75, 108, -8, 8, -19, 125}, sb);
                try {
                    if (c0877r.f624b) {
                        c0877r.f625c.post(new RunnableC0003a(i11, c0877r, strM2075i));
                        return;
                    }
                    return;
                } catch (NullPointerException unused) {
                    return;
                }
            case 1:
                C1440x1 c1440x1 = (C1440x1) this.f606c;
                MediaController mediaController = (MediaController) this.f607d;
                MediaController mediaController2 = (MediaController) this.f608e;
                if (c1440x1.f3486o) {
                    c1440x1.f3486o = false;
                    if (mediaController != null) {
                        c1440x1.m2491e(mediaController);
                        c1440x1.f3486o = true;
                        return;
                    }
                    if (mediaController2 != null) {
                        mediaController2.registerCallback(c1440x1);
                    }
                    C1440x1.m2488d(mediaController2);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(AbstractC1387m.m2421h(new byte[]{-75, -58, 28, 18, 36, 35, -4, 107, -116, -47, 23, 23, 41, 5, -31, 37, -43, -125}, new byte[]{-8, -93, 120, 123, 69, 96, -109, 5}));
                    sb2.append(mediaController2 != null ? mediaController2.getPackageName() : AbstractC1387m.m2421h(new byte[]{-126, -6, -100, 1}, new byte[]{-20, -113, -16, 109, -39, 44, 125, -121}));
                    C1652b.m2751w(sb2.toString(), ColorText.RED);
                    c1440x1.f3486o = true;
                    return;
                }
                return;
            case 2:
                AccessibilityNodeInfo accessibilityNodeInfo = (AccessibilityNodeInfo) this.f606c;
                String str3 = (String) this.f607d;
                String str4 = (String) this.f608e;
                MyA11yService myA11yService = MyA11yService.f1453c;
                StringBuilder sbM170u = AbstractC0074a.m170u(str3);
                sbM170u.append(AbstractC1387m.m2421h(new byte[]{30, -71, 13, 54, -44, 19, 91, -112, 78, -88, 9, 58, -1, 47, 69, -100, 93, -90, 85}, new byte[]{62, -51, 104, 78, -96, 76, 41, -11}));
                sbM170u.append(str4);
                MyA11yService.m1477c(accessibilityNodeInfo, sbM170u.toString());
                return;
            case 3:
                MyCarReceiver myCarReceiver = (MyCarReceiver) this.f606c;
                Context context = (Context) this.f607d;
                Intent intent = (Intent) this.f608e;
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = MyCarReceiver.f1463c;
                myCarReceiver.onReceive(context, intent);
                return;
            case 4:
                MyCarReceiver myCarReceiver2 = (MyCarReceiver) this.f606c;
                RunnableC0003a runnableC0003a = (RunnableC0003a) this.f608e;
                String str5 = (String) this.f607d;
                ConcurrentHashMap concurrentHashMap = myCarReceiver2.f1480a;
                try {
                    runnableC0003a.run();
                    return;
                } finally {
                    concurrentHashMap.remove(str5);
                }
            case 5:
                C1532e c1532e = (C1532e) this.f606c;
                JSONObject jSONObjectM2610v = C1532e.m2610v((String) this.f607d, (JSONObject) this.f608e);
                if (jSONObjectM2610v == null || !jSONObjectM2610v.optBoolean(AbstractC1387m.m2421h(new byte[]{99, 15, -37, -120, 69, -120, -93}, new byte[]{16, 122, -72, -21, 32, -5, -48, -10}), false)) {
                    c1532e.f3766b.post(new RunnableC0014g(28, c1532e));
                    return;
                }
                return;
            case 6:
                C1683k c1683k = (C1683k) this.f606c;
                String str6 = (String) this.f607d;
                Context context2 = (Context) this.f608e;
                c1683k.getClass();
                Log.d(C1683k.f4313k, AbstractC1387m.m2421h(new byte[]{-3, 15, 57, -66, 94, -113, 16, -65, -21, 15, 51, -83, 66, -103, 28, -65, -8, 12, 33, -70, 85, -54}, new byte[]{-103, 106, 85, -33, 39, -22, 116, -97}) + str6);
                c1683k.m2797o(context2);
                return;
            case 7:
                Bundle bundle = (Bundle) this.f606c;
                Context context3 = (Context) this.f607d;
                Intent intent2 = (Intent) this.f608e;
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
                C2304i1 c2304i1 = (C2304i1) this.f606c;
                RecyclerView recyclerView = (RecyclerView) this.f607d;
                Runnable runnable = (Runnable) this.f608e;
                String str7 = C2304i1.f6142i;
                if (c2304i1.isAdded() && recyclerView != null && c2304i1.f6149b == recyclerView) {
                    runnable.run();
                    return;
                }
                return;
            case 9:
                C2276c3 c2276c3 = (C2276c3) this.f606c;
                String str8 = (String) this.f607d;
                File file3 = (File) this.f608e;
                c2276c3.m3663H(null, false);
                if (str8 != null) {
                    c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_delete_error, str8));
                    return;
                }
                File file4 = c2276c3.f5986u;
                if (file4 != null && C2276c3.m3655G(file4).equals(C2276c3.m3655G(file3))) {
                    c2276c3.f5986u = null;
                    c2276c3.m3666K();
                }
                c2276c3.m3667v();
                c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_delete_done, file3.getName()));
                c2276c3.m3661D(c2276c3.f5985t);
                return;
            case 10:
                C2276c3 c2276c4 = (C2276c3) this.f606c;
                File file5 = (File) this.f607d;
                File file6 = (File) this.f608e;
                try {
                    File fileM3657u = C2276c3.m3657u(file5, file6.getName());
                    try {
                        if (file6.isDirectory()) {
                            String strM3655G = C2276c3.m3655G(file6);
                            String strM3655G2 = C2276c3.m3655G(file5);
                            if (!strM3655G2.equals(strM3655G)) {
                                if (!strM3655G2.startsWith(strM3655G + File.separator)) {
                                }
                            }
                            try {
                                string = c2276c4.getString(R.string.user_file_manager_same_place_error);
                                break;
                            } catch (Exception unused3) {
                                string = "";
                            }
                            throw new IOException(string);
                        }
                        C2276c3.m3659x(file6, fileM3657u);
                        file = fileM3657u;
                        simpleName = null;
                    } catch (Exception e) {
                        e = e;
                        file2 = fileM3657u;
                        simpleName = e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage();
                        file = file2;
                    }
                } catch (Exception e6) {
                    e = e6;
                }
                c2276c4.m3662F(new RunnableC2351s2(0, c2276c4, simpleName, file, file5));
                return;
            case 11:
                C2949b c2949b = (C2949b) this.f606c;
                ComponentName componentName = (ComponentName) this.f607d;
                C1548f c1548f = (C1548f) this.f608e;
                try {
                    synchronized (C2949b.f8187c) {
                        try {
                            c2271b3M3645a = c2949b.m4722a(componentName);
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                } catch (SecurityException unused4) {
                    c2271b3M3645a = new C2271b3(true, (String) null);
                } catch (Exception e10) {
                    c2271b3M3645a = C2271b3.m3645a(e10.getClass().getSimpleName());
                }
                new Handler(Looper.getMainLooper()).post(new RunnableC1375j2(23, c1548f, c2271b3M3645a));
                return;
            case 12:
                C3179x c3179x = (C3179x) this.f606c;
                String str9 = (String) this.f607d;
                InterfaceC3177w interfaceC3177w = (InterfaceC3177w) this.f608e;
                String strM5109c = c3179x.m5109c(str9);
                if (!AbstractC1387m.m2421h(new byte[]{-73, 125}, new byte[]{-8, 54, -28, -103, -1, 9, -120, -13}).equals(strM5109c)) {
                    Log.w(AbstractC1387m.m2421h(new byte[]{68, 38, 22, -10, 117, -60, -126, 99, 73, 55, 19, -49, ByteCompanionObject.MAX_VALUE, -62, -125, 126, ByteCompanionObject.MAX_VALUE}, new byte[]{8, 71, 99, -104, 22, -84, -25, 17}), str9.split(" ")[0] + AbstractC1387m.m2421h(new byte[]{-120, 105, -15, 43, -27, 16, 29, 63, -120}, new byte[]{-88, 15, -112, 66, -119, 117, 121, 5}) + strM5109c);
                }
                c3179x.f9251c.post(new RunnableC1375j2(27, interfaceC3177w, strM5109c));
                return;
            case 13:
                C3166q0 c3166q0 = (C3166q0) this.f606c;
                ArrayList arrayList = (ArrayList) this.f607d;
                ArrayList arrayList2 = (ArrayList) this.f608e;
                if (!c3166q0.f9160E && c3166q0.f9183s && c3166q0.isAttachedToWindow()) {
                    if (arrayList.isEmpty()) {
                        AbstractC3656k.m5878x(c3166q0.getContext(), AbstractC1387m.m2421h(new byte[]{0, 64, 26, -46, -71, 23, -56, 5, 100, 13, 116, -74, -23, 68, 106, 4, 83, 13, 117, -73, -43, 68, 99, 4, 85, -3, 26, -40, -71, 21, 56, 109, 0, 102, 26, -39, -72, 35, 56, 96, 0, 96, 26, -33, -72, 44}, new byte[]{-48, -35, -54, 103, 104, -107, -24, -43}));
                        return;
                    }
                    LinearLayout linearLayoutM5065j = c3166q0.m5065j();
                    TextView textViewM5051P = c3166q0.m5051P(AbstractC1387m.m2421h(new byte[]{-54, 80, -96, -61, 53, -45, 71, -43, -54, 113, -95, -11, 53, -34, 71, -45, -54, 119, -95, -10, -59, -69, 37, 78, -54, 113, -95, -7, 53, -42, 71, -37}, new byte[]{26, -49, 113, 67, -27, 107, -105, 110}), 25, -1);
                    textViewM5051P.setTypeface(Typeface.DEFAULT_BOLD);
                    textViewM5051P.setMaxLines(1);
                    linearLayoutM5065j.addView(textViewM5051P);
                    linearLayoutM5065j.addView(c3166q0.m5066k(AbstractC1387m.m2421h(new byte[]{75, 63, -81, -39, 87, -122, 84, -6, 74, 45, -82, -22, 86, -75, 84, -6, -69, 125, -63, -125, 7, -25, 60, -97, 32, 125, -64, -126, 49, -25, 49, -97, 38, 125, -58, -126, 50, 23, 84, -5, 75, 22, -81, -35, -89, -25, 51, -97, 43, 125, -63, -125, 4, -26, 5, -97, 33, 125, -50, 114, 87, -123, -92, -97, 37, 125, -60, -126, 58, -25, 49}, new byte[]{-101, -83, 126, 82, -121, 55, -124, 79})));
                    EditText editText = new EditText(c3166q0.getContext());
                    editText.setSingleLine(true);
                    editText.setTextSize(16.0f);
                    editText.setTextColor(-1);
                    editText.setHintTextColor(-8218712);
                    editText.setHint(AbstractC1387m.m2421h(new byte[]{57, -94, -116, -72, 14, -95, -5, 48, 57, -121, 124, -42, 97, -55, -108, -111, 57, ByteCompanionObject.MIN_VALUE, -116, -74, 14, -82, -6, 3, 57, -115, -116, -69, 14, -95, -5, 63}, new byte[]{-23, Base64.padSymbol, 92, 6, -34, 25, 42, -79}));
                    editText.setPadding(c3166q0.m5067l(18), 0, c3166q0.m5067l(18), 0);
                    editText.setBackground(c3166q0.m5043G(-15721692, 15, -13547174));
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, c3166q0.m5067l(54));
                    layoutParams.topMargin = c3166q0.m5067l(14);
                    layoutParams.bottomMargin = c3166q0.m5067l(12);
                    linearLayoutM5065j.addView(editText, layoutParams);
                    ListView listView = new ListView(c3166q0.getContext());
                    listView.setDivider(null);
                    listView.setDividerHeight(0);
                    listView.setCacheColorHint(0);
                    listView.setBackgroundColor(0);
                    C3150i0 c3150i0 = new C3150i0(c3166q0, arrayList);
                    listView.setAdapter((ListAdapter) c3150i0);
                    linearLayoutM5065j.addView(listView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
                    Button buttonM5053R = c3166q0.m5053R(AbstractC1387m.m2421h(new byte[]{-87, 75, -114, 42, 112, -37, 82, 75, -87, 104, -113, 24}, new byte[]{121, -43, 95, -88, -96, 103, -126, -2}), false);
                    buttonM5053R.setTextSize(16.0f);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(c3166q0.m5067l(170), c3166q0.m5067l(50));
                    layoutParams2.gravity = 5;
                    layoutParams2.topMargin = c3166q0.m5067l(12);
                    linearLayoutM5065j.addView(buttonM5053R, layoutParams2);
                    AlertDialog alertDialogCreate = new AlertDialog.Builder(c3166q0.getContext()).setView(linearLayoutM5065j).create();
                    listView.setOnItemClickListener(new C2311j3(c3166q0, arrayList, c3150i0, arrayList2, alertDialogCreate, 1));
                    editText.addTextChangedListener(new C3148h0(c3150i0, 0));
                    buttonM5053R.setOnClickListener(new ViewOnClickListenerC3091d(alertDialogCreate, 2));
                    c3166q0.m5050N(alertDialogCreate, 820);
                    return;
                }
                return;
            case 14:
                WebLauncherActivity webLauncherActivity = (WebLauncherActivity) this.f606c;
                String str10 = (String) this.f607d;
                String str11 = (String) this.f608e;
                WebView webView = webLauncherActivity.f1744e;
                if (webView != null) {
                    StringBuilder sb3 = new StringBuilder();
                    AbstractC1178q.m2087u(new byte[]{-76, -114, 3, 3, -20, 39, -94, -83, -83, -90, 3, 3, -15, 63, -27, -90, -122, -111, 8, 9, -9, 118, -86, -75, -86, -119, 9, 8, -12, 126, -29, -84, -126, -119, 9, 21, -20, 57, -24, -121, -75, -126, 3, 19, -85}, new byte[]{-61, -25, 109, 103, -125, 80, -116, -62}, sb3, str10);
                    AbstractC1178q.m2087u(new byte[]{-1}, new byte[]{-45, -119, -71, 64, -75, -29, -30, 116}, sb3, str11);
                    sb3.append(AbstractC1387m.m2421h(new byte[]{-18, -33}, new byte[]{-57, -28, -90, -46, -18, -43, -66, 10}));
                    webView.evaluateJavascript(sb3.toString(), null);
                    return;
                }
                return;
            case 15:
                final C3495v0 c3495v0 = (C3495v0) this.f606c;
                Context context4 = (Context) this.f607d;
                EnumC3472k1 enumC3472k1 = (EnumC3472k1) this.f608e;
                try {
                    AbstractC3441a0.m5368b();
                    AbstractC3475l1.m5452f(context4, enumC3472k1, new C3493u0(c3495v0));
                    C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-125, 25, -84, 30, -106, 111, 45, 62, -110, 3, -66, 18, -84, 92, 33, 63, -111, 19, -77}, new byte[]{-11, 118, -33, 117, -55, 3, 76, 80}), enumC3472k1.name());
                    synchronized (AbstractC3441a0.class) {
                        try {
                            AbstractC3441a0.m5368b();
                            if (AbstractC3441a0.f9924d instanceof C3498x) {
                                ((C3498x) AbstractC3441a0.f9924d).m5553t();
                            }
                            AbstractC3441a0.f9924d = null;
                            AbstractC3441a0.m5373g(context4.getApplicationContext());
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    final String string2 = context4.getString(R.string.vosk_model_installed, context4.getString(enumC3472k1.f10071b));
                    if (c3495v0.isAdded()) {
                        c3495v0.requireActivity().runOnUiThread(new Runnable() { // from class: w0.r0
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i10) {
                                    case 0:
                                        String str12 = string2;
                                        C3495v0 c3495v1 = c3495v0;
                                        c3495v1.f10242l.setText(str12);
                                        c3495v1.m5502t(true);
                                        break;
                                    default:
                                        String str13 = string2;
                                        C3495v0 c3495v2 = c3495v0;
                                        c3495v2.f10239i.setText(str13);
                                        c3495v2.f10238h.setEnabled(true);
                                        c3495v2.f10237g.setEnabled(true);
                                        break;
                                }
                            }
                        });
                        return;
                    }
                    return;
                } catch (Exception e11) {
                    AbstractC3441a0.m5373g(context4);
                    final String string3 = context4.getString(R.string.vosk_model_install_error, e11.getMessage() == null ? e11.getClass().getSimpleName() : e11.getMessage());
                    if (c3495v0.isAdded()) {
                        c3495v0.requireActivity().runOnUiThread(new Runnable() { // from class: w0.r0
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i10) {
                                    case 0:
                                        String str12 = string3;
                                        C3495v0 c3495v1 = c3495v0;
                                        c3495v1.f10242l.setText(str12);
                                        c3495v1.m5502t(true);
                                        break;
                                    default:
                                        String str13 = string3;
                                        C3495v0 c3495v2 = c3495v0;
                                        c3495v2.f10239i.setText(str13);
                                        c3495v2.f10238h.setEnabled(true);
                                        c3495v2.f10237g.setEnabled(true);
                                        break;
                                }
                            }
                        });
                        return;
                    }
                    return;
                }
            default:
                final C3495v0 c3495v1 = (C3495v0) this.f606c;
                Context context5 = (Context) this.f607d;
                EnumC3502z enumC3502z = (EnumC3502z) this.f608e;
                try {
                    AbstractC3440a.m5364e(context5, new C3493u0(c3495v1));
                    AbstractC3441a0.m5374h(context5, enumC3502z);
                    final String string4 = context5.getString(enumC3502z == EnumC3502z.f10328d ? R.string.voice_engine_free_active : R.string.voice_engine_advanced_ready);
                    if (c3495v1.isAdded()) {
                        c3495v1.requireActivity().runOnUiThread(new Runnable() { // from class: w0.r0
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i12) {
                                    case 0:
                                        String str12 = string4;
                                        C3495v0 c3495v2 = c3495v1;
                                        c3495v2.f10242l.setText(str12);
                                        c3495v2.m5502t(true);
                                        break;
                                    default:
                                        String str13 = string4;
                                        C3495v0 c3495v3 = c3495v1;
                                        c3495v3.f10239i.setText(str13);
                                        c3495v3.f10238h.setEnabled(true);
                                        c3495v3.f10237g.setEnabled(true);
                                        break;
                                }
                            }
                        });
                        return;
                    }
                    return;
                } catch (Exception e12) {
                    AbstractC3441a0.m5374h(context5, EnumC3502z.f10326b);
                    final String string5 = context5.getString(R.string.voice_engine_install_error, e12.getMessage() == null ? e12.getClass().getSimpleName() : e12.getMessage());
                    if (c3495v1.isAdded()) {
                        c3495v1.requireActivity().runOnUiThread(new Runnable() { // from class: w0.r0
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i12) {
                                    case 0:
                                        String str12 = string5;
                                        C3495v0 c3495v2 = c3495v1;
                                        c3495v2.f10242l.setText(str12);
                                        c3495v2.m5502t(true);
                                        break;
                                    default:
                                        String str13 = string5;
                                        C3495v0 c3495v3 = c3495v1;
                                        c3495v3.f10239i.setText(str13);
                                        c3495v3.f10238h.setEnabled(true);
                                        c3495v3.f10237g.setEnabled(true);
                                        break;
                                }
                            }
                        });
                        return;
                    }
                    return;
                }
        }
    }

    public /* synthetic */ RunnableC0873n(MyCarReceiver myCarReceiver, RunnableC0003a runnableC0003a, String str) {
        this.f605b = 4;
        this.f606c = myCarReceiver;
        this.f608e = runnableC0003a;
        this.f607d = str;
    }

    public /* synthetic */ RunnableC0873n(Object obj, Object obj2, Object obj3, int i10) {
        this.f605b = i10;
        this.f606c = obj;
        this.f607d = obj2;
        this.f608e = obj3;
    }
}
