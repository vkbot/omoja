package com.example.navistart;

import ai.onnxruntime.AbstractC0074a;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Display;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.core.utils.C0279a;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.content.p012pm.PackageInfoCompat;
import androidx.core.os.ConfigurationCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.C0427a;
import androidx.lifecycle.Observer;
import androidx.navigation.ViewOnClickListenerC0675c;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.AllWidgetServices;
import com.example.navistart.LounchB;
import com.example.navistart.MainActivity;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.Notik;
import com.example.navistart.OverlayService;
import com.example.navistart.ServiceC1080Si;
import com.example.navistart.SpeedBoardService;
import com.example.navistart.SystemMessageReceiver;
import com.example.navistart.TService;
import com.example.navistart.cores.BezFunEnum;
import com.example.navistart.cores.HFunEnum;
import com.example.navistart.mainview.HeatManSetView;
import com.example.navistart.mainview.MainView;
import com.example.navistart.mainview.MainWidjet;
import com.example.navistart.mainview.YMovLay;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.materialswitch.MaterialSwitch;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.textfield.TextInputLayout;
import com.google.protobuf.AbstractC1178q;
import com.woha.atir.RadarActivity;
import com.woha.pogoda.WeatherService;
import com.woha.wifim.MainWifiManadger;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p002a1.RunnableC0003a;
import p005a4.RunnableC0014g;
import p016b1.AbstractC0880u;
import p016b1.C0862c;
import p041d4.C1279m;
import p047e0.AbstractAsyncTaskC1449z2;
import p047e0.AbstractC1358g0;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.AbstractC1434w;
import p047e0.C1329a1;
import p047e0.C1334b1;
import p047e0.C1339c1;
import p047e0.C1343d0;
import p047e0.C1344d1;
import p047e0.C1349e1;
import p047e0.C1354f1;
import p047e0.C1357g;
import p047e0.C1369i1;
import p047e0.C1374j1;
import p047e0.C1378k0;
import p047e0.C1396n3;
import p047e0.C1403p0;
import p047e0.C1418s0;
import p047e0.C1423t0;
import p047e0.C1445y2;
import p047e0.C1447z0;
import p047e0.RunnableC1388m0;
import p047e0.ViewOnClickListenerC1393n0;
import p047e0.ViewOnClickListenerC1408q0;
import p050e3.C1461d;
import p078h0.C1652b;
import p099j1.C1944x;
import p142n0.EnumC2466a;
import p142n0.EnumC2468c;
import p142n0.EnumC2471f;
import p184r5.C3105c;
import p190s1.AbstractC3134a1;
import p206u0.C3277a;
import p217v1.C3324b;
import p217v1.C3326d;
import p250y5.AbstractC3656k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: i1 */
    public static AllWidgetServices f1292i1;

    /* JADX INFO: renamed from: A */
    public MaterialSwitch f1296A;

    /* JADX INFO: renamed from: A0 */
    public Spinner f1297A0;

    /* JADX INFO: renamed from: B */
    public MaterialSwitch f1298B;

    /* JADX INFO: renamed from: B0 */
    public Spinner f1299B0;

    /* JADX INFO: renamed from: C */
    public MaterialSwitch f1300C;

    /* JADX INFO: renamed from: C0 */
    public Spinner f1301C0;

    /* JADX INFO: renamed from: D */
    public HeatManSetView f1302D;

    /* JADX INFO: renamed from: D0 */
    public Spinner f1303D0;

    /* JADX INFO: renamed from: E */
    public HeatManSetView f1304E;

    /* JADX INFO: renamed from: E0 */
    public Spinner f1305E0;

    /* JADX INFO: renamed from: F */
    public HeatManSetView f1306F;

    /* JADX INFO: renamed from: F0 */
    public Spinner f1307F0;

    /* JADX INFO: renamed from: G */
    public HeatManSetView f1308G;

    /* JADX INFO: renamed from: G0 */
    public Spinner f1309G0;

    /* JADX INFO: renamed from: H */
    public HeatManSetView f1310H;

    /* JADX INFO: renamed from: H0 */
    public Spinner f1311H0;

    /* JADX INFO: renamed from: I */
    public HeatManSetView f1312I;

    /* JADX INFO: renamed from: I0 */
    public Spinner f1313I0;

    /* JADX INFO: renamed from: J */
    public HeatManSetView f1314J;

    /* JADX INFO: renamed from: J0 */
    public Spinner f1315J0;

    /* JADX INFO: renamed from: K */
    public HeatManSetView f1316K;

    /* JADX INFO: renamed from: K0 */
    public Spinner f1317K0;

    /* JADX INFO: renamed from: L */
    public CardView f1318L;

    /* JADX INFO: renamed from: L0 */
    public Spinner f1319L0;

    /* JADX INFO: renamed from: M */
    public CardView f1320M;

    /* JADX INFO: renamed from: M0 */
    public Spinner f1321M0;

    /* JADX INFO: renamed from: N */
    public CardView f1322N;

    /* JADX INFO: renamed from: N0 */
    public Spinner f1323N0;

    /* JADX INFO: renamed from: O */
    public CardView f1324O;

    /* JADX INFO: renamed from: O0 */
    public Spinner f1325O0;

    /* JADX INFO: renamed from: P */
    public CardView f1326P;

    /* JADX INFO: renamed from: P0 */
    public Spinner f1327P0;

    /* JADX INFO: renamed from: Q */
    public CardView f1328Q;

    /* JADX INFO: renamed from: Q0 */
    public TextInputLayout f1329Q0;

    /* JADX INFO: renamed from: R */
    public CardView f1330R;

    /* JADX INFO: renamed from: R0 */
    public YMovLay f1331R0;

    /* JADX INFO: renamed from: S */
    public CardView f1332S;

    /* JADX INFO: renamed from: S0 */
    public YMovLay f1333S0;

    /* JADX INFO: renamed from: T */
    public LinearLayout f1334T;

    /* JADX INFO: renamed from: T0 */
    public YMovLay f1335T0;

    /* JADX INFO: renamed from: U */
    public LinearLayout f1336U;

    /* JADX INFO: renamed from: U0 */
    public YMovLay f1337U0;

    /* JADX INFO: renamed from: V */
    public LinearLayout f1338V;

    /* JADX INFO: renamed from: V0 */
    public YMovLay f1339V0;

    /* JADX INFO: renamed from: W */
    public LinearLayout f1340W;

    /* JADX INFO: renamed from: W0 */
    public CardView f1341W0;

    /* JADX INFO: renamed from: X */
    public LinearLayout f1342X;

    /* JADX INFO: renamed from: X0 */
    public ImageView f1343X0;

    /* JADX INFO: renamed from: Y */
    public LinearLayout f1344Y;

    /* JADX INFO: renamed from: Y0 */
    public CardView f1345Y0;

    /* JADX INFO: renamed from: Z */
    public LinearLayout f1346Z;

    /* JADX INFO: renamed from: Z0 */
    public LinearLayout f1347Z0;

    /* JADX INFO: renamed from: a0 */
    public LinearLayout f1348a0;

    /* JADX INFO: renamed from: a1 */
    public MainWidjet f1349a1;

    /* JADX INFO: renamed from: b0 */
    public View f1351b0;

    /* JADX INFO: renamed from: b1 */
    public Button f1352b1;

    /* JADX INFO: renamed from: c */
    public TextView f1353c;

    /* JADX INFO: renamed from: c0 */
    public View f1354c0;

    /* JADX INFO: renamed from: c1 */
    public MainView f1355c1;

    /* JADX INFO: renamed from: d0 */
    public View f1357d0;

    /* JADX INFO: renamed from: e0 */
    public MaterialSwitch f1360e0;

    /* JADX INFO: renamed from: f0 */
    public MaterialSwitch f1362f0;

    /* JADX INFO: renamed from: g0 */
    public MaterialSwitch f1364g0;

    /* JADX INFO: renamed from: h0 */
    public MaterialSwitch f1366h0;

    /* JADX INFO: renamed from: i0 */
    public MaterialSwitch f1368i0;

    /* JADX INFO: renamed from: j0 */
    public MaterialSwitch f1370j0;

    /* JADX INFO: renamed from: k0 */
    public MaterialSwitch f1372k0;

    /* JADX INFO: renamed from: l0 */
    public MaterialSwitch f1374l0;

    /* JADX INFO: renamed from: m0 */
    public MaterialSwitch f1376m0;

    /* JADX INFO: renamed from: n0 */
    public MaterialSwitch f1378n0;

    /* JADX INFO: renamed from: o0 */
    public MaterialSwitch f1380o0;

    /* JADX INFO: renamed from: p0 */
    public MaterialSwitch f1382p0;

    /* JADX INFO: renamed from: q0 */
    public MaterialSwitch f1384q0;

    /* JADX INFO: renamed from: r0 */
    public MaterialSwitch f1386r0;

    /* JADX INFO: renamed from: s0 */
    public FlexboxLayout f1388s0;

    /* JADX INFO: renamed from: t */
    public String[] f1389t;

    /* JADX INFO: renamed from: t0 */
    public MaterialSwitch f1390t0;

    /* JADX INFO: renamed from: u */
    public String[] f1391u;

    /* JADX INFO: renamed from: u0 */
    public MaterialSwitch f1392u0;

    /* JADX INFO: renamed from: v */
    public String[] f1393v;

    /* JADX INFO: renamed from: v0 */
    public MaterialSwitch f1394v0;

    /* JADX INFO: renamed from: w0 */
    public MaterialSwitch f1396w0;

    /* JADX INFO: renamed from: x */
    public TabLayout f1397x;

    /* JADX INFO: renamed from: x0 */
    public MaterialSwitch f1398x0;

    /* JADX INFO: renamed from: y */
    public MaterialSwitch f1399y;

    /* JADX INFO: renamed from: y0 */
    public MaterialSwitch f1400y0;

    /* JADX INFO: renamed from: z */
    public MaterialSwitch f1401z;

    /* JADX INFO: renamed from: z0 */
    public Spinner f1402z0;

    /* JADX INFO: renamed from: e1 */
    public static final String f1288e1 = AbstractC1387m.m2421h(new byte[]{-94, 118, -39, 111, 110, -2, -40, 49, -88, 45, -114, 119, 97, -12, -39, 44, -66, 98, -127, ByteCompanionObject.MAX_VALUE}, new byte[]{-48, 3, -9, 22, 15, -112, -68, 84});

    /* JADX INFO: renamed from: f1 */
    public static final String f1289f1 = AbstractC1387m.m2421h(new byte[]{87, -59, -4}, new byte[]{39, -82, -101, 10, -44, 14, -67, -117});

    /* JADX INFO: renamed from: g1 */
    public static final String f1290g1 = AbstractC1387m.m2421h(new byte[]{43, 108, -4, -30, 48, -96, -20, -44, 4, 89, -34, -30, 34, -91, -15, -43, 53, 79, -40, -36, 49, -92, -38, -35, 31}, new byte[]{106, 60, -84, -67, 67, -48, -123, -70});

    /* JADX INFO: renamed from: h1 */
    public static final String f1291h1 = AbstractC1387m.m2421h(new byte[]{8, -65, -126, ByteCompanionObject.MIN_VALUE, -80, 43, 23, 70, 2, -73, -97, -115, -65, 19, 59, 95, 2, -74, -124, -123, -114, 23, 11, 92, 19, -96, -126, -120, -114, 16, 13, 65, 6, -80, -127, -127, -75}, new byte[]{103, -46, -19, -28, -47, 116, 100, 50});

    /* JADX INFO: renamed from: j1 */
    public static Long f1293j1 = -1L;

    /* JADX INFO: renamed from: k1 */
    public static final String[] f1294k1 = {AbstractC1387m.m2421h(new byte[]{58, 118, 67, 99, -58, -90, -5}, new byte[]{99, 59, 28, 81, -10, -120, -55, -3}), AbstractC1387m.m2421h(new byte[]{46, 10, -62, 27, -42, -111}, new byte[]{119, 68, -99, 42, -8, -89, 121, 102}), AbstractC1387m.m2421h(new byte[]{-46, -44, 17, 45, 77, -13}, new byte[]{-117, -102, 78, 26, 99, -62, 24, -41}), AbstractC1387m.m2421h(new byte[]{13, 117, 24, -55}, new byte[]{122, 20, 98, -84, -78, 29, 34, -102}), AbstractC1387m.m2421h(new byte[]{113, 50, -58, -8, -32, 2, -109, 84, 92, 26, -22, -66}, new byte[]{40, ByteCompanionObject.MAX_VALUE, -103, -54, -48, 44, -95, 11})};

    /* JADX INFO: renamed from: l1 */
    public static Boolean f1295l1 = null;

    /* JADX INFO: renamed from: b */
    public boolean f1350b = true;

    /* JADX INFO: renamed from: d */
    public int f1356d = 0;

    /* JADX INFO: renamed from: e */
    public final Handler f1359e = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: f */
    public String f1361f = AbstractC1406p3.m2447b(2) + AbstractC1406p3.m2447b(4) + AbstractC1406p3.m2446a(6) + AbstractC1406p3.m2446a(0) + AbstractC1387m.m2421h(new byte[]{29}, new byte[]{51, 24, 58, -13, 46, 124, Base64.padSymbol, -60}) + AbstractC1406p3.m2448c(5) + AbstractC1406p3.m2448c(7);

    /* JADX INFO: renamed from: g */
    public final String f1363g = AbstractC1387m.m2421h(new byte[]{47, -89, -126, 20, -84, -118, 113, 102, 9, -122, -70, 17, -89}, new byte[]{104, -12, -35, 120, -55, -20, 5, 43});

    /* JADX INFO: renamed from: h */
    public final String f1365h = AbstractC1387m.m2421h(new byte[]{117, 59, -96, -30, -67, -116, -104, -104, 64, 15, -106, -8}, new byte[]{50, 104, -1, -106, -46, -4, -43, -7});

    /* JADX INFO: renamed from: i */
    public final String f1367i = AbstractC1387m.m2421h(new byte[]{-122, -97, 65, 92}, new byte[]{-73, -84, 116, 108, -30, -39, 87, 11});

    /* JADX INFO: renamed from: j */
    public final String f1369j = AbstractC1387m.m2421h(new byte[]{-106, -91, -54}, new byte[]{-94, -107, -6, -92, 19, -70, 87, 1});

    /* JADX INFO: renamed from: k */
    public final String f1371k = AbstractC1387m.m2421h(new byte[]{46, -90, 118, -38, -117, -111, -13, 28, 12, -103, 78, -33, ByteCompanionObject.MIN_VALUE}, new byte[]{109, -21, 41, -74, -18, -9, -121, 81});

    /* JADX INFO: renamed from: l */
    public final String f1373l = AbstractC1387m.m2421h(new byte[]{118, -109, 103, -29, 47, -91, -52, 114, 71, -71, 81, -7}, new byte[]{53, -34, 56, -105, 64, -43, -127, 19});

    /* JADX INFO: renamed from: m */
    public final String f1375m = AbstractC1387m.m2421h(new byte[]{52, 76, -21, -85}, new byte[]{5, 120, -37, -101, 1, 37, -13, -62});

    /* JADX INFO: renamed from: n */
    public final String f1377n = AbstractC1387m.m2421h(new byte[]{-16, -62, 106}, new byte[]{-62, -9, 90, 54, -68, -70, -53, -76});

    /* JADX INFO: renamed from: o */
    public final String f1379o = AbstractC1387m.m2421h(new byte[]{112, 98, 63, 54, 11, -90, -59, 18, 87, 83, 7, 51, 0}, new byte[]{54, 33, 96, 90, 110, -64, -79, 95});

    /* JADX INFO: renamed from: p */
    public final String f1381p = AbstractC1387m.m2421h(new byte[]{36, 69, 103, 15, -108, 97, -77, 92, 15, 75, 89, 31, -100, 124, -87}, new byte[]{98, 6, 56, 109, -5, 21, -57, 51});

    /* JADX INFO: renamed from: q */
    public final String f1383q = AbstractC1387m.m2421h(new byte[]{-106, -35, -126}, new byte[]{-95, -24, -78, 67, 43, 40, -3, -78});

    /* JADX INFO: renamed from: r */
    public final String f1385r = AbstractC1387m.m2421h(new byte[]{-33, -33, -58}, new byte[]{-18, -22, -10, -15, 18, 111, 80, -86});

    /* JADX INFO: renamed from: s */
    public final String f1387s = AbstractC1387m.m2421h(new byte[]{-23, -123, -8}, new byte[]{-40, -77, -56, -25, -67, 29, -28, -44});

    /* JADX INFO: renamed from: w */
    public String f1395w = "";

    /* JADX INFO: renamed from: d1 */
    public final HashMap f1358d1 = new HashMap();

    /* JADX INFO: renamed from: B */
    public static String m1423B(String str) throws ClassNotFoundException {
        Class<?> cls = Class.forName(AbstractC1387m.m2421h(new byte[]{-16, 31, 20, 14, -3, 15, 93, 112, -2, 2, 94, 47, -21, 21, 77, 59, -4, 33, 2, 19, -30, 3, 75, 42, -8, 20, 3}, new byte[]{-111, 113, 112, 124, -110, 102, 57, 94}));
        return (String) cls.getMethod(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, -97, 56}, new byte[]{24, -6, 76, -114, 9, 66, -21, 58}), String.class).invoke(cls, str);
    }

    /* JADX INFO: renamed from: s */
    public static void m1424s(MainActivity mainActivity) {
        if (ContextCompat.checkSelfPermission(mainActivity, AbstractC1387m.m2421h(new byte[]{-7, -23, -80, 56, 15, -13, 6, 24, -24, -30, -90, 39, 9, -23, 17, 95, -9, -23, -6, 11, 35, -39, 39, 101, -53, -40, -110, 3, 46, -33, Base64.padSymbol, 122, -41, -60, -107, 30, 41, -43, 44}, new byte[]{-104, -121, -44, 74, 96, -102, 98, 54})) != 0) {
            ActivityCompat.requestPermissions(mainActivity, new String[]{AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, -68, -30, 120, 57, -47, -79, -127, 110, -73, -12, 103, 63, -53, -90, -58, 113, -68, -88, 75, 21, -5, -112, -4, 77, -115, -64, 67, 24, -3, -118, -29, 81, -111, -57, 94, 31, -9, -101}, new byte[]{30, -46, -122, 10, 86, -72, -43, -81})}, 100);
        } else {
            if (Build.VERSION.SDK_INT < 29 || ContextCompat.checkSelfPermission(mainActivity, AbstractC1387m.m2421h(new byte[]{100, 107, 76, 18, 84, 20, 77, 35, 117, 96, 90, 13, 82, 14, 90, 100, 106, 107, 6, 33, 120, 62, 108, 94, 86, 90, 106, 33, 120, 54, 110, 95, 74, 80, 102, 36, 100, 49, 102, 78, 68, 81, 97, 47, 117}, new byte[]{5, 5, 40, 96, 59, 125, 41, 13})) == 0) {
                return;
            }
            ActivityCompat.requestPermissions(mainActivity, new String[]{AbstractC1387m.m2421h(new byte[]{-7, 0, -82, 106, -35, 5, -87, -63, -24, 11, -72, 117, -37, 31, -66, -122, -9, 0, -28, 89, -15, 47, -120, -68, -53, 49, -120, 89, -15, 39, -118, -67, -41, 59, -124, 92, -19, 32, -126, -84, -39, 58, -125, 87, -4}, new byte[]{-104, 110, -54, 24, -78, 108, -51, -17})}, 100);
        }
    }

    /* JADX INFO: renamed from: v */
    public static boolean m1425v(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    /* JADX INFO: renamed from: w */
    public static boolean m1426w() {
        try {
            String[] strArr = AbstractC1406p3.f3368a;
            String strM1423B = m1423B(AbstractC0880u.m1000g(strArr[0]));
            String strM1423B2 = m1423B(AbstractC0880u.m1000g(strArr[1]));
            String strM1423B3 = m1423B(AbstractC0880u.m1000g(strArr[2]));
            return (strM1423B != null && (strM1423B.contains(AbstractC0880u.m1000g(strArr[3])) || strM1423B.contains(AbstractC0880u.m1000g(strArr[4])))) || (strM1423B2 != null && strM1423B2.equals(AbstractC1387m.m2421h(new byte[]{118}, new byte[]{71, 77, -16, 84, -89, -23, -54, 69}))) || (strM1423B3 != null && (strM1423B3.contains(AbstractC0880u.m1000g(strArr[5])) || strM1423B3.contains(AbstractC0880u.m1000g(strArr[6])))) || m1427x();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: x */
    public static boolean m1427x() {
        Boolean bool = f1295l1;
        if (bool != null) {
            return bool.booleanValue();
        }
        String[] strArr = AbstractC1406p3.f3368a;
        String[] strArr2 = {AbstractC0880u.m1000g(strArr[7]), AbstractC0880u.m1000g(strArr[8]), AbstractC0880u.m1000g(strArr[9]), AbstractC0880u.m1000g(strArr[10])};
        for (int i10 = 0; i10 < 4; i10++) {
            if (new File(strArr2[i10]).exists()) {
                f1295l1 = Boolean.TRUE;
                return true;
            }
        }
        f1295l1 = Boolean.FALSE;
        return false;
    }

    /* JADX INFO: renamed from: y */
    public static int m1428y(String str, ArrayList arrayList) {
        if (str == null || str.isEmpty()) {
            return 0;
        }
        for (int i10 = 1; i10 < arrayList.size(); i10++) {
            if (str.equals(((C1374j1) arrayList.get(i10)).f3279a)) {
                return i10;
            }
        }
        return 0;
    }

    /* JADX INFO: renamed from: A */
    public final int m1429A() {
        return this.f1397x.getSelectedTabPosition() + 1;
    }

    /* JADX INFO: renamed from: C */
    public final void m1430C() {
        RadioGroup radioGroup = (RadioGroup) findViewById(R.id.rg_phev_drive_mode);
        int i10 = 0;
        int iLoadInt = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-101, 114, 20, 15, 72, 94, 96, -126, -101, 101, 34, 10, 72, 109, 104, -114, -117, 105, 18, 23}, new byte[]{-1, 0, 125, 121, 45, 1, 13, -19}), 0);
        if (iLoadInt == 1) {
            radioGroup.check(R.id.rb_phev_drive_mode_eco);
        } else if (iLoadInt == 2) {
            radioGroup.check(R.id.rb_phev_drive_mode_normal);
        } else if (iLoadInt == 3) {
            radioGroup.check(R.id.rb_phev_drive_mode_sport);
        } else {
            radioGroup.check(R.id.rb_phev_drive_mode_not_set);
        }
        radioGroup.setOnCheckedChangeListener(new C1403p0(this, i10));
    }

    /* JADX INFO: renamed from: D */
    public final void m1431D() {
        RadioGroup radioGroup = (RadioGroup) findViewById(R.id.rg_exlantix_drive_mode);
        final int[] iArr = {R.id.rb_exlantix_drive_mode_not_set, R.id.rb_exlantix_drive_mode_eco, R.id.rb_exlantix_drive_mode_comfort, R.id.rb_exlantix_drive_mode_sport, R.id.rb_exlantix_drive_mode_manual};
        int i10 = 0;
        int iLoadInt = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-48, 63, 77, 82, -101, 96, -88, -6, -22, 35, 83, 90, -125, 113, -98, -17, -38, 35, 68, 108, -122, 113, -83, -25, -42, 51, 72, 92, -101}, new byte[]{-75, 71, 33, 51, -11, 20, -63, -126}), 0);
        final View viewFindViewById = findViewById(R.id.lay_exlantix_manual_config);
        viewFindViewById.setVisibility(iLoadInt == 4 ? 0 : 8);
        m1432E(R.id.rg_exlantix_manual_engine, new int[]{R.id.ex_manual_engine_unset, R.id.ex_manual_engine_comfort, R.id.ex_manual_engine_standard, R.id.ex_manual_engine_sport}, new int[]{0, 1, 2, 3}, AbstractC1387m.m2421h(new byte[]{66, -113, -121, 12, -99, 40, -18, 77, 120, -102, -118, 3, -122, Base64.padSymbol, -21, 106, 66, -103, -116, 4, -99, 57}, new byte[]{39, -9, -21, 109, -13, 92, -121, 53}), AbstractC1387m.m2421h(new byte[]{-16, 91, -22, 63, -66, -78}, new byte[]{-107, 53, -115, 86, -48, -41, 35, -83}));
        m1432E(R.id.rg_exlantix_manual_steering, new int[]{R.id.ex_manual_steering_unset, R.id.ex_manual_steering_comfort, R.id.ex_manual_steering_sport}, new int[]{0, 1, 2}, AbstractC1387m.m2421h(new byte[]{-89, 90, -37, 5, -125, 17, -93, -17, -99, 79, -42, 10, -104, 4, -90, -56, -79, 86, -46, 1, -97, 12, -92, -16}, new byte[]{-62, 34, -73, 100, -19, 101, -54, -105}), AbstractC1387m.m2421h(new byte[]{-115, -121, 76, 78, -45, -38, -20, 108}, new byte[]{-2, -13, 41, 43, -95, -77, -126, 11}));
        m1432E(R.id.rg_exlantix_manual_damping, new int[]{R.id.ex_manual_damping_unset, R.id.ex_manual_damping_soft, R.id.ex_manual_damping_hard}, new int[]{0, 1, 3}, AbstractC1387m.m2421h(new byte[]{-45, -49, 53, 16, 78, -115, 82, -20, -23, -38, 56, 31, 85, -104, 87, -53, -59, -62, 42, 1, 69, -105, 72, -3, -39, -39, 6, 21, 65, -108, 75, -3, -40, -48}, new byte[]{-74, -73, 89, 113, 32, -7, 59, -108}), AbstractC1387m.m2421h(new byte[]{-23, -57, 110, 3, 82, -35, -37, 94, -11, -36, 66, 23, 86, -34, -40, 94, -12, -43}, new byte[]{-102, -78, 29, 115, 55, -77, -88, 55}));
        if (iLoadInt >= 0 && iLoadInt < 5) {
            i10 = iLoadInt;
        }
        radioGroup.check(iArr[i10]);
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: e0.r0
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup2, int i11) {
                String str = MainActivity.f1288e1;
                if (EnumC2468c.f6681B.name().equals(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{53, -13, -78, -17, 11, 44, 46, -120, 26, -41}, new byte[]{118, -78, -32, -65, 121, 67, 72, -31}), ""))) {
                    int i12 = 0;
                    while (i12 < 5) {
                        if (iArr[i12] == i11) {
                            C1652b.m2745o().saveInt(AbstractC1387m.m2421h(new byte[]{36, 34, 15, -89, -117, 60, 79, 68, 30, 62, 17, -81, -109, 45, 121, 81, 46, 62, 6, -103, -106, 45, 74, 89, 34, 46, 10, -87, -117}, new byte[]{65, 90, 99, -58, -27, 72, 38, 60}), i12);
                            viewFindViewById.setVisibility(i12 == 4 ? 0 : 8);
                            AbstractC1438x.m2483a();
                            return;
                        }
                        i12++;
                    }
                }
            }
        });
    }

    /* JADX INFO: renamed from: E */
    public final void m1432E(int i10, final int[] iArr, final int[] iArr2, final String str, final String str2) {
        RadioGroup radioGroup = (RadioGroup) findViewById(i10);
        int iLoadInt = C1652b.m2745o().loadInt(str, 0);
        int i11 = iArr[0];
        for (int i12 = 0; i12 < iArr2.length; i12++) {
            if (iArr2[i12] == iLoadInt) {
                i11 = iArr[i12];
            }
        }
        radioGroup.check(i11);
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: e0.u0
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup2, int i13) {
                String str3 = MainActivity.f1288e1;
                if (!AbstractC1438x.m2484b()) {
                    return;
                }
                int i14 = 0;
                while (true) {
                    int[] iArr3 = iArr;
                    if (i14 >= iArr3.length) {
                        return;
                    }
                    if (i13 == iArr3[i14]) {
                        C3277a c3277aM2745o = C1652b.m2745o();
                        int[] iArr4 = iArr2;
                        c3277aM2745o.saveInt(str, iArr4[i14]);
                        int i15 = iArr4[i14];
                        if (AbstractC1438x.m2484b() && C1652b.m2745o().loadInt(AbstractC1438x.f3464a, 0) == 4) {
                            String str4 = str2;
                            if (AbstractC1438x.m2486d(i15, str4)) {
                                AbstractC1438x.m2485c(i15, str4);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    i14++;
                }
            }
        });
    }

    /* JADX INFO: renamed from: F */
    public final void m1433F() {
        HFunEnum hFunEnum = HFunEnum.ID_VCU_DISCHARGE_SWITCH;
        MaterialSwitch materialSwitch = (MaterialSwitch) findViewById(R.id.sw_jaecoo_discharge_v2l);
        materialSwitch.setChecked(C1652b.m2745o().loadBoolean(hFunEnum.name(), false));
        materialSwitch.setOnCheckedChangeListener(new C1418s0(this, hFunEnum));
        HFunEnum hFunEnum2 = HFunEnum.ID_VCU_ELECTRONIC_LOCKING_UNLOCKS;
        MaterialSwitch materialSwitch2 = (MaterialSwitch) findViewById(R.id.sw_jaecoo_charge_discharge_gun_locked);
        materialSwitch2.setChecked(C1652b.m2745o().loadBoolean(hFunEnum2.name(), false));
        materialSwitch2.setOnCheckedChangeListener(new C1418s0(this, hFunEnum2));
        RadioGroup radioGroup = (RadioGroup) findViewById(R.id.rg_jaecoo_power_mode);
        int iLoadInt = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-23, -105, 66, 88, -32, 10, -7, 17, -20, -127, 66, 73, -48, 8, -55, 5, -26}, new byte[]{-125, -10, 39, 59, -113, 101, -90, 97}), 0);
        int i10 = 2;
        int i11 = 1;
        if (iLoadInt == 1) {
            radioGroup.check(R.id.rb_jaecoo_power_mode_ev);
        } else if (iLoadInt == 2) {
            radioGroup.check(R.id.rb_jaecoo_power_mode_hev);
        } else {
            radioGroup.check(R.id.rb_jaecoo_power_mode_not_set);
        }
        radioGroup.setOnCheckedChangeListener(new C1403p0(this, i11));
        RadioGroup radioGroup2 = (RadioGroup) findViewById(R.id.rg_jaecoo_energy_recycle);
        int iLoadInt2 = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-6, 36, 21, -114, 115, 63, 107, -92, -2, 32, 2, -118, 101, 15, 70, -92, -13, 60, 19, -127, 121, 15, 88, -92, -26, 32, 28}, new byte[]{-112, 69, 112, -19, 28, 80, 52, -63}), 0);
        if (iLoadInt2 == 0) {
            radioGroup2.check(R.id.rb_jaecoo_energy_recycle_not_set);
        } else if (iLoadInt2 == 1) {
            radioGroup2.check(R.id.rb_jaecoo_energy_recycle_low);
        } else if (iLoadInt2 == 2) {
            radioGroup2.check(R.id.rb_jaecoo_energy_recycle_medium);
        } else if (iLoadInt2 == 3) {
            radioGroup2.check(R.id.rb_jaecoo_energy_recycle_high);
        } else {
            radioGroup2.check(R.id.rb_jaecoo_energy_recycle_not_set);
        }
        radioGroup2.setOnCheckedChangeListener(new C1403p0(this, i10));
        RadioGroup radioGroup3 = (RadioGroup) findViewById(R.id.rg_jaecoo_battery_protection);
        int iLoadInt3 = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{24, -97, 126, 70, -125, 87, 68, 24, 19, -118, 111, 64, -98, 65, 68, 10, 0, -111, 111, 64, -113, 76, 114, 21, 28, -95, 118, 74, -120, 93}, new byte[]{114, -2, 27, 37, -20, 56, 27, 122}), 0);
        if (iLoadInt3 == 0) {
            radioGroup3.check(R.id.rb_jaecoo_battery_not_set);
        } else if (iLoadInt3 == 1) {
            radioGroup3.check(R.id.rb_jaecoo_battery_initial);
        } else if (iLoadInt3 == 2) {
            radioGroup3.check(R.id.rb_jaecoo_battery_smart);
        } else if (iLoadInt3 == 4) {
            radioGroup3.check(R.id.rb_jaecoo_battery_forced);
        } else {
            radioGroup3.check(R.id.rb_jaecoo_battery_not_set);
        }
        radioGroup3.setOnCheckedChangeListener(new C1403p0(this, 3));
    }

    /* JADX INFO: renamed from: G */
    public final void m1434G(int i10, String str) {
        MaterialSwitch materialSwitch = (MaterialSwitch) findViewById(i10);
        materialSwitch.setChecked(C1652b.m2745o().loadBoolean(str, false));
        materialSwitch.setOnCheckedChangeListener(new C1423t0(this, str, materialSwitch, 0));
    }

    /* JADX INFO: renamed from: I */
    public final void m1436I() {
        this.f1331R0.setYLayMovX(C1652b.m2745o().loadString(this.f1363g, this.f1367i));
        this.f1331R0.setYLayMovY(C1652b.m2745o().loadString(this.f1365h, this.f1369j));
        this.f1333S0.setYLayMovX(C1652b.m2745o().loadString(this.f1371k, this.f1375m));
        this.f1333S0.setYLayMovY(C1652b.m2745o().loadString(this.f1373l, this.f1377n));
        this.f1335T0.setYLayMovX(C1652b.m2745o().loadString(this.f1379o, this.f1383q));
        this.f1335T0.setYLayMovY(C1652b.m2745o().loadString(this.f1381p, this.f1385r));
        YMovLay yMovLay = this.f1337U0;
        C3277a c3277aM2745o = C1652b.m2745o();
        String strM2421h = AbstractC1387m.m2421h(new byte[]{-30, 21, -1, -84, -26, -97, 84, -92, -39, 29, -5, -118, -8, -72, 112, -124}, new byte[]{-81, 116, -113, -13, -89, -4, 32, -51});
        String str = this.f1387s;
        yMovLay.setYLayMovX(c3277aM2745o.loadString(strM2421h, str));
        this.f1339V0.setYLayMovX(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-56, -101, 28, 88, 112, -69, 120, 81, -13, -109, 24, 126, 110, -100, 92, 113, -38, -67, 57}, new byte[]{-123, -6, 108, 7, 49, -40, 12, 56}), str));
    }

    /* JADX INFO: renamed from: J */
    public void mo1437J(boolean z9) {
        ColorMatrixColorFilter colorMatrixColorFilter;
        if (this.f1343X0 != null) {
            if (z9) {
                colorMatrixColorFilter = null;
            } else {
                ColorMatrix colorMatrix = new ColorMatrix();
                colorMatrix.setSaturation(0.0f);
                colorMatrixColorFilter = new ColorMatrixColorFilter(colorMatrix);
            }
            new Handler(Looper.getMainLooper()).post(new RunnableC0003a(16, this, colorMatrixColorFilter));
        }
    }

    /* JADX INFO: renamed from: K */
    public final void m1438K(String str) {
        MaterialSwitch materialSwitch = (MaterialSwitch) findViewById(R.id.sw_tracker_map);
        materialSwitch.setChecked(C1652b.m2745o().loadBoolean(str, false));
        materialSwitch.setOnCheckedChangeListener(new C1418s0(0, str));
    }

    /* JADX INFO: renamed from: L */
    public final void m1439L(boolean z9) {
        this.f1302D.setTempSliderEnable(z9);
        this.f1304E.setTempSliderEnable(z9);
        this.f1306F.setTempSliderEnable(z9);
        this.f1308G.setTempSliderEnable(z9);
        this.f1310H.setTempSliderEnable(z9);
        this.f1312I.setTempSliderEnable(z9);
        this.f1314J.setTempSliderEnable(z9);
    }

    /* JADX INFO: renamed from: M */
    public final void m1440M(Spinner spinner, ArrayList arrayList, String str, boolean z9) {
        C1369i1 c1369i1 = new C1369i1(this, arrayList);
        spinner.setAdapter((SpinnerAdapter) c1369i1);
        spinner.setPrompt(getString(R.string.select_application));
        int iM1428y = m1428y(C1652b.m2745o().loadString(str, ""), arrayList);
        if (iM1428y == 0) {
            iM1428y = m1428y(f1288e1, arrayList);
        }
        String str2 = ((C1374j1) arrayList.get(iM1428y)).f3279a;
        C1652b.m2745o().saveString(str, str2);
        if (z9) {
            this.f1395w = str2;
        }
        spinner.setSelection(iM1428y, false);
        spinner.setOnItemSelectedListener(new C1447z0(this, c1369i1, str, z9));
    }

    /* JADX INFO: renamed from: N */
    public final void m1441N() {
        this.f1306F.setLevel(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{23, -61, -102, 46, 85, -56, 34, 121, 12, -50, -109, 40, 70, -59, 46, 120, 31, -45, -102, 59, 81, -44, 41, 116, 18, -58, -111, 36, 91, -44, 34, 112, 17, -44, -115}, new byte[]{94, -121, -59, 109, 20, -102, 125, Base64.padSymbol}, new StringBuilder(), this), 0));
        this.f1302D.setLevel(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{-104, -44, -2, -55, -95, -35, -125, -23, -125, -39, -9, -49, -78, -48, -113, -24, -112, -60, -2, -62, -91, -50, -120, -14, -100, -33, -14, -62}, new byte[]{-47, -112, -95, -118, -32, -113, -36, -83}, new StringBuilder(), this), 0));
        this.f1304E.setLevel(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{-106, -73, 102, -2, 23, -107, ByteCompanionObject.MAX_VALUE, -122, -112, -93, 112, -15, 25, -109, ByteCompanionObject.MAX_VALUE, -106, -102, -78, 109, -30, 30, -126, 97, -111, ByteCompanionObject.MIN_VALUE, -66, 118, -18, 30}, new byte[]{-33, -13, 57, -67, 86, -57, 32, -59}, new StringBuilder(), this), 0));
        this.f1308G.setLevel(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{101, -117, 94, 78, 101, -32, -54, -55, 99, -97, 72, 65, 107, -26, -54, -39, 105, -114, 85, 82, 114, -9, -37, -34, 101, -125, 64, 89, 109, -3, -37, -43, 97, ByteCompanionObject.MIN_VALUE, 82, 69}, new byte[]{44, -49, 1, 13, 36, -78, -107, -118}, new StringBuilder(), this), 0));
        this.f1310H.setisEnable(Boolean.valueOf(C1652b.m2745o().loadBoolean(AbstractC1178q.m2077k(new byte[]{50, 81, 88, -3, -31, 122, 33, -69, 47, 80, 66, -20, -1, ByteCompanionObject.MAX_VALUE, 54, -83, 62, 89, 88, -10, -27, 105, 42}, new byte[]{123, 21, 7, -66, -96, 40, 126, -24}, new StringBuilder(), this), false)));
        this.f1312I.setisEnable(Boolean.valueOf(C1652b.m2745o().loadBoolean(AbstractC1178q.m2077k(new byte[]{72, 1, -89, 10, 17, -40, 79, 27, 78, 11, -84, 20, 21, -53, 72, 26, 82, 26, -80, 14, 19, -45}, new byte[]{1, 69, -8, 75, 82, -121, 9, 73}, new StringBuilder(), this), false)));
        this.f1314J.setisEnable(Boolean.valueOf(C1652b.m2745o().loadBoolean(AbstractC1178q.m2077k(new byte[]{80, 70, -17, 14, -47, 22, -54, 25, 88, 80, -17, 11, -41, 15, -54, 19, 74, 86}, new byte[]{25, 2, -80, 79, -110, 73, -104, 92}, new StringBuilder(), this), false)));
        this.f1316K.setisEnable(Boolean.valueOf(C1652b.m2745o().loadBoolean(AbstractC1178q.m2077k(new byte[]{-13, -35, 26, -72, -79, -36, 12, -122, -34, -4, 18, -68, -127, -30, 4, -122, -45, -41, 31, -76, -98, -45, 1, -107, -46, -45, 40, -110, -69}, new byte[]{-89, -76, 119, -35, -11, -67, 96, -25}, new StringBuilder(), this), true)));
        m1439L(this.f1316K.getisEnable().booleanValue());
        this.f1306F.setTemperatureValue(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{-100, 109, -71, -11, 114, -43, 3, -94, -121, 96, -80, -13, 97, -40, 15, -93, -108, 125, -71, -32, 118, -55, 8, -81, -103, 104, -78, -1, 124, -55, 3, -78, -112, 100, -74}, new byte[]{-43, 41, -26, -74, 51, -121, 92, -26}, new StringBuilder(), this), 20));
        this.f1302D.setTemperatureValue(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{-76, 106, 83, 4, -17, -81, -115, 24, -81, 103, 90, 2, -4, -94, -127, 25, -68, 122, 83, 15, -21, -68, -122, 3, -87, 107, 65, 23}, new byte[]{-3, 46, 12, 71, -82, -3, -46, 92}, new StringBuilder(), this), -5));
        this.f1304E.setTemperatureValue(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{81, 82, 58, -111, -55, 1, -61, 95, 87, 70, 44, -98, -57, 7, -61, 79, 93, 87, 49, -115, -64, 22, -35, 72, 71, 66, 32, -97, -40}, new byte[]{24, 22, 101, -46, -120, 83, -100, 28}, new StringBuilder(), this), -5));
        this.f1308G.setTemperatureValue(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{-92, 56, -126, 2, 11, -67, 112, -31, -94, 44, -108, 13, 5, -69, 112, -15, -88, Base64.padSymbol, -119, 30, 28, -86, 97, -10, -92, 48, -100, 21, 3, -96, 97, -3, -71, 57, -112, 17}, new byte[]{-19, 124, -35, 65, 74, -17, 47, -94}, new StringBuilder(), this), 20));
        this.f1310H.setTemperatureValue(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{-49, 105, 92, 78, 27, 17, -60, -91, -46, 104, 70, 95, 5, 20, -45, -77, -61, 97, 92, 69, 31, 2, -49, -87, -46, 104, 78, 93}, new byte[]{-122, 45, 3, 13, 90, 67, -101, -10}, new StringBuilder(), this), -5));
        this.f1312I.setTemperatureValue(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{81, -96, 55, 20, 35, -126, 49, -13, 87, -86, 60, 10, 39, -111, 54, -14, 75, -69, 32, 16, 33, -119, 40, -11, 93, -87, 56}, new byte[]{24, -28, 104, 85, 96, -35, 119, -95}, new StringBuilder(), this), -5));
        this.f1314J.setTemperatureValue(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{-99, 63, 118, -122, 76, -101, -5, 20, -107, 41, 118, -125, 74, -126, -5, 30, -121, 47, 118, -109, 74, -119, -7}, new byte[]{-44, 123, 41, -57, 15, -60, -87, 81}, new StringBuilder(), this), -5));
        this.f1316K.setTemperatureValue(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{57, -107, -39, -15, 79, 1, 51, -37, 20, -76, -47, -11, ByteCompanionObject.MAX_VALUE, 63, 48, -50, 50, -97, -43, -26, 120, 20, 62, -56, 25}, new byte[]{109, -4, -76, -108, 11, 96, 95, -70}, new StringBuilder(), this), 0));
        this.f1306F.setTimeValue(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{-33, 1, 84, 60, -127, -115, 37, 126, -60, 12, 93, 58, -110, ByteCompanionObject.MIN_VALUE, 41, ByteCompanionObject.MAX_VALUE, -41, 17, 84, 41, -123, -111, 46, 115, -38, 4, 95, 54, -113, -111, 37, 78, -1, 40, 110, 32, -92, -70, 22, 91, -17, 26, 68, 57, -122}, new byte[]{-106, 69, 11, ByteCompanionObject.MAX_VALUE, -64, -33, 122, 58}, new StringBuilder(), this), 0));
        this.f1302D.setTimeValue(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{9, 78, 24, 89, 120, -34, 43, 118, 18, 67, 17, 95, 107, -45, 39, 119, 1, 94, 24, 82, 124, -51, 32, 109, 52, 99, 42, ByteCompanionObject.MAX_VALUE, 102, -24, 17, 94, 33, 115, 24, 85, ByteCompanionObject.MAX_VALUE, -54}, new byte[]{64, 10, 71, 26, 57, -116, 116, 50}, new StringBuilder(), this), 0));
        this.f1304E.setTimeValue(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{-52, 74, -115, 64, -57, -62, 71, 120, -54, 94, -101, 79, -55, -60, 71, 104, -64, 79, -122, 92, -50, -43, 89, 111, -38, 122, -69, 110, -29, -49, 124, 94, -23, 111, -85, 92, -55, -42, 94}, new byte[]{-123, 14, -46, 3, -122, -112, 24, 59}, new StringBuilder(), this), 0));
        this.f1308G.setTimeValue(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{-59, -3, -118, -84, 19, 7, 0, 112, -61, -23, -100, -93, 29, 1, 0, 96, -55, -8, -127, -80, 4, 16, 17, 103, -59, -11, -108, -69, 27, 26, 17, 108, -8, -48, -72, -118, 13, 49, 58, 95, -19, -64, -118, -96, 20, 19}, new byte[]{-116, -71, -43, -17, 82, 85, 95, 51}, new StringBuilder(), this), 0));
        this.f1310H.setTimeValue(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{-78, 62, 45, -21, -77, -67, -16, -2, -81, 63, 55, -6, -83, -72, -25, -24, -66, 54, 45, -32, -73, -82, -5, -14, -113, 19, 31, -51, -83, -117, -54, -63, -102, 3, 45, -25, -76, -87}, new byte[]{-5, 122, 114, -88, -14, -17, -81, -83}, new StringBuilder(), this), 0));
        this.f1312I.setTimeValue(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{51, -79, 95, -11, 62, 18, 111, -96, 53, -69, 84, -21, 58, 1, 104, -95, 41, -86, 72, -15, 60, 25, 118, -122, 19, -104, 101, -21, 25, 40, 69, -109, 3, -86, 79, -14, 59}, new byte[]{122, -11, 0, -76, 125, 77, 41, -14}, new StringBuilder(), this), 0));
        this.f1314J.setTimeValue(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{0, -114, 63, 77, -85, -103, 3, -104, 8, -104, 63, 72, -83, ByteCompanionObject.MIN_VALUE, 3, -110, 26, -98, 63, 120, -127, -85, 52, -126, 45, -81, 12, 109, -111, -103, 30, -101, 15}, new byte[]{73, -54, 96, 12, -24, -58, 81, -35}, new StringBuilder(), this), 0));
        this.f1316K.setTimeValue(C1652b.m2745o().loadInt(AbstractC1178q.m2077k(new byte[]{-63, -57, -46, 45, -101, -17, -117, -15, -20, -15, -16, 38, ByteCompanionObject.MIN_VALUE, -63, -127, -10, -54, -3, -4, 26, -102, -53, -87}, new byte[]{-107, -82, -65, 72, -33, -114, -25, -112}, new StringBuilder(), this), 0));
        this.f1360e0.setChecked(C1652b.m2745o().loadBoolean(AbstractC1178q.m2077k(new byte[]{-106, -19, -15, 49, -73, 5, -64, -64, -118, -25, -3, 58, -73, 19, -38}, new byte[]{-33, -87, -82, 114, -10, 87, -97, -109}, new StringBuilder(), this), false));
        byte[] bArr = {-27, -65, -28, -87, 97, -52, -22, -69, -51, -90, -33, -96, 87};
        byte[] bArr2 = {-92, -54, -112, -58, 49, -66, -123, -35};
        AbstractC1178q.m2088v(bArr, bArr2, C1652b.m2745o(), false, this.f1362f0);
        byte[] bArr3 = {115, -90, -74, -74, 58, -119, 37, 22, 109, -77, -86, -116, 59, -112, 48, 59};
        byte[] bArr4 = {0, -46, -60, -23, 78, -26, 85, 73};
        AbstractC1178q.m2088v(bArr3, bArr4, C1652b.m2745o(), true, this.f1364g0);
        byte[] bArr5 = {112, -14, -93, -48, 20, -98, -124, -6, 126, -9, -85};
        byte[] bArr6 = {28, -101, -50, -113, 98, -9, -9, -109};
        AbstractC1178q.m2088v(bArr5, bArr6, C1652b.m2745o(), false, this.f1366h0);
    }

    /* JADX INFO: renamed from: O */
    public final void m1442O(MaterialSwitch materialSwitch) {
        View viewInflate = getLayoutInflater().inflate(R.layout.dialog_launcher_default, (ViewGroup) null, false);
        final AlertDialog alertDialogCreate = new AlertDialog.Builder(this).setView(viewInflate).create();
        viewInflate.findViewById(R.id.button_launcher_android_method).setOnClickListener(new ViewOnClickListenerC1393n0(this, alertDialogCreate, materialSwitch, 0));
        viewInflate.findViewById(R.id.button_launcher_dialog_close).setOnClickListener(new ViewOnClickListenerC0675c(5, alertDialogCreate));
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: e0.o0
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                String str = MainActivity.f1288e1;
                AlertDialog alertDialog = alertDialogCreate;
                if (alertDialog.getWindow() == null) {
                    return;
                }
                alertDialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
                alertDialog.getWindow().setLayout((int) (this.f3353a.getResources().getDisplayMetrics().widthPixels * 0.9f), -2);
            }
        });
        alertDialogCreate.show();
    }

    /* JADX INFO: renamed from: P */
    public final void m1443P() {
        String str;
        Drawable defaultActivityIcon;
        int i10 = 1;
        this.f1397x.m1831a(new C1279m(i10, this));
        this.f1306F.setTempRun(new RunnableC1388m0(this, i10));
        this.f1302D.setTempRun(new RunnableC1388m0(this, 8));
        this.f1304E.setTempRun(new RunnableC1388m0(this, 9));
        this.f1308G.setTempRun(new RunnableC1388m0(this, 10));
        this.f1310H.setTempRun(new RunnableC1388m0(this, 11));
        this.f1312I.setTempRun(new RunnableC1388m0(this, 12));
        this.f1314J.setTempRun(new RunnableC1388m0(this, 13));
        this.f1316K.setTimeRun(new RunnableC1388m0(this, 14));
        this.f1306F.setTimeRun(new RunnableC1388m0(this, 15));
        this.f1302D.setTimeRun(new RunnableC1388m0(this, 16));
        int i11 = 2;
        this.f1304E.setTimeRun(new RunnableC1388m0(this, i11));
        this.f1308G.setTimeRun(new RunnableC1388m0(this, 3));
        this.f1310H.setTimeRun(new RunnableC1388m0(this, 4));
        this.f1312I.setTimeRun(new RunnableC1388m0(this, 5));
        this.f1314J.setTimeRun(new RunnableC1388m0(this, 6));
        this.f1316K.setTempRun(new RunnableC1388m0(this, 7));
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, R.layout.spinner_text, this.f1391u);
        arrayAdapter.setDropDownViewResource(R.layout.simple_spinner_dropdown);
        Spinner spinner = (Spinner) findViewById(R.id.spinner25);
        this.f1319L0 = spinner;
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        this.f1319L0.setPrompt(AbstractC1387m.m2421h(new byte[]{44, -43, -4, 24, -49}, new byte[]{120, -68, -120, 116, -86, -30, 106, -3}));
        int i12 = 0;
        this.f1319L0.setSelection(0);
        this.f1319L0.setOnItemSelectedListener(new C1334b1(this, i12));
        Spinner spinner2 = (Spinner) findViewById(R.id.spinner14);
        this.f1301C0 = spinner2;
        spinner2.setOnItemSelectedListener(new C1334b1(this, i10));
        ArrayAdapter arrayAdapter2 = new ArrayAdapter(this, R.layout.spinner_text, this.f1389t);
        arrayAdapter2.setDropDownViewResource(R.layout.simple_spinner_dropdown);
        Spinner spinner3 = (Spinner) findViewById(R.id.spinner13);
        this.f1299B0 = spinner3;
        spinner3.setAdapter((SpinnerAdapter) arrayAdapter2);
        this.f1299B0.setPrompt(AbstractC1387m.m2421h(new byte[]{94, 56, 12, -16, 14}, new byte[]{10, 81, 120, -100, 107, -8, 51, 100}));
        this.f1299B0.setSelection(0);
        this.f1299B0.setOnItemSelectedListener(new C1334b1(this, i11));
        m1446u();
        this.f1303D0 = (Spinner) findViewById(R.id.spinner15);
        C1652b.m2734a();
        C1652b.m2737f().m2996m(this.f1303D0, AbstractC1387m.m2421h(new byte[]{-121, -84, 44, 109, -90, -95, -82, 71, -48, -124}, new byte[]{-75, -13, 72, 2, -47, -49, -15, 41}));
        this.f1305E0 = (Spinner) findViewById(R.id.spinner16);
        C1652b.m2734a();
        C1652b.m2737f().m2996m(this.f1305E0, AbstractC1387m.m2421h(new byte[]{11, 69, -92, -82, 104, 43, 98, -13, 93, 109}, new byte[]{56, 26, -64, -63, 31, 69, Base64.padSymbol, -99}));
        this.f1307F0 = (Spinner) findViewById(R.id.spinner17);
        C1652b.m2734a();
        C1652b.m2737f().m2996m(this.f1307F0, AbstractC1387m.m2421h(new byte[]{-57, 95, 25, -52, 29, Base64.padSymbol, -89, Base64.padSymbol, -112, 119}, new byte[]{-11, 0, 117, -87, 123, 73, -8, 83}));
        this.f1309G0 = (Spinner) findViewById(R.id.spinner18);
        C1652b.m2734a();
        C1652b.m2737f().m2996m(this.f1309G0, AbstractC1387m.m2421h(new byte[]{-97, -13, -98, -68, 3, -5, -50, -66, -55, -37}, new byte[]{-84, -84, -14, -39, 101, -113, -111, -48}));
        this.f1311H0 = (Spinner) findViewById(R.id.spinner19);
        C1652b.m2734a();
        C1652b.m2737f().m2996m(this.f1311H0, AbstractC1387m.m2421h(new byte[]{-70, -8, 33, -12, -84, -97, 96, -33, -26, -62, 36}, new byte[]{-120, -89, 83, -99, -53, -9, 20, ByteCompanionObject.MIN_VALUE}));
        this.f1313I0 = (Spinner) findViewById(R.id.spinner20);
        C1652b.m2734a();
        C1652b.m2737f().m2996m(this.f1313I0, AbstractC1387m.m2421h(new byte[]{-41, -108, 84, -67, -29, -4, -49, -74, -118, -82, 81}, new byte[]{-28, -53, 38, -44, -124, -108, -69, -23}));
        this.f1315J0 = (Spinner) findViewById(R.id.spinner21);
        C1652b.m2734a();
        C1652b.m2737f().m2996m(this.f1315J0, AbstractC1387m.m2421h(new byte[]{-52, 56, 8, 41, 120, 122, 85, -95}, new byte[]{-2, 103, 125, 89, 39, 20, 48, -42}));
        this.f1317K0 = (Spinner) findViewById(R.id.spinner22);
        C1652b.m2734a();
        C1652b.m2737f().m2996m(this.f1317K0, AbstractC1387m.m2421h(new byte[]{-2, -49, -100, 14, 66, -4, 97, -95}, new byte[]{-51, -112, -23, 126, 29, -110, 4, -42}));
        ArrayAdapter arrayAdapter3 = new ArrayAdapter(this, R.layout.spinner_text, this.f1393v);
        arrayAdapter3.setDropDownViewResource(R.layout.simple_spinner_dropdown);
        Spinner spinner4 = (Spinner) findViewById(R.id.spinner8);
        this.f1297A0 = spinner4;
        spinner4.setAdapter((SpinnerAdapter) arrayAdapter3);
        this.f1297A0.setPrompt(AbstractC1387m.m2421h(new byte[]{2, 79, -44, 101, -47}, new byte[]{86, 38, -96, 9, -76, -40, 31, 13}));
        this.f1297A0.setSelection(this.f1393v.length - 1 < C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{70, 110, -81, -125, 36, -55, 28, Base64.padSymbol, 107}, new byte[]{31, 35, -50, -13, 87, -123, 117, 78}), 0) ? 0 : C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{29, 85, 21, 108, 77, 3, -32, -77, 48}, new byte[]{68, 24, 116, 28, 62, 79, -119, -64}), 0));
        this.f1297A0.setOnItemSelectedListener(new C1339c1());
        String[] strArrM1278h = AbstractC1031d.m1278h(EnumC2468c.class);
        String[] strArrM1280j = AbstractC1031d.m1280j(EnumC2468c.class);
        ArrayAdapter arrayAdapter4 = new ArrayAdapter(this, R.layout.spinner_text, strArrM1278h);
        arrayAdapter4.setDropDownViewResource(R.layout.simple_spinner_dropdown);
        Spinner spinner5 = (Spinner) findViewById(R.id.spinner26);
        this.f1321M0 = spinner5;
        spinner5.setAdapter((SpinnerAdapter) arrayAdapter4);
        this.f1321M0.setPrompt(AbstractC1387m.m2421h(new byte[]{101, 126, -18, -16, -124}, new byte[]{49, 23, -102, -100, -31, 63, -7, 71}));
        String strLoadString = C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-94, 104, -60, 66, -12, 120, -104, 115, -115, 76}, new byte[]{-31, 41, -106, 18, -122, 23, -2, 26}), null);
        if (strLoadString == null || strLoadString.isEmpty()) {
            strLoadString = EnumC2468c.values()[0].name();
        }
        int iIndexOf = Arrays.asList(strArrM1280j).indexOf(strLoadString);
        this.f1321M0.setSelection(iIndexOf != -1 ? iIndexOf : 0);
        this.f1321M0.setSelection(iIndexOf);
        this.f1321M0.setOnItemSelectedListener(new C1344d1(i12, this, strArrM1280j));
        this.f1323N0 = (Spinner) findViewById(R.id.spinner27);
        C1652b.m2734a();
        C1652b.m2737f().m2996m(this.f1323N0, AbstractC1387m.m2421h(new byte[]{42, 88, 21, -126, 41, 50, -92, 34, 21, 82, 20, -77, 36, 63, -111}, new byte[]{102, 55, 96, -20, 74, 90, -26, 125}));
        View viewFindViewById = findViewById(R.id.button_open_antiradar);
        viewFindViewById.setOnClickListener(new ViewOnClickListenerC1408q0(this, i12));
        String strM2421h = AbstractC1387m.m2421h(new byte[]{-91, -31, 39, -84, -7, -51, -29, 15, -73, -29, 47, -90, -10, -38, -50, 32, -92, -2}, new byte[]{-42, -111, 78, -62, -105, -88, -111, 80});
        C0427a c0427a = new C0427a(viewFindViewById);
        String[] strArrM1278h2 = AbstractC1031d.m1278h(EnumC2466a.class);
        String[] strArrM1280j2 = AbstractC1031d.m1280j(EnumC2466a.class);
        ArrayAdapter arrayAdapter5 = new ArrayAdapter(this, R.layout.spinner_text, strArrM1278h2);
        arrayAdapter5.setDropDownViewResource(R.layout.simple_spinner_dropdown);
        Spinner spinner6 = (Spinner) findViewById(R.id.spinner_aradar);
        spinner6.setAdapter((SpinnerAdapter) arrayAdapter5);
        spinner6.setPrompt(AbstractC1387m.m2421h(new byte[]{84, -13, -95, -31, -7}, new byte[]{0, -102, -43, -115, -100, 10, 27, -33}));
        String strLoadString2 = C1652b.m2745o().loadString(strM2421h, null);
        if (strLoadString2 == null || strLoadString2.isEmpty()) {
            strLoadString2 = ((Enum[]) EnumC2466a.class.getEnumConstants())[0].name();
        }
        int iIndexOf2 = Arrays.asList(strArrM1280j2).indexOf(strLoadString2);
        if (iIndexOf2 == -1) {
            iIndexOf2 = 0;
        }
        spinner6.setSelection(iIndexOf2);
        spinner6.setOnItemSelectedListener(new C1354f1(strArrM1280j2, strM2421h, c0427a));
        String[] strArrM1278h3 = AbstractC1031d.m1278h(EnumC2471f.class);
        String[] strArrM1280j3 = AbstractC1031d.m1280j(EnumC2471f.class);
        ArrayAdapter arrayAdapter6 = new ArrayAdapter(this, R.layout.spinner_text, strArrM1278h3);
        arrayAdapter6.setDropDownViewResource(R.layout.simple_spinner_dropdown);
        Spinner spinner7 = (Spinner) findViewById(R.id.spinner_pogoda_widg);
        this.f1325O0 = spinner7;
        spinner7.setAdapter((SpinnerAdapter) arrayAdapter6);
        this.f1325O0.setPrompt(AbstractC1387m.m2421h(new byte[]{-74, -14, 17, 6, 35}, new byte[]{-30, -101, 101, 106, 70, 8, -70, 122}));
        String strLoadString3 = C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{114, 102, -33, -89, 115, 38, -118, 34, 113, 121, -47, -90, 121, 34, -89, 10, 104, 114, -47, -106, 109, 49, -105}, new byte[]{1, 22, -74, -55, 29, 67, -8, 125}), null);
        if (strLoadString3 == null || strLoadString3.isEmpty()) {
            strLoadString3 = EnumC2471f.values()[0].name();
        }
        int iIndexOf3 = Arrays.asList(strArrM1280j3).indexOf(strLoadString3);
        Spinner spinner8 = this.f1325O0;
        if (iIndexOf3 == -1) {
            iIndexOf3 = 0;
        }
        spinner8.setSelection(iIndexOf3);
        this.f1325O0.setOnItemSelectedListener(new C1349e1(i12, strArrM1280j3));
        this.f1402z0 = (Spinner) findViewById(R.id.spinner5);
        this.f1327P0 = (Spinner) findViewById(R.id.spinner_auto_start_gu);
        PackageManager packageManager = getPackageManager();
        Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-45, -122, 2, -123, -105, 42, -48, -10, -37, -122, 18, -110, -106, 55, -102, -71, -47, -100, 15, -104, -106, 109, -7, -103, -5, -90}, new byte[]{-78, -24, 102, -9, -8, 67, -76, -40}));
        intent.addCategory(AbstractC1387m.m2421h(new byte[]{-20, 116, 42, -80, 56, 112, -99, 33, -28, 116, 58, -89, 57, 109, -41, 108, -20, 110, 43, -91, 56, 107, ByteCompanionObject.MIN_VALUE, 33, -63, 91, 27, -116, 20, 81, -68, 93}, new byte[]{-115, 26, 78, -62, 87, 25, -7, 15}));
        HashMap map = new HashMap();
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if (activityInfo != null && (str = activityInfo.packageName) != null && !map.containsKey(str)) {
                CharSequence charSequenceLoadLabel = resolveInfo.loadLabel(packageManager);
                String string = (charSequenceLoadLabel == null || charSequenceLoadLabel.length() == 0) ? str : charSequenceLoadLabel.toString();
                try {
                    defaultActivityIcon = resolveInfo.loadIcon(packageManager);
                } catch (RuntimeException unused) {
                    defaultActivityIcon = packageManager.getDefaultActivityIcon();
                }
                map.put(str, new C1374j1(str, string, defaultActivityIcon));
            }
        }
        ArrayList arrayList = new ArrayList(map.values());
        arrayList.sort(new C0279a(i10));
        arrayList.add(0, new C1374j1("", getString(R.string.select_application), packageManager.getDefaultActivityIcon()));
        m1440M(this.f1402z0, arrayList, f1289f1, true);
        m1440M(this.f1327P0, arrayList, f1290g1, false);
    }

    /* JADX INFO: renamed from: Q */
    public final void m1444Q(MainActivity mainActivity) {
        Intent intent = new Intent(mainActivity.getApplicationContext(), (Class<?>) boot.class);
        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-7}, new byte[]{-99, 79, 77, 106, -62, -121, 24, -103}), -1);
        startService(intent);
    }

    public native boolean isEmulator();

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        boolean zLoadBoolean;
        super.onCreate(bundle);
        this.f1389t = new String[]{getResources().getString(R.string.voditel1), getResources().getString(R.string.voditel2), getResources().getString(R.string.voditel3)};
        final int i10 = 9;
        final int i11 = 8;
        int i12 = 18;
        final int i13 = 10;
        this.f1391u = new String[]{getResources().getString(R.string.vibrat_profil), AbstractC1387m.m2421h(new byte[]{66, 123, 76, -83, 51, -92, -70, 42, 63}, new byte[]{8, 26, 41, -50, 92, -53, -102, 96}), AbstractC1387m.m2421h(new byte[]{12, 52, -40, 64, -37, 96, -8, 72, 126, 122, -8, 91, -47, 106, -68, 34, 20, 13}, new byte[]{70, 85, -67, 35, -76, 15, -40, 2}), AbstractC1387m.m2421h(new byte[]{-18, -81, -38, 123, 72, 13, -110, -94, -102, -2}, new byte[]{-70, -58, -67, 28, 39, 45, -91, -114}), AbstractC1387m.m2421h(new byte[]{-44, -85, 108, -24, 50, 2, 73, -95, -84}, new byte[]{-98, -50, 24, -121, 71, 112, 105, -11})};
        this.f1393v = new String[]{getResources().getString(R.string.name_karti_20_uni), getResources().getString(R.string.name_navi_ari), getResources().getString(R.string.name_navi_uni7), AbstractC1387m.m2421h(new byte[]{-66, 76, 75, 105}, new byte[]{-23, 45, 49, 12, -96, -122, 122, 103})};
        final int i14 = 1;
        AppCompatDelegate.setDefaultNightMode(1);
        byte[] bArr = punto.f1871v;
        String str = AbstractAsyncTaskC1449z2.f3517a;
        punto.f1870u = new String(bArr);
        C1343d0.m2389d(this);
        this.f1361f = new String(punto.f1872w);
        setContentView(mo1447z());
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), new C1357g(5));
        new HashMap();
        int i15 = 2;
        boolean zLoadBoolean2 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-108, 64}, new byte[]{-11, 53, -104, 86, 97, -114, 90, -51}), false);
        if (zLoadBoolean2) {
            this.f1359e.post(new RunnableC1388m0(this, i12));
        }
        C1343d0.m2389d(this);
        if (zLoadBoolean2) {
            AbstractC1387m.m2416c();
            setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
            if (getSupportActionBar() != null) {
                getSupportActionBar().setDisplayShowTitleEnabled(false);
            }
            isEmulator();
            C1343d0.m2389d(this);
            this.f1399y = (MaterialSwitch) findViewById(R.id.switch1);
            this.f1401z = (MaterialSwitch) findViewById(R.id.switch2);
            this.f1296A = (MaterialSwitch) findViewById(R.id.switch3);
            this.f1298B = (MaterialSwitch) findViewById(R.id.switch4);
            this.f1360e0 = (MaterialSwitch) findViewById(R.id.switch8);
            this.f1362f0 = (MaterialSwitch) findViewById(R.id.switch9);
            this.f1364g0 = (MaterialSwitch) findViewById(R.id.switch10);
            this.f1366h0 = (MaterialSwitch) findViewById(R.id.switch11);
            this.f1380o0 = (MaterialSwitch) findViewById(R.id.switch15);
            this.f1347Z0 = (LinearLayout) findViewById(R.id.Dashboard);
            this.f1349a1 = (MainWidjet) findViewById(R.id.MainWidjet);
            this.f1355c1 = (MainView) findViewById(R.id.main_lounchb);
            this.f1353c = (TextView) findViewById(R.id.textview_tek_temp_za_bort);
            this.f1338V = (LinearLayout) findViewById(R.id.lay_start_stop_off);
            this.f1340W = (LinearLayout) findViewById(R.id.lay_speed_limit_alarm_off);
            this.f1342X = (LinearLayout) findViewById(R.id.lay_fiksik_on_off);
            this.f1346Z = (LinearLayout) findViewById(R.id.lay_exlantix_physical_buttons);
            this.f1348a0 = (LinearLayout) findViewById(R.id.lay_omoda_steering_media_control);
            this.f1351b0 = findViewById(R.id.lay_jaecoo_phev_modes);
            this.f1354c0 = findViewById(R.id.lay_phev_drive_mode);
            this.f1357d0 = findViewById(R.id.lay_exlantix_drive_mode);
            MaterialSwitch materialSwitch = (MaterialSwitch) findViewById(R.id.sw_omoda_disable_steering_media_control);
            materialSwitch.setChecked(C1652b.m2745o().loadBoolean(f1291h1, true));
            materialSwitch.setOnCheckedChangeListener(new C1378k0(11));
            MaterialSwitch materialSwitch2 = (MaterialSwitch) findViewById(R.id.sw_start_stop_off);
            this.f1398x0 = materialSwitch2;
            AbstractC1178q.m2088v(new byte[]{119, -31, 41, -32, -71, 3, 9, -74, 91, -27, 2, -4, -67, Base64.padSymbol, 20, -92, 98}, new byte[]{4, -106, 118, -109, -51, 98, 123, -62}, C1652b.m2745o(), false, materialSwitch2);
            this.f1398x0.setOnCheckedChangeListener(new C1378k0(17));
            MaterialSwitch materialSwitch3 = (MaterialSwitch) findViewById(R.id.sw_speed_limit_alarm_off);
            this.f1400y0 = materialSwitch3;
            AbstractC1178q.m2088v(new byte[]{112, -9, 60, 118, 85, -42, -61, -53, 92, -20, 10, 104, 76, -57, -7, -50, 111, -31, 17, 104, 122, -36, -64, -55}, new byte[]{3, ByteCompanionObject.MIN_VALUE, 99, 5, 37, -77, -90, -81}, C1652b.m2745o(), false, materialSwitch3);
            int i16 = 19;
            this.f1400y0.setOnCheckedChangeListener(new C1378k0(i16));
            MaterialSwitch materialSwitch4 = (MaterialSwitch) findViewById(R.id.HUDNaviOnOff);
            this.f1368i0 = materialSwitch4;
            final int i17 = 12;
            AbstractC1178q.m2088v(new byte[]{-40, -102, 108, 88, 91, -125, 25, -58, -2, ByteCompanionObject.MIN_VALUE, 78, 112}, new byte[]{-112, -49, 40, 22, 58, -11, 112, -119}, C1652b.m2745o(), true, materialSwitch4);
            this.f1368i0.setOnCheckedChangeListener(new C1378k0(22));
            MaterialSwitch materialSwitch5 = (MaterialSwitch) findViewById(R.id.switch_map_activity_fullscreen_gu);
            this.f1376m0 = materialSwitch5;
            int i18 = 26;
            AbstractC1178q.m2088v(new byte[]{-119, 79, -68, 44, 12, 95, 9, 96, -78, 71, -72, 10, 18, 122, 40, 69, -120, 125, -113, 33, 8, 121, 51, 86, -125, 123}, new byte[]{-60, 46, -52, 115, 77, 60, 125, 9}, C1652b.m2745o(), true, materialSwitch5);
            final int i19 = 13;
            this.f1376m0.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: e0.l0

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ MainActivity f3299b;

                {
                    this.f3299b = this;
                }

                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                    RelativeLayout relativeLayout;
                    RelativeLayout relativeLayout2;
                    switch (i19) {
                        case 0:
                            MainActivity mainActivity = this.f3299b;
                            String str2 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-60, -53, 107, 79, -77, 24, -89, 15, -6, -47, 123}, new byte[]{-120, -92, 30, 33, -48, 112, -27, 91}), z9);
                            boolean zLoadBoolean3 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-19, -62, -4, -76, -87, -9, 82, 0, -63, -41, -42, -83, -88, -12, 72}, new byte[]{-98, -75, -93, -39, -36, -101, 38, 105}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity);
                                C3105c c3105c = LounchB.f1282h;
                                if (c3105c != null && (relativeLayout2 = ((LounchB) c3105c.f8867c).f1283b) != null) {
                                    relativeLayout2.setVisibility(0);
                                    break;
                                }
                            } else if (!zLoadBoolean3) {
                                WindowManager windowManager = LounchB.f1281g;
                                mainActivity.stopService(new Intent(mainActivity, (Class<?>) LounchB.class));
                                break;
                            } else {
                                C3105c c3105c2 = LounchB.f1282h;
                                if (c3105c2 != null && (relativeLayout = ((LounchB) c3105c2.f8867c).f1283b) != null) {
                                    relativeLayout.setVisibility(8);
                                    break;
                                }
                            }
                            break;
                        case 1:
                            MainActivity mainActivity2 = this.f3299b;
                            String str3 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{105, -56, -43, 92, 59, -26, -126, 121, 69, -35, -1, 69, 58, -27, -104}, new byte[]{26, -65, -118, 49, 78, -118, -10, 16}), z9);
                            boolean zLoadBoolean4 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{34, -97, -78, -81, 126, -63, 107, -8, 28, -123, -94}, new byte[]{110, -16, -57, -63, 29, -87, 41, -84}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity2);
                                C3105c c3105c3 = LounchB.f1282h;
                                if (c3105c3 != null) {
                                    ((LounchB) c3105c3.f8867c).m1421b(true);
                                }
                            } else if (zLoadBoolean4) {
                                C3105c c3105c4 = LounchB.f1282h;
                                if (c3105c4 != null) {
                                    ((LounchB) c3105c4.f8867c).m1421b(false);
                                }
                            } else {
                                WindowManager windowManager2 = LounchB.f1281g;
                                mainActivity2.stopService(new Intent(mainActivity2, (Class<?>) LounchB.class));
                            }
                            break;
                        case 2:
                            MainActivity mainActivity3 = this.f3299b;
                            String str4 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{22, 10, -105, -66, -75, -9, -93, 15, 4, 34, -65, -89, -66, -9, -109, 4, 11, 18, -82, -88}, new byte[]{101, 125, -56, -50, -38, -112, -52, 107}), z9);
                            if (z9) {
                                WeatherService.m2207e(mainActivity3);
                            } else {
                                boolean z10 = WeatherService.f2877f;
                                mainActivity3.stopService(new Intent(mainActivity3, (Class<?>) WeatherService.class));
                            }
                            break;
                        case 3:
                            MainActivity mainActivity4 = this.f3299b;
                            String str5 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-116, 46, -84, -101, 100, 117, -91, 13, -98, 42, -99, -106, 114, 123}, new byte[]{-1, 89, -13, -7, 1, 15, -54, 125}), z9);
                            FlexboxLayout flexboxLayout = mainActivity4.f1388s0;
                            for (int i20 = 0; i20 < flexboxLayout.getChildCount(); i20++) {
                                flexboxLayout.getChildAt(i20).setEnabled(z9);
                            }
                            if (!z9) {
                                FlexboxLayout flexboxLayout2 = mainActivity4.f1388s0;
                                for (int i21 = 0; i21 < flexboxLayout2.getChildCount(); i21++) {
                                    ((MaterialSwitch) flexboxLayout2.getChildAt(i21)).setChecked(false);
                                }
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{68, 18, -70, 67, 56, 122, -80, 114}, new byte[]{55, 101, -27, 48, 76, 21, -36, 25}), false);
                            }
                            break;
                        case 4:
                            MainActivity mainActivity5 = this.f3299b;
                            String str6 = MainActivity.f1288e1;
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-50, -81, 29, 122, 103, 126, 25, 32, -46, -91, 17, 113, 103, 104, 3}, new byte[]{-121, -21, 66, 57, 38, 44, 70, 115});
                            C3277a c3277aM2745o = C1652b.m2745o();
                            StringBuilder sbM170u = AbstractC0074a.m170u(strM2421h);
                            sbM170u.append(mainActivity5.m1429A());
                            c3277aM2745o.saveBoolean(sbM170u.toString(), z9);
                            break;
                        case 5:
                            MainActivity mainActivity6 = this.f3299b;
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-97, -7, 52, -80, -63, 54, 57, -61, -75, -3, 39, -85, -50, 50, 19, -28, -79, -3, 37}, new byte[]{-48, -113, 81, -62, -83, 87, 64, -112}), z9);
                            if (z9) {
                                OverlayService.m1512c(mainActivity6);
                            } else {
                                OverlayService overlayService = OverlayService.f1499f;
                                mainActivity6.stopService(new Intent(mainActivity6.getApplicationContext(), (Class<?>) OverlayService.class));
                                boolean z11 = ServiceC1080Si.f1588d;
                                Context applicationContext = mainActivity6.getApplicationContext();
                                applicationContext.stopService(new Intent(applicationContext, (Class<?>) ServiceC1080Si.class));
                            }
                            break;
                        case 6:
                            MainActivity mainActivity7 = this.f3299b;
                            String str8 = MainActivity.f1288e1;
                            try {
                                C1652b.m2745o().saveBoolean(MockGpsService.f1423r, z9);
                                break;
                            } catch (Exception unused) {
                            }
                            if (z9) {
                                MockGpsService.m1457m(mainActivity7);
                            } else {
                                MockGpsService.m1449b(mainActivity7);
                                mainActivity7.stopService(new Intent(mainActivity7, (Class<?>) MockGpsService.class));
                            }
                            break;
                        case 7:
                            MainActivity mainActivity8 = this.f3299b;
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(Notik.f1487m, z9);
                            if (z9) {
                                Notik.m1506g(mainActivity8);
                            } else {
                                mainActivity8.getApplicationContext().stopService(new Intent(mainActivity8.getApplicationContext(), (Class<?>) Notik.class));
                            }
                            break;
                        case 8:
                            MainActivity mainActivity9 = this.f3299b;
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(SpeedBoardService.f1614k, z9);
                            if (z9) {
                                SpeedBoardService.m1542b(mainActivity9.getApplicationContext());
                            } else {
                                Context applicationContext2 = mainActivity9.getApplicationContext();
                                applicationContext2.stopService(new Intent(applicationContext2.getApplicationContext(), (Class<?>) SpeedBoardService.class));
                            }
                            break;
                        case 9:
                            MainActivity mainActivity10 = this.f3299b;
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-41, -101, -118, -81, 87, -106, 41, 34, -9, -72, -86, -98, 87, -109, 37, 53, -10, -114, -65, -110, 123, -84, 46, 60, -28}, new byte[]{-127, -47, -55, -5, 8, -59, 76, 80}), z9);
                            if (z9) {
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-55, -94, Base64.padSymbol, -120, -39, 119, 3, 91, -42, -79, 54, -92, -11, 97, 5, 76, -51, -90}, new byte[]{-65, -46, 83, -41, -86, 18, 113, 45}), true);
                                TService.m1586c(mainActivity10.getApplicationContext());
                                TService.m1584a(Boolean.TRUE);
                            } else {
                                TService.m1584a(Boolean.FALSE);
                            }
                            break;
                        case 10:
                            MainActivity mainActivity11 = this.f3299b;
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{41, -104, -57, -91, 108, 113, -79, 0, 49, -121, -58, -80, 86, 118, -69, 44, 42, -108, -50}, new byte[]{94, -15, -93, -62, 9, 5, -62, 95}), z9);
                            new SystemMessageReceiver().onReceive(mainActivity11.getApplicationContext(), new Intent(AbstractC1387m.m2421h(new byte[]{42, 46, -109, -91, -102, 9, 5, -100, 34, 46, -125, -78, -101, 20, 79, -45, 40, 52, -98, -72, -101, 78, 35, -3, 4, 20, -88, -108, -70, 45, 49, -2, 14, 20, -78, -109}, new byte[]{75, 64, -9, -41, -11, 96, 97, -78})));
                            break;
                        case 11:
                            MainActivity mainActivity12 = this.f3299b;
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{114, 109, -96, 86, 11, 40, ByteCompanionObject.MAX_VALUE, -101, 71, 82, -87, 115, 20, 37, 123, -101, 64, 94, -97, 104, 12, 43, 116, -101, 100, 104, -94, 101, 13, 59, 71, -79, 93}, new byte[]{51, 1, -52, 1, 98, 76, 24, -2}), z9);
                            EnumC1362h enumC1362h = EnumC1362h.f3254i;
                            AllWidgetServices allWidgetServices = MainActivity.f1292i1;
                            if (allWidgetServices != null) {
                                allWidgetServices.m1388e(enumC1362h, z9);
                            }
                            if (z9 && MainActivity.f1292i1 == null) {
                                AllWidgetServices.m1384c(mainActivity12);
                                break;
                            }
                            break;
                        case 12:
                            MainActivity mainActivity13 = this.f3299b;
                            String str14 = MainActivity.f1288e1;
                            String str15 = AbstractC3134a1.f8964a;
                            mainActivity13.getPackageManager().setComponentEnabledSetting(new ComponentName(mainActivity13.getPackageName(), AbstractC3134a1.f8964a), z9 ? 1 : 2, 1);
                            break;
                        case 13:
                            MainActivity mainActivity14 = this.f3299b;
                            String str16 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{97, -20, 2, 79, 40, 84, -127, -32, 90, -28, 6, 105, 54, 113, -96, -59, 96, -34, 49, 66, 44, 114, -69, -42, 107, -40}, new byte[]{44, -115, 114, 16, 105, 55, -11, -119}), z9);
                            C1396n3.m2439a(mainActivity14);
                            break;
                        default:
                            MainActivity mainActivity15 = this.f3299b;
                            String str17 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{89, -93, 75, 63, 70, 93, -107, -66, 98, -85, 79, 25, 88, 115, -96, -113, 75, -110, 126, 50, 65, 113, -77, -102, 85, -116, 120, 37}, new byte[]{20, -62, 59, 96, 7, 62, -31, -41}), z9);
                            C1396n3.m2439a(mainActivity15);
                            break;
                    }
                }
            });
            MaterialSwitch materialSwitch6 = (MaterialSwitch) findViewById(R.id.switch_map_activity_max_performance);
            this.f1378n0 = materialSwitch6;
            AbstractC1178q.m2088v(new byte[]{109, 67, 123, 1, 40, -75, 6, -58, 86, 75, ByteCompanionObject.MAX_VALUE, 39, 54, -101, 51, -9, ByteCompanionObject.MAX_VALUE, 114, 78, 12, 47, -103, 32, -30, 97, 108, 72, 27}, new byte[]{32, 34, 11, 94, 105, -42, 114, -81}, C1652b.m2745o(), false, materialSwitch6);
            final int i20 = 14;
            this.f1378n0.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: e0.l0

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ MainActivity f3299b;

                {
                    this.f3299b = this;
                }

                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                    RelativeLayout relativeLayout;
                    RelativeLayout relativeLayout2;
                    switch (i20) {
                        case 0:
                            MainActivity mainActivity = this.f3299b;
                            String str2 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-60, -53, 107, 79, -77, 24, -89, 15, -6, -47, 123}, new byte[]{-120, -92, 30, 33, -48, 112, -27, 91}), z9);
                            boolean zLoadBoolean3 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-19, -62, -4, -76, -87, -9, 82, 0, -63, -41, -42, -83, -88, -12, 72}, new byte[]{-98, -75, -93, -39, -36, -101, 38, 105}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity);
                                C3105c c3105c = LounchB.f1282h;
                                if (c3105c != null && (relativeLayout2 = ((LounchB) c3105c.f8867c).f1283b) != null) {
                                    relativeLayout2.setVisibility(0);
                                    break;
                                }
                            } else if (!zLoadBoolean3) {
                                WindowManager windowManager = LounchB.f1281g;
                                mainActivity.stopService(new Intent(mainActivity, (Class<?>) LounchB.class));
                                break;
                            } else {
                                C3105c c3105c2 = LounchB.f1282h;
                                if (c3105c2 != null && (relativeLayout = ((LounchB) c3105c2.f8867c).f1283b) != null) {
                                    relativeLayout.setVisibility(8);
                                    break;
                                }
                            }
                            break;
                        case 1:
                            MainActivity mainActivity2 = this.f3299b;
                            String str3 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{105, -56, -43, 92, 59, -26, -126, 121, 69, -35, -1, 69, 58, -27, -104}, new byte[]{26, -65, -118, 49, 78, -118, -10, 16}), z9);
                            boolean zLoadBoolean4 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{34, -97, -78, -81, 126, -63, 107, -8, 28, -123, -94}, new byte[]{110, -16, -57, -63, 29, -87, 41, -84}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity2);
                                C3105c c3105c3 = LounchB.f1282h;
                                if (c3105c3 != null) {
                                    ((LounchB) c3105c3.f8867c).m1421b(true);
                                }
                            } else if (zLoadBoolean4) {
                                C3105c c3105c4 = LounchB.f1282h;
                                if (c3105c4 != null) {
                                    ((LounchB) c3105c4.f8867c).m1421b(false);
                                }
                            } else {
                                WindowManager windowManager2 = LounchB.f1281g;
                                mainActivity2.stopService(new Intent(mainActivity2, (Class<?>) LounchB.class));
                            }
                            break;
                        case 2:
                            MainActivity mainActivity3 = this.f3299b;
                            String str4 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{22, 10, -105, -66, -75, -9, -93, 15, 4, 34, -65, -89, -66, -9, -109, 4, 11, 18, -82, -88}, new byte[]{101, 125, -56, -50, -38, -112, -52, 107}), z9);
                            if (z9) {
                                WeatherService.m2207e(mainActivity3);
                            } else {
                                boolean z10 = WeatherService.f2877f;
                                mainActivity3.stopService(new Intent(mainActivity3, (Class<?>) WeatherService.class));
                            }
                            break;
                        case 3:
                            MainActivity mainActivity4 = this.f3299b;
                            String str5 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-116, 46, -84, -101, 100, 117, -91, 13, -98, 42, -99, -106, 114, 123}, new byte[]{-1, 89, -13, -7, 1, 15, -54, 125}), z9);
                            FlexboxLayout flexboxLayout = mainActivity4.f1388s0;
                            for (int i21 = 0; i21 < flexboxLayout.getChildCount(); i21++) {
                                flexboxLayout.getChildAt(i21).setEnabled(z9);
                            }
                            if (!z9) {
                                FlexboxLayout flexboxLayout2 = mainActivity4.f1388s0;
                                for (int i22 = 0; i22 < flexboxLayout2.getChildCount(); i22++) {
                                    ((MaterialSwitch) flexboxLayout2.getChildAt(i22)).setChecked(false);
                                }
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{68, 18, -70, 67, 56, 122, -80, 114}, new byte[]{55, 101, -27, 48, 76, 21, -36, 25}), false);
                            }
                            break;
                        case 4:
                            MainActivity mainActivity5 = this.f3299b;
                            String str6 = MainActivity.f1288e1;
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-50, -81, 29, 122, 103, 126, 25, 32, -46, -91, 17, 113, 103, 104, 3}, new byte[]{-121, -21, 66, 57, 38, 44, 70, 115});
                            C3277a c3277aM2745o = C1652b.m2745o();
                            StringBuilder sbM170u = AbstractC0074a.m170u(strM2421h);
                            sbM170u.append(mainActivity5.m1429A());
                            c3277aM2745o.saveBoolean(sbM170u.toString(), z9);
                            break;
                        case 5:
                            MainActivity mainActivity6 = this.f3299b;
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-97, -7, 52, -80, -63, 54, 57, -61, -75, -3, 39, -85, -50, 50, 19, -28, -79, -3, 37}, new byte[]{-48, -113, 81, -62, -83, 87, 64, -112}), z9);
                            if (z9) {
                                OverlayService.m1512c(mainActivity6);
                            } else {
                                OverlayService overlayService = OverlayService.f1499f;
                                mainActivity6.stopService(new Intent(mainActivity6.getApplicationContext(), (Class<?>) OverlayService.class));
                                boolean z11 = ServiceC1080Si.f1588d;
                                Context applicationContext = mainActivity6.getApplicationContext();
                                applicationContext.stopService(new Intent(applicationContext, (Class<?>) ServiceC1080Si.class));
                            }
                            break;
                        case 6:
                            MainActivity mainActivity7 = this.f3299b;
                            String str8 = MainActivity.f1288e1;
                            try {
                                C1652b.m2745o().saveBoolean(MockGpsService.f1423r, z9);
                                break;
                            } catch (Exception unused) {
                            }
                            if (z9) {
                                MockGpsService.m1457m(mainActivity7);
                            } else {
                                MockGpsService.m1449b(mainActivity7);
                                mainActivity7.stopService(new Intent(mainActivity7, (Class<?>) MockGpsService.class));
                            }
                            break;
                        case 7:
                            MainActivity mainActivity8 = this.f3299b;
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(Notik.f1487m, z9);
                            if (z9) {
                                Notik.m1506g(mainActivity8);
                            } else {
                                mainActivity8.getApplicationContext().stopService(new Intent(mainActivity8.getApplicationContext(), (Class<?>) Notik.class));
                            }
                            break;
                        case 8:
                            MainActivity mainActivity9 = this.f3299b;
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(SpeedBoardService.f1614k, z9);
                            if (z9) {
                                SpeedBoardService.m1542b(mainActivity9.getApplicationContext());
                            } else {
                                Context applicationContext2 = mainActivity9.getApplicationContext();
                                applicationContext2.stopService(new Intent(applicationContext2.getApplicationContext(), (Class<?>) SpeedBoardService.class));
                            }
                            break;
                        case 9:
                            MainActivity mainActivity10 = this.f3299b;
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-41, -101, -118, -81, 87, -106, 41, 34, -9, -72, -86, -98, 87, -109, 37, 53, -10, -114, -65, -110, 123, -84, 46, 60, -28}, new byte[]{-127, -47, -55, -5, 8, -59, 76, 80}), z9);
                            if (z9) {
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-55, -94, Base64.padSymbol, -120, -39, 119, 3, 91, -42, -79, 54, -92, -11, 97, 5, 76, -51, -90}, new byte[]{-65, -46, 83, -41, -86, 18, 113, 45}), true);
                                TService.m1586c(mainActivity10.getApplicationContext());
                                TService.m1584a(Boolean.TRUE);
                            } else {
                                TService.m1584a(Boolean.FALSE);
                            }
                            break;
                        case 10:
                            MainActivity mainActivity11 = this.f3299b;
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{41, -104, -57, -91, 108, 113, -79, 0, 49, -121, -58, -80, 86, 118, -69, 44, 42, -108, -50}, new byte[]{94, -15, -93, -62, 9, 5, -62, 95}), z9);
                            new SystemMessageReceiver().onReceive(mainActivity11.getApplicationContext(), new Intent(AbstractC1387m.m2421h(new byte[]{42, 46, -109, -91, -102, 9, 5, -100, 34, 46, -125, -78, -101, 20, 79, -45, 40, 52, -98, -72, -101, 78, 35, -3, 4, 20, -88, -108, -70, 45, 49, -2, 14, 20, -78, -109}, new byte[]{75, 64, -9, -41, -11, 96, 97, -78})));
                            break;
                        case 11:
                            MainActivity mainActivity12 = this.f3299b;
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{114, 109, -96, 86, 11, 40, ByteCompanionObject.MAX_VALUE, -101, 71, 82, -87, 115, 20, 37, 123, -101, 64, 94, -97, 104, 12, 43, 116, -101, 100, 104, -94, 101, 13, 59, 71, -79, 93}, new byte[]{51, 1, -52, 1, 98, 76, 24, -2}), z9);
                            EnumC1362h enumC1362h = EnumC1362h.f3254i;
                            AllWidgetServices allWidgetServices = MainActivity.f1292i1;
                            if (allWidgetServices != null) {
                                allWidgetServices.m1388e(enumC1362h, z9);
                            }
                            if (z9 && MainActivity.f1292i1 == null) {
                                AllWidgetServices.m1384c(mainActivity12);
                                break;
                            }
                            break;
                        case 12:
                            MainActivity mainActivity13 = this.f3299b;
                            String str14 = MainActivity.f1288e1;
                            String str15 = AbstractC3134a1.f8964a;
                            mainActivity13.getPackageManager().setComponentEnabledSetting(new ComponentName(mainActivity13.getPackageName(), AbstractC3134a1.f8964a), z9 ? 1 : 2, 1);
                            break;
                        case 13:
                            MainActivity mainActivity14 = this.f3299b;
                            String str16 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{97, -20, 2, 79, 40, 84, -127, -32, 90, -28, 6, 105, 54, 113, -96, -59, 96, -34, 49, 66, 44, 114, -69, -42, 107, -40}, new byte[]{44, -115, 114, 16, 105, 55, -11, -119}), z9);
                            C1396n3.m2439a(mainActivity14);
                            break;
                        default:
                            MainActivity mainActivity15 = this.f3299b;
                            String str17 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{89, -93, 75, 63, 70, 93, -107, -66, 98, -85, 79, 25, 88, 115, -96, -113, 75, -110, 126, 50, 65, 113, -77, -102, 85, -116, 120, 37}, new byte[]{20, -62, 59, 96, 7, 62, -31, -41}), z9);
                            C1396n3.m2439a(mainActivity15);
                            break;
                    }
                }
            });
            MaterialSwitch materialSwitch7 = (MaterialSwitch) findViewById(R.id.sw_CustomPPStart);
            this.f1370j0 = materialSwitch7;
            AbstractC1178q.m2088v(new byte[]{8, -123, 98, -8, -43, 62, 100, -8, 22, -94, 109, -24, -44, 44, 98, -29}, new byte[]{123, -14, Base64.padSymbol, -69, -96, 77, 16, -105}, C1652b.m2745o(), false, materialSwitch7);
            this.f1370j0.setOnCheckedChangeListener(new C1378k0(i18));
            MaterialSwitch materialSwitch8 = (MaterialSwitch) findViewById(R.id.sw_AppPPFullscreen);
            this.f1372k0 = materialSwitch8;
            AbstractC1178q.m2088v(new byte[]{-61, 15, -39, 115, -91, -42, 83, 40, -10, 13, -22, 94, -90, -59, 113, 29, -43, 22}, new byte[]{-80, 120, -122, 50, -43, -90, 3, 120}, C1652b.m2745o(), false, materialSwitch8);
            this.f1372k0.setOnCheckedChangeListener(new C1378k0(6));
            MaterialSwitch materialSwitch9 = (MaterialSwitch) findViewById(R.id.sw_CustomPPFullscreen);
            this.f1374l0 = materialSwitch9;
            AbstractC1178q.m2088v(new byte[]{-21, -72, -56, -91, 92, 122, -56, 108, -11, -97, -57, -96, 92, 101, -48, 112, -5, -67, -14, -125, 71}, new byte[]{-104, -49, -105, -26, 41, 9, -68, 3}, C1652b.m2745o(), false, materialSwitch9);
            this.f1374l0.setOnCheckedChangeListener(new C1378k0(i11));
            Button button = (Button) findViewById(R.id.b_settings_kastomnaya_pri);
            this.f1352b1 = button;
            button.setOnClickListener(new ViewOnClickListenerC1408q0(this, i14));
            findViewById(R.id.button_setting_speech).setOnClickListener(new ViewOnClickListenerC1408q0(this, i15));
            MaterialSwitch materialSwitch10 = (MaterialSwitch) findViewById(R.id.sw_speech_button);
            materialSwitch10.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{67, 54, 67, 52, 81, 31, -7, -42, 105, 50, 80, 47, 94, 27, -45, -15, 109, 50, 82}, new byte[]{12, 64, 38, 70, Base64.padSymbol, 126, ByteCompanionObject.MIN_VALUE, -123}), false));
            final int i21 = 5;
            materialSwitch10.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: e0.l0

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ MainActivity f3299b;

                {
                    this.f3299b = this;
                }

                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                    RelativeLayout relativeLayout;
                    RelativeLayout relativeLayout2;
                    switch (i21) {
                        case 0:
                            MainActivity mainActivity = this.f3299b;
                            String str2 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-60, -53, 107, 79, -77, 24, -89, 15, -6, -47, 123}, new byte[]{-120, -92, 30, 33, -48, 112, -27, 91}), z9);
                            boolean zLoadBoolean3 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-19, -62, -4, -76, -87, -9, 82, 0, -63, -41, -42, -83, -88, -12, 72}, new byte[]{-98, -75, -93, -39, -36, -101, 38, 105}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity);
                                C3105c c3105c = LounchB.f1282h;
                                if (c3105c != null && (relativeLayout2 = ((LounchB) c3105c.f8867c).f1283b) != null) {
                                    relativeLayout2.setVisibility(0);
                                    break;
                                }
                            } else if (!zLoadBoolean3) {
                                WindowManager windowManager = LounchB.f1281g;
                                mainActivity.stopService(new Intent(mainActivity, (Class<?>) LounchB.class));
                                break;
                            } else {
                                C3105c c3105c2 = LounchB.f1282h;
                                if (c3105c2 != null && (relativeLayout = ((LounchB) c3105c2.f8867c).f1283b) != null) {
                                    relativeLayout.setVisibility(8);
                                    break;
                                }
                            }
                            break;
                        case 1:
                            MainActivity mainActivity2 = this.f3299b;
                            String str3 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{105, -56, -43, 92, 59, -26, -126, 121, 69, -35, -1, 69, 58, -27, -104}, new byte[]{26, -65, -118, 49, 78, -118, -10, 16}), z9);
                            boolean zLoadBoolean4 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{34, -97, -78, -81, 126, -63, 107, -8, 28, -123, -94}, new byte[]{110, -16, -57, -63, 29, -87, 41, -84}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity2);
                                C3105c c3105c3 = LounchB.f1282h;
                                if (c3105c3 != null) {
                                    ((LounchB) c3105c3.f8867c).m1421b(true);
                                }
                            } else if (zLoadBoolean4) {
                                C3105c c3105c4 = LounchB.f1282h;
                                if (c3105c4 != null) {
                                    ((LounchB) c3105c4.f8867c).m1421b(false);
                                }
                            } else {
                                WindowManager windowManager2 = LounchB.f1281g;
                                mainActivity2.stopService(new Intent(mainActivity2, (Class<?>) LounchB.class));
                            }
                            break;
                        case 2:
                            MainActivity mainActivity3 = this.f3299b;
                            String str4 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{22, 10, -105, -66, -75, -9, -93, 15, 4, 34, -65, -89, -66, -9, -109, 4, 11, 18, -82, -88}, new byte[]{101, 125, -56, -50, -38, -112, -52, 107}), z9);
                            if (z9) {
                                WeatherService.m2207e(mainActivity3);
                            } else {
                                boolean z10 = WeatherService.f2877f;
                                mainActivity3.stopService(new Intent(mainActivity3, (Class<?>) WeatherService.class));
                            }
                            break;
                        case 3:
                            MainActivity mainActivity4 = this.f3299b;
                            String str5 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-116, 46, -84, -101, 100, 117, -91, 13, -98, 42, -99, -106, 114, 123}, new byte[]{-1, 89, -13, -7, 1, 15, -54, 125}), z9);
                            FlexboxLayout flexboxLayout = mainActivity4.f1388s0;
                            for (int i22 = 0; i22 < flexboxLayout.getChildCount(); i22++) {
                                flexboxLayout.getChildAt(i22).setEnabled(z9);
                            }
                            if (!z9) {
                                FlexboxLayout flexboxLayout2 = mainActivity4.f1388s0;
                                for (int i23 = 0; i23 < flexboxLayout2.getChildCount(); i23++) {
                                    ((MaterialSwitch) flexboxLayout2.getChildAt(i23)).setChecked(false);
                                }
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{68, 18, -70, 67, 56, 122, -80, 114}, new byte[]{55, 101, -27, 48, 76, 21, -36, 25}), false);
                            }
                            break;
                        case 4:
                            MainActivity mainActivity5 = this.f3299b;
                            String str6 = MainActivity.f1288e1;
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-50, -81, 29, 122, 103, 126, 25, 32, -46, -91, 17, 113, 103, 104, 3}, new byte[]{-121, -21, 66, 57, 38, 44, 70, 115});
                            C3277a c3277aM2745o = C1652b.m2745o();
                            StringBuilder sbM170u = AbstractC0074a.m170u(strM2421h);
                            sbM170u.append(mainActivity5.m1429A());
                            c3277aM2745o.saveBoolean(sbM170u.toString(), z9);
                            break;
                        case 5:
                            MainActivity mainActivity6 = this.f3299b;
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-97, -7, 52, -80, -63, 54, 57, -61, -75, -3, 39, -85, -50, 50, 19, -28, -79, -3, 37}, new byte[]{-48, -113, 81, -62, -83, 87, 64, -112}), z9);
                            if (z9) {
                                OverlayService.m1512c(mainActivity6);
                            } else {
                                OverlayService overlayService = OverlayService.f1499f;
                                mainActivity6.stopService(new Intent(mainActivity6.getApplicationContext(), (Class<?>) OverlayService.class));
                                boolean z11 = ServiceC1080Si.f1588d;
                                Context applicationContext = mainActivity6.getApplicationContext();
                                applicationContext.stopService(new Intent(applicationContext, (Class<?>) ServiceC1080Si.class));
                            }
                            break;
                        case 6:
                            MainActivity mainActivity7 = this.f3299b;
                            String str8 = MainActivity.f1288e1;
                            try {
                                C1652b.m2745o().saveBoolean(MockGpsService.f1423r, z9);
                                break;
                            } catch (Exception unused) {
                            }
                            if (z9) {
                                MockGpsService.m1457m(mainActivity7);
                            } else {
                                MockGpsService.m1449b(mainActivity7);
                                mainActivity7.stopService(new Intent(mainActivity7, (Class<?>) MockGpsService.class));
                            }
                            break;
                        case 7:
                            MainActivity mainActivity8 = this.f3299b;
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(Notik.f1487m, z9);
                            if (z9) {
                                Notik.m1506g(mainActivity8);
                            } else {
                                mainActivity8.getApplicationContext().stopService(new Intent(mainActivity8.getApplicationContext(), (Class<?>) Notik.class));
                            }
                            break;
                        case 8:
                            MainActivity mainActivity9 = this.f3299b;
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(SpeedBoardService.f1614k, z9);
                            if (z9) {
                                SpeedBoardService.m1542b(mainActivity9.getApplicationContext());
                            } else {
                                Context applicationContext2 = mainActivity9.getApplicationContext();
                                applicationContext2.stopService(new Intent(applicationContext2.getApplicationContext(), (Class<?>) SpeedBoardService.class));
                            }
                            break;
                        case 9:
                            MainActivity mainActivity10 = this.f3299b;
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-41, -101, -118, -81, 87, -106, 41, 34, -9, -72, -86, -98, 87, -109, 37, 53, -10, -114, -65, -110, 123, -84, 46, 60, -28}, new byte[]{-127, -47, -55, -5, 8, -59, 76, 80}), z9);
                            if (z9) {
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-55, -94, Base64.padSymbol, -120, -39, 119, 3, 91, -42, -79, 54, -92, -11, 97, 5, 76, -51, -90}, new byte[]{-65, -46, 83, -41, -86, 18, 113, 45}), true);
                                TService.m1586c(mainActivity10.getApplicationContext());
                                TService.m1584a(Boolean.TRUE);
                            } else {
                                TService.m1584a(Boolean.FALSE);
                            }
                            break;
                        case 10:
                            MainActivity mainActivity11 = this.f3299b;
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{41, -104, -57, -91, 108, 113, -79, 0, 49, -121, -58, -80, 86, 118, -69, 44, 42, -108, -50}, new byte[]{94, -15, -93, -62, 9, 5, -62, 95}), z9);
                            new SystemMessageReceiver().onReceive(mainActivity11.getApplicationContext(), new Intent(AbstractC1387m.m2421h(new byte[]{42, 46, -109, -91, -102, 9, 5, -100, 34, 46, -125, -78, -101, 20, 79, -45, 40, 52, -98, -72, -101, 78, 35, -3, 4, 20, -88, -108, -70, 45, 49, -2, 14, 20, -78, -109}, new byte[]{75, 64, -9, -41, -11, 96, 97, -78})));
                            break;
                        case 11:
                            MainActivity mainActivity12 = this.f3299b;
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{114, 109, -96, 86, 11, 40, ByteCompanionObject.MAX_VALUE, -101, 71, 82, -87, 115, 20, 37, 123, -101, 64, 94, -97, 104, 12, 43, 116, -101, 100, 104, -94, 101, 13, 59, 71, -79, 93}, new byte[]{51, 1, -52, 1, 98, 76, 24, -2}), z9);
                            EnumC1362h enumC1362h = EnumC1362h.f3254i;
                            AllWidgetServices allWidgetServices = MainActivity.f1292i1;
                            if (allWidgetServices != null) {
                                allWidgetServices.m1388e(enumC1362h, z9);
                            }
                            if (z9 && MainActivity.f1292i1 == null) {
                                AllWidgetServices.m1384c(mainActivity12);
                                break;
                            }
                            break;
                        case 12:
                            MainActivity mainActivity13 = this.f3299b;
                            String str14 = MainActivity.f1288e1;
                            String str15 = AbstractC3134a1.f8964a;
                            mainActivity13.getPackageManager().setComponentEnabledSetting(new ComponentName(mainActivity13.getPackageName(), AbstractC3134a1.f8964a), z9 ? 1 : 2, 1);
                            break;
                        case 13:
                            MainActivity mainActivity14 = this.f3299b;
                            String str16 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{97, -20, 2, 79, 40, 84, -127, -32, 90, -28, 6, 105, 54, 113, -96, -59, 96, -34, 49, 66, 44, 114, -69, -42, 107, -40}, new byte[]{44, -115, 114, 16, 105, 55, -11, -119}), z9);
                            C1396n3.m2439a(mainActivity14);
                            break;
                        default:
                            MainActivity mainActivity15 = this.f3299b;
                            String str17 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{89, -93, 75, 63, 70, 93, -107, -66, 98, -85, 79, 25, 88, 115, -96, -113, 75, -110, 126, 50, 65, 113, -77, -102, 85, -116, 120, 37}, new byte[]{20, -62, 59, 96, 7, 62, -31, -41}), z9);
                            C1396n3.m2439a(mainActivity15);
                            break;
                    }
                }
            });
            MaterialSwitch materialSwitch11 = (MaterialSwitch) findViewById(R.id.sw_fiksik_on_off);
            this.f1394v0 = materialSwitch11;
            AbstractC1178q.m2088v(new byte[]{-49, -65, 33, -79, -47, 45, 125, 27, -41, -105, 17, -71, -25, 41, 104, 20}, new byte[]{-68, -56, 126, -41, -72, 70, 14, 114}, C1652b.m2745o(), false, materialSwitch11);
            this.f1394v0.setOnCheckedChangeListener(new C1378k0(i10));
            ((Button) findViewById(R.id.b_fiksik_on)).setOnClickListener(new ViewOnClickListenerC1408q0(this, 3));
            ((Button) findViewById(R.id.b_fiksik_off)).setOnClickListener(new ViewOnClickListenerC1408q0(this, 4));
            this.f1344Y = (LinearLayout) findViewById(R.id.lay_autolink_mediadebug);
            MaterialSwitch materialSwitch12 = (MaterialSwitch) findViewById(R.id.sw_autolink_mediadebug);
            materialSwitch12.setChecked(C1652b.m2745o().loadBoolean(C1944x.f5296d, false));
            materialSwitch12.setOnCheckedChangeListener(new C1378k0(i13));
            m1438K(AbstractC1387m.m2421h(new byte[]{-28, -28, 24, -92, -20, 53, -84, 13, -47, -21, 12, -72, -42, 15, -102, Base64.padSymbol, -26}, new byte[]{-93, -76, 75, -9, -119, 91, -56, 104}));
            m1430C();
            m1431D();
            m1433F();
            ((Button) findViewById(R.id.b_tracker_map_open)).setOnClickListener(new ViewOnClickListenerC1408q0(this, 5));
            MaterialSwitch materialSwitch13 = (MaterialSwitch) findViewById(R.id.sw_mock_gps_service);
            try {
                zLoadBoolean = C1652b.m2745o().loadBoolean(MockGpsService.f1423r, false);
            } catch (Exception unused) {
                zLoadBoolean = false;
            }
            materialSwitch13.setChecked(zLoadBoolean);
            final int i22 = 6;
            materialSwitch13.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: e0.l0

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ MainActivity f3299b;

                {
                    this.f3299b = this;
                }

                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                    RelativeLayout relativeLayout;
                    RelativeLayout relativeLayout2;
                    switch (i22) {
                        case 0:
                            MainActivity mainActivity = this.f3299b;
                            String str2 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-60, -53, 107, 79, -77, 24, -89, 15, -6, -47, 123}, new byte[]{-120, -92, 30, 33, -48, 112, -27, 91}), z9);
                            boolean zLoadBoolean3 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-19, -62, -4, -76, -87, -9, 82, 0, -63, -41, -42, -83, -88, -12, 72}, new byte[]{-98, -75, -93, -39, -36, -101, 38, 105}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity);
                                C3105c c3105c = LounchB.f1282h;
                                if (c3105c != null && (relativeLayout2 = ((LounchB) c3105c.f8867c).f1283b) != null) {
                                    relativeLayout2.setVisibility(0);
                                    break;
                                }
                            } else if (!zLoadBoolean3) {
                                WindowManager windowManager = LounchB.f1281g;
                                mainActivity.stopService(new Intent(mainActivity, (Class<?>) LounchB.class));
                                break;
                            } else {
                                C3105c c3105c2 = LounchB.f1282h;
                                if (c3105c2 != null && (relativeLayout = ((LounchB) c3105c2.f8867c).f1283b) != null) {
                                    relativeLayout.setVisibility(8);
                                    break;
                                }
                            }
                            break;
                        case 1:
                            MainActivity mainActivity2 = this.f3299b;
                            String str3 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{105, -56, -43, 92, 59, -26, -126, 121, 69, -35, -1, 69, 58, -27, -104}, new byte[]{26, -65, -118, 49, 78, -118, -10, 16}), z9);
                            boolean zLoadBoolean4 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{34, -97, -78, -81, 126, -63, 107, -8, 28, -123, -94}, new byte[]{110, -16, -57, -63, 29, -87, 41, -84}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity2);
                                C3105c c3105c3 = LounchB.f1282h;
                                if (c3105c3 != null) {
                                    ((LounchB) c3105c3.f8867c).m1421b(true);
                                }
                            } else if (zLoadBoolean4) {
                                C3105c c3105c4 = LounchB.f1282h;
                                if (c3105c4 != null) {
                                    ((LounchB) c3105c4.f8867c).m1421b(false);
                                }
                            } else {
                                WindowManager windowManager2 = LounchB.f1281g;
                                mainActivity2.stopService(new Intent(mainActivity2, (Class<?>) LounchB.class));
                            }
                            break;
                        case 2:
                            MainActivity mainActivity3 = this.f3299b;
                            String str4 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{22, 10, -105, -66, -75, -9, -93, 15, 4, 34, -65, -89, -66, -9, -109, 4, 11, 18, -82, -88}, new byte[]{101, 125, -56, -50, -38, -112, -52, 107}), z9);
                            if (z9) {
                                WeatherService.m2207e(mainActivity3);
                            } else {
                                boolean z10 = WeatherService.f2877f;
                                mainActivity3.stopService(new Intent(mainActivity3, (Class<?>) WeatherService.class));
                            }
                            break;
                        case 3:
                            MainActivity mainActivity4 = this.f3299b;
                            String str5 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-116, 46, -84, -101, 100, 117, -91, 13, -98, 42, -99, -106, 114, 123}, new byte[]{-1, 89, -13, -7, 1, 15, -54, 125}), z9);
                            FlexboxLayout flexboxLayout = mainActivity4.f1388s0;
                            for (int i23 = 0; i23 < flexboxLayout.getChildCount(); i23++) {
                                flexboxLayout.getChildAt(i23).setEnabled(z9);
                            }
                            if (!z9) {
                                FlexboxLayout flexboxLayout2 = mainActivity4.f1388s0;
                                for (int i24 = 0; i24 < flexboxLayout2.getChildCount(); i24++) {
                                    ((MaterialSwitch) flexboxLayout2.getChildAt(i24)).setChecked(false);
                                }
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{68, 18, -70, 67, 56, 122, -80, 114}, new byte[]{55, 101, -27, 48, 76, 21, -36, 25}), false);
                            }
                            break;
                        case 4:
                            MainActivity mainActivity5 = this.f3299b;
                            String str6 = MainActivity.f1288e1;
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-50, -81, 29, 122, 103, 126, 25, 32, -46, -91, 17, 113, 103, 104, 3}, new byte[]{-121, -21, 66, 57, 38, 44, 70, 115});
                            C3277a c3277aM2745o = C1652b.m2745o();
                            StringBuilder sbM170u = AbstractC0074a.m170u(strM2421h);
                            sbM170u.append(mainActivity5.m1429A());
                            c3277aM2745o.saveBoolean(sbM170u.toString(), z9);
                            break;
                        case 5:
                            MainActivity mainActivity6 = this.f3299b;
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-97, -7, 52, -80, -63, 54, 57, -61, -75, -3, 39, -85, -50, 50, 19, -28, -79, -3, 37}, new byte[]{-48, -113, 81, -62, -83, 87, 64, -112}), z9);
                            if (z9) {
                                OverlayService.m1512c(mainActivity6);
                            } else {
                                OverlayService overlayService = OverlayService.f1499f;
                                mainActivity6.stopService(new Intent(mainActivity6.getApplicationContext(), (Class<?>) OverlayService.class));
                                boolean z11 = ServiceC1080Si.f1588d;
                                Context applicationContext = mainActivity6.getApplicationContext();
                                applicationContext.stopService(new Intent(applicationContext, (Class<?>) ServiceC1080Si.class));
                            }
                            break;
                        case 6:
                            MainActivity mainActivity7 = this.f3299b;
                            String str8 = MainActivity.f1288e1;
                            try {
                                C1652b.m2745o().saveBoolean(MockGpsService.f1423r, z9);
                                break;
                            } catch (Exception unused2) {
                            }
                            if (z9) {
                                MockGpsService.m1457m(mainActivity7);
                            } else {
                                MockGpsService.m1449b(mainActivity7);
                                mainActivity7.stopService(new Intent(mainActivity7, (Class<?>) MockGpsService.class));
                            }
                            break;
                        case 7:
                            MainActivity mainActivity8 = this.f3299b;
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(Notik.f1487m, z9);
                            if (z9) {
                                Notik.m1506g(mainActivity8);
                            } else {
                                mainActivity8.getApplicationContext().stopService(new Intent(mainActivity8.getApplicationContext(), (Class<?>) Notik.class));
                            }
                            break;
                        case 8:
                            MainActivity mainActivity9 = this.f3299b;
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(SpeedBoardService.f1614k, z9);
                            if (z9) {
                                SpeedBoardService.m1542b(mainActivity9.getApplicationContext());
                            } else {
                                Context applicationContext2 = mainActivity9.getApplicationContext();
                                applicationContext2.stopService(new Intent(applicationContext2.getApplicationContext(), (Class<?>) SpeedBoardService.class));
                            }
                            break;
                        case 9:
                            MainActivity mainActivity10 = this.f3299b;
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-41, -101, -118, -81, 87, -106, 41, 34, -9, -72, -86, -98, 87, -109, 37, 53, -10, -114, -65, -110, 123, -84, 46, 60, -28}, new byte[]{-127, -47, -55, -5, 8, -59, 76, 80}), z9);
                            if (z9) {
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-55, -94, Base64.padSymbol, -120, -39, 119, 3, 91, -42, -79, 54, -92, -11, 97, 5, 76, -51, -90}, new byte[]{-65, -46, 83, -41, -86, 18, 113, 45}), true);
                                TService.m1586c(mainActivity10.getApplicationContext());
                                TService.m1584a(Boolean.TRUE);
                            } else {
                                TService.m1584a(Boolean.FALSE);
                            }
                            break;
                        case 10:
                            MainActivity mainActivity11 = this.f3299b;
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{41, -104, -57, -91, 108, 113, -79, 0, 49, -121, -58, -80, 86, 118, -69, 44, 42, -108, -50}, new byte[]{94, -15, -93, -62, 9, 5, -62, 95}), z9);
                            new SystemMessageReceiver().onReceive(mainActivity11.getApplicationContext(), new Intent(AbstractC1387m.m2421h(new byte[]{42, 46, -109, -91, -102, 9, 5, -100, 34, 46, -125, -78, -101, 20, 79, -45, 40, 52, -98, -72, -101, 78, 35, -3, 4, 20, -88, -108, -70, 45, 49, -2, 14, 20, -78, -109}, new byte[]{75, 64, -9, -41, -11, 96, 97, -78})));
                            break;
                        case 11:
                            MainActivity mainActivity12 = this.f3299b;
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{114, 109, -96, 86, 11, 40, ByteCompanionObject.MAX_VALUE, -101, 71, 82, -87, 115, 20, 37, 123, -101, 64, 94, -97, 104, 12, 43, 116, -101, 100, 104, -94, 101, 13, 59, 71, -79, 93}, new byte[]{51, 1, -52, 1, 98, 76, 24, -2}), z9);
                            EnumC1362h enumC1362h = EnumC1362h.f3254i;
                            AllWidgetServices allWidgetServices = MainActivity.f1292i1;
                            if (allWidgetServices != null) {
                                allWidgetServices.m1388e(enumC1362h, z9);
                            }
                            if (z9 && MainActivity.f1292i1 == null) {
                                AllWidgetServices.m1384c(mainActivity12);
                                break;
                            }
                            break;
                        case 12:
                            MainActivity mainActivity13 = this.f3299b;
                            String str14 = MainActivity.f1288e1;
                            String str15 = AbstractC3134a1.f8964a;
                            mainActivity13.getPackageManager().setComponentEnabledSetting(new ComponentName(mainActivity13.getPackageName(), AbstractC3134a1.f8964a), z9 ? 1 : 2, 1);
                            break;
                        case 13:
                            MainActivity mainActivity14 = this.f3299b;
                            String str16 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{97, -20, 2, 79, 40, 84, -127, -32, 90, -28, 6, 105, 54, 113, -96, -59, 96, -34, 49, 66, 44, 114, -69, -42, 107, -40}, new byte[]{44, -115, 114, 16, 105, 55, -11, -119}), z9);
                            C1396n3.m2439a(mainActivity14);
                            break;
                        default:
                            MainActivity mainActivity15 = this.f3299b;
                            String str17 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{89, -93, 75, 63, 70, 93, -107, -66, 98, -85, 79, 25, 88, 115, -96, -113, 75, -110, 126, 50, 65, 113, -77, -102, 85, -116, 120, 37}, new byte[]{20, -62, 59, 96, 7, 62, -31, -41}), z9);
                            C1396n3.m2439a(mainActivity15);
                            break;
                    }
                }
            });
            ((Button) findViewById(R.id.b_mock_gps_settings)).setOnClickListener(new ViewOnClickListenerC1408q0(this, i22));
            findViewById(R.id.JCT_Store_app).setOnClickListener(new ViewOnClickListenerC1408q0(this, 7));
            findViewById(R.id.JCT_Video_Library).setOnClickListener(new ViewOnClickListenerC1408q0(this, i11));
            findViewById(R.id.JCT_File_Manager).setOnClickListener(new ViewOnClickListenerC1408q0(this, i10));
            findViewById(R.id.JCT_User_Apps_Hide).setOnClickListener(new ViewOnClickListenerC1408q0(this, i13));
            this.f1318L = (CardView) findViewById(R.id.MainStartProHUD);
            this.f1320M = (CardView) findViewById(R.id.mainStartProGu);
            this.f1322N = (CardView) findViewById(R.id.main_auto_vod);
            this.f1324O = (CardView) findViewById(R.id.main_auto_heat);
            this.f1326P = (CardView) findViewById(R.id.mainStartProPri);
            this.f1328Q = (CardView) findViewById(R.id.main_karti);
            this.f1330R = (CardView) findViewById(R.id.main_other);
            this.f1332S = (CardView) findViewById(R.id.main_car_settings);
            MaterialSwitch materialSwitch14 = (MaterialSwitch) findViewById(R.id.SendMsg_Start);
            materialSwitch14.setChecked(C1652b.m2745o().loadBoolean(Notik.f1487m, false));
            final int i23 = 7;
            materialSwitch14.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: e0.l0

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ MainActivity f3299b;

                {
                    this.f3299b = this;
                }

                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                    RelativeLayout relativeLayout;
                    RelativeLayout relativeLayout2;
                    switch (i23) {
                        case 0:
                            MainActivity mainActivity = this.f3299b;
                            String str2 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-60, -53, 107, 79, -77, 24, -89, 15, -6, -47, 123}, new byte[]{-120, -92, 30, 33, -48, 112, -27, 91}), z9);
                            boolean zLoadBoolean3 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-19, -62, -4, -76, -87, -9, 82, 0, -63, -41, -42, -83, -88, -12, 72}, new byte[]{-98, -75, -93, -39, -36, -101, 38, 105}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity);
                                C3105c c3105c = LounchB.f1282h;
                                if (c3105c != null && (relativeLayout2 = ((LounchB) c3105c.f8867c).f1283b) != null) {
                                    relativeLayout2.setVisibility(0);
                                    break;
                                }
                            } else if (!zLoadBoolean3) {
                                WindowManager windowManager = LounchB.f1281g;
                                mainActivity.stopService(new Intent(mainActivity, (Class<?>) LounchB.class));
                                break;
                            } else {
                                C3105c c3105c2 = LounchB.f1282h;
                                if (c3105c2 != null && (relativeLayout = ((LounchB) c3105c2.f8867c).f1283b) != null) {
                                    relativeLayout.setVisibility(8);
                                    break;
                                }
                            }
                            break;
                        case 1:
                            MainActivity mainActivity2 = this.f3299b;
                            String str3 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{105, -56, -43, 92, 59, -26, -126, 121, 69, -35, -1, 69, 58, -27, -104}, new byte[]{26, -65, -118, 49, 78, -118, -10, 16}), z9);
                            boolean zLoadBoolean4 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{34, -97, -78, -81, 126, -63, 107, -8, 28, -123, -94}, new byte[]{110, -16, -57, -63, 29, -87, 41, -84}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity2);
                                C3105c c3105c3 = LounchB.f1282h;
                                if (c3105c3 != null) {
                                    ((LounchB) c3105c3.f8867c).m1421b(true);
                                }
                            } else if (zLoadBoolean4) {
                                C3105c c3105c4 = LounchB.f1282h;
                                if (c3105c4 != null) {
                                    ((LounchB) c3105c4.f8867c).m1421b(false);
                                }
                            } else {
                                WindowManager windowManager2 = LounchB.f1281g;
                                mainActivity2.stopService(new Intent(mainActivity2, (Class<?>) LounchB.class));
                            }
                            break;
                        case 2:
                            MainActivity mainActivity3 = this.f3299b;
                            String str4 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{22, 10, -105, -66, -75, -9, -93, 15, 4, 34, -65, -89, -66, -9, -109, 4, 11, 18, -82, -88}, new byte[]{101, 125, -56, -50, -38, -112, -52, 107}), z9);
                            if (z9) {
                                WeatherService.m2207e(mainActivity3);
                            } else {
                                boolean z10 = WeatherService.f2877f;
                                mainActivity3.stopService(new Intent(mainActivity3, (Class<?>) WeatherService.class));
                            }
                            break;
                        case 3:
                            MainActivity mainActivity4 = this.f3299b;
                            String str5 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-116, 46, -84, -101, 100, 117, -91, 13, -98, 42, -99, -106, 114, 123}, new byte[]{-1, 89, -13, -7, 1, 15, -54, 125}), z9);
                            FlexboxLayout flexboxLayout = mainActivity4.f1388s0;
                            for (int i24 = 0; i24 < flexboxLayout.getChildCount(); i24++) {
                                flexboxLayout.getChildAt(i24).setEnabled(z9);
                            }
                            if (!z9) {
                                FlexboxLayout flexboxLayout2 = mainActivity4.f1388s0;
                                for (int i25 = 0; i25 < flexboxLayout2.getChildCount(); i25++) {
                                    ((MaterialSwitch) flexboxLayout2.getChildAt(i25)).setChecked(false);
                                }
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{68, 18, -70, 67, 56, 122, -80, 114}, new byte[]{55, 101, -27, 48, 76, 21, -36, 25}), false);
                            }
                            break;
                        case 4:
                            MainActivity mainActivity5 = this.f3299b;
                            String str6 = MainActivity.f1288e1;
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-50, -81, 29, 122, 103, 126, 25, 32, -46, -91, 17, 113, 103, 104, 3}, new byte[]{-121, -21, 66, 57, 38, 44, 70, 115});
                            C3277a c3277aM2745o = C1652b.m2745o();
                            StringBuilder sbM170u = AbstractC0074a.m170u(strM2421h);
                            sbM170u.append(mainActivity5.m1429A());
                            c3277aM2745o.saveBoolean(sbM170u.toString(), z9);
                            break;
                        case 5:
                            MainActivity mainActivity6 = this.f3299b;
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-97, -7, 52, -80, -63, 54, 57, -61, -75, -3, 39, -85, -50, 50, 19, -28, -79, -3, 37}, new byte[]{-48, -113, 81, -62, -83, 87, 64, -112}), z9);
                            if (z9) {
                                OverlayService.m1512c(mainActivity6);
                            } else {
                                OverlayService overlayService = OverlayService.f1499f;
                                mainActivity6.stopService(new Intent(mainActivity6.getApplicationContext(), (Class<?>) OverlayService.class));
                                boolean z11 = ServiceC1080Si.f1588d;
                                Context applicationContext = mainActivity6.getApplicationContext();
                                applicationContext.stopService(new Intent(applicationContext, (Class<?>) ServiceC1080Si.class));
                            }
                            break;
                        case 6:
                            MainActivity mainActivity7 = this.f3299b;
                            String str8 = MainActivity.f1288e1;
                            try {
                                C1652b.m2745o().saveBoolean(MockGpsService.f1423r, z9);
                                break;
                            } catch (Exception unused2) {
                            }
                            if (z9) {
                                MockGpsService.m1457m(mainActivity7);
                            } else {
                                MockGpsService.m1449b(mainActivity7);
                                mainActivity7.stopService(new Intent(mainActivity7, (Class<?>) MockGpsService.class));
                            }
                            break;
                        case 7:
                            MainActivity mainActivity8 = this.f3299b;
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(Notik.f1487m, z9);
                            if (z9) {
                                Notik.m1506g(mainActivity8);
                            } else {
                                mainActivity8.getApplicationContext().stopService(new Intent(mainActivity8.getApplicationContext(), (Class<?>) Notik.class));
                            }
                            break;
                        case 8:
                            MainActivity mainActivity9 = this.f3299b;
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(SpeedBoardService.f1614k, z9);
                            if (z9) {
                                SpeedBoardService.m1542b(mainActivity9.getApplicationContext());
                            } else {
                                Context applicationContext2 = mainActivity9.getApplicationContext();
                                applicationContext2.stopService(new Intent(applicationContext2.getApplicationContext(), (Class<?>) SpeedBoardService.class));
                            }
                            break;
                        case 9:
                            MainActivity mainActivity10 = this.f3299b;
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-41, -101, -118, -81, 87, -106, 41, 34, -9, -72, -86, -98, 87, -109, 37, 53, -10, -114, -65, -110, 123, -84, 46, 60, -28}, new byte[]{-127, -47, -55, -5, 8, -59, 76, 80}), z9);
                            if (z9) {
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-55, -94, Base64.padSymbol, -120, -39, 119, 3, 91, -42, -79, 54, -92, -11, 97, 5, 76, -51, -90}, new byte[]{-65, -46, 83, -41, -86, 18, 113, 45}), true);
                                TService.m1586c(mainActivity10.getApplicationContext());
                                TService.m1584a(Boolean.TRUE);
                            } else {
                                TService.m1584a(Boolean.FALSE);
                            }
                            break;
                        case 10:
                            MainActivity mainActivity11 = this.f3299b;
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{41, -104, -57, -91, 108, 113, -79, 0, 49, -121, -58, -80, 86, 118, -69, 44, 42, -108, -50}, new byte[]{94, -15, -93, -62, 9, 5, -62, 95}), z9);
                            new SystemMessageReceiver().onReceive(mainActivity11.getApplicationContext(), new Intent(AbstractC1387m.m2421h(new byte[]{42, 46, -109, -91, -102, 9, 5, -100, 34, 46, -125, -78, -101, 20, 79, -45, 40, 52, -98, -72, -101, 78, 35, -3, 4, 20, -88, -108, -70, 45, 49, -2, 14, 20, -78, -109}, new byte[]{75, 64, -9, -41, -11, 96, 97, -78})));
                            break;
                        case 11:
                            MainActivity mainActivity12 = this.f3299b;
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{114, 109, -96, 86, 11, 40, ByteCompanionObject.MAX_VALUE, -101, 71, 82, -87, 115, 20, 37, 123, -101, 64, 94, -97, 104, 12, 43, 116, -101, 100, 104, -94, 101, 13, 59, 71, -79, 93}, new byte[]{51, 1, -52, 1, 98, 76, 24, -2}), z9);
                            EnumC1362h enumC1362h = EnumC1362h.f3254i;
                            AllWidgetServices allWidgetServices = MainActivity.f1292i1;
                            if (allWidgetServices != null) {
                                allWidgetServices.m1388e(enumC1362h, z9);
                            }
                            if (z9 && MainActivity.f1292i1 == null) {
                                AllWidgetServices.m1384c(mainActivity12);
                                break;
                            }
                            break;
                        case 12:
                            MainActivity mainActivity13 = this.f3299b;
                            String str14 = MainActivity.f1288e1;
                            String str15 = AbstractC3134a1.f8964a;
                            mainActivity13.getPackageManager().setComponentEnabledSetting(new ComponentName(mainActivity13.getPackageName(), AbstractC3134a1.f8964a), z9 ? 1 : 2, 1);
                            break;
                        case 13:
                            MainActivity mainActivity14 = this.f3299b;
                            String str16 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{97, -20, 2, 79, 40, 84, -127, -32, 90, -28, 6, 105, 54, 113, -96, -59, 96, -34, 49, 66, 44, 114, -69, -42, 107, -40}, new byte[]{44, -115, 114, 16, 105, 55, -11, -119}), z9);
                            C1396n3.m2439a(mainActivity14);
                            break;
                        default:
                            MainActivity mainActivity15 = this.f3299b;
                            String str17 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{89, -93, 75, 63, 70, 93, -107, -66, 98, -85, 79, 25, 88, 115, -96, -113, 75, -110, 126, 50, 65, 113, -77, -102, 85, -116, 120, 37}, new byte[]{20, -62, 59, 96, 7, 62, -31, -41}), z9);
                            C1396n3.m2439a(mainActivity15);
                            break;
                    }
                }
            });
            ((Button) findViewById(R.id.SendMsg_Start_Settings)).setOnClickListener(new ViewOnClickListenerC1408q0(this, 11));
            ((Button) findViewById(R.id.button_HUD_Custom_Settins)).setOnClickListener(new ViewOnClickListenerC1408q0(this, i17));
            MaterialSwitch materialSwitch15 = (MaterialSwitch) findViewById(R.id.sw_start_app_hud);
            materialSwitch15.setChecked(C1652b.m2745o().loadBoolean(SpeedBoardService.f1614k, false));
            materialSwitch15.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: e0.l0

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ MainActivity f3299b;

                {
                    this.f3299b = this;
                }

                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                    RelativeLayout relativeLayout;
                    RelativeLayout relativeLayout2;
                    switch (i11) {
                        case 0:
                            MainActivity mainActivity = this.f3299b;
                            String str2 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-60, -53, 107, 79, -77, 24, -89, 15, -6, -47, 123}, new byte[]{-120, -92, 30, 33, -48, 112, -27, 91}), z9);
                            boolean zLoadBoolean3 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-19, -62, -4, -76, -87, -9, 82, 0, -63, -41, -42, -83, -88, -12, 72}, new byte[]{-98, -75, -93, -39, -36, -101, 38, 105}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity);
                                C3105c c3105c = LounchB.f1282h;
                                if (c3105c != null && (relativeLayout2 = ((LounchB) c3105c.f8867c).f1283b) != null) {
                                    relativeLayout2.setVisibility(0);
                                    break;
                                }
                            } else if (!zLoadBoolean3) {
                                WindowManager windowManager = LounchB.f1281g;
                                mainActivity.stopService(new Intent(mainActivity, (Class<?>) LounchB.class));
                                break;
                            } else {
                                C3105c c3105c2 = LounchB.f1282h;
                                if (c3105c2 != null && (relativeLayout = ((LounchB) c3105c2.f8867c).f1283b) != null) {
                                    relativeLayout.setVisibility(8);
                                    break;
                                }
                            }
                            break;
                        case 1:
                            MainActivity mainActivity2 = this.f3299b;
                            String str3 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{105, -56, -43, 92, 59, -26, -126, 121, 69, -35, -1, 69, 58, -27, -104}, new byte[]{26, -65, -118, 49, 78, -118, -10, 16}), z9);
                            boolean zLoadBoolean4 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{34, -97, -78, -81, 126, -63, 107, -8, 28, -123, -94}, new byte[]{110, -16, -57, -63, 29, -87, 41, -84}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity2);
                                C3105c c3105c3 = LounchB.f1282h;
                                if (c3105c3 != null) {
                                    ((LounchB) c3105c3.f8867c).m1421b(true);
                                }
                            } else if (zLoadBoolean4) {
                                C3105c c3105c4 = LounchB.f1282h;
                                if (c3105c4 != null) {
                                    ((LounchB) c3105c4.f8867c).m1421b(false);
                                }
                            } else {
                                WindowManager windowManager2 = LounchB.f1281g;
                                mainActivity2.stopService(new Intent(mainActivity2, (Class<?>) LounchB.class));
                            }
                            break;
                        case 2:
                            MainActivity mainActivity3 = this.f3299b;
                            String str4 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{22, 10, -105, -66, -75, -9, -93, 15, 4, 34, -65, -89, -66, -9, -109, 4, 11, 18, -82, -88}, new byte[]{101, 125, -56, -50, -38, -112, -52, 107}), z9);
                            if (z9) {
                                WeatherService.m2207e(mainActivity3);
                            } else {
                                boolean z10 = WeatherService.f2877f;
                                mainActivity3.stopService(new Intent(mainActivity3, (Class<?>) WeatherService.class));
                            }
                            break;
                        case 3:
                            MainActivity mainActivity4 = this.f3299b;
                            String str5 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-116, 46, -84, -101, 100, 117, -91, 13, -98, 42, -99, -106, 114, 123}, new byte[]{-1, 89, -13, -7, 1, 15, -54, 125}), z9);
                            FlexboxLayout flexboxLayout = mainActivity4.f1388s0;
                            for (int i24 = 0; i24 < flexboxLayout.getChildCount(); i24++) {
                                flexboxLayout.getChildAt(i24).setEnabled(z9);
                            }
                            if (!z9) {
                                FlexboxLayout flexboxLayout2 = mainActivity4.f1388s0;
                                for (int i25 = 0; i25 < flexboxLayout2.getChildCount(); i25++) {
                                    ((MaterialSwitch) flexboxLayout2.getChildAt(i25)).setChecked(false);
                                }
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{68, 18, -70, 67, 56, 122, -80, 114}, new byte[]{55, 101, -27, 48, 76, 21, -36, 25}), false);
                            }
                            break;
                        case 4:
                            MainActivity mainActivity5 = this.f3299b;
                            String str6 = MainActivity.f1288e1;
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-50, -81, 29, 122, 103, 126, 25, 32, -46, -91, 17, 113, 103, 104, 3}, new byte[]{-121, -21, 66, 57, 38, 44, 70, 115});
                            C3277a c3277aM2745o = C1652b.m2745o();
                            StringBuilder sbM170u = AbstractC0074a.m170u(strM2421h);
                            sbM170u.append(mainActivity5.m1429A());
                            c3277aM2745o.saveBoolean(sbM170u.toString(), z9);
                            break;
                        case 5:
                            MainActivity mainActivity6 = this.f3299b;
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-97, -7, 52, -80, -63, 54, 57, -61, -75, -3, 39, -85, -50, 50, 19, -28, -79, -3, 37}, new byte[]{-48, -113, 81, -62, -83, 87, 64, -112}), z9);
                            if (z9) {
                                OverlayService.m1512c(mainActivity6);
                            } else {
                                OverlayService overlayService = OverlayService.f1499f;
                                mainActivity6.stopService(new Intent(mainActivity6.getApplicationContext(), (Class<?>) OverlayService.class));
                                boolean z11 = ServiceC1080Si.f1588d;
                                Context applicationContext = mainActivity6.getApplicationContext();
                                applicationContext.stopService(new Intent(applicationContext, (Class<?>) ServiceC1080Si.class));
                            }
                            break;
                        case 6:
                            MainActivity mainActivity7 = this.f3299b;
                            String str8 = MainActivity.f1288e1;
                            try {
                                C1652b.m2745o().saveBoolean(MockGpsService.f1423r, z9);
                                break;
                            } catch (Exception unused2) {
                            }
                            if (z9) {
                                MockGpsService.m1457m(mainActivity7);
                            } else {
                                MockGpsService.m1449b(mainActivity7);
                                mainActivity7.stopService(new Intent(mainActivity7, (Class<?>) MockGpsService.class));
                            }
                            break;
                        case 7:
                            MainActivity mainActivity8 = this.f3299b;
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(Notik.f1487m, z9);
                            if (z9) {
                                Notik.m1506g(mainActivity8);
                            } else {
                                mainActivity8.getApplicationContext().stopService(new Intent(mainActivity8.getApplicationContext(), (Class<?>) Notik.class));
                            }
                            break;
                        case 8:
                            MainActivity mainActivity9 = this.f3299b;
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(SpeedBoardService.f1614k, z9);
                            if (z9) {
                                SpeedBoardService.m1542b(mainActivity9.getApplicationContext());
                            } else {
                                Context applicationContext2 = mainActivity9.getApplicationContext();
                                applicationContext2.stopService(new Intent(applicationContext2.getApplicationContext(), (Class<?>) SpeedBoardService.class));
                            }
                            break;
                        case 9:
                            MainActivity mainActivity10 = this.f3299b;
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-41, -101, -118, -81, 87, -106, 41, 34, -9, -72, -86, -98, 87, -109, 37, 53, -10, -114, -65, -110, 123, -84, 46, 60, -28}, new byte[]{-127, -47, -55, -5, 8, -59, 76, 80}), z9);
                            if (z9) {
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-55, -94, Base64.padSymbol, -120, -39, 119, 3, 91, -42, -79, 54, -92, -11, 97, 5, 76, -51, -90}, new byte[]{-65, -46, 83, -41, -86, 18, 113, 45}), true);
                                TService.m1586c(mainActivity10.getApplicationContext());
                                TService.m1584a(Boolean.TRUE);
                            } else {
                                TService.m1584a(Boolean.FALSE);
                            }
                            break;
                        case 10:
                            MainActivity mainActivity11 = this.f3299b;
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{41, -104, -57, -91, 108, 113, -79, 0, 49, -121, -58, -80, 86, 118, -69, 44, 42, -108, -50}, new byte[]{94, -15, -93, -62, 9, 5, -62, 95}), z9);
                            new SystemMessageReceiver().onReceive(mainActivity11.getApplicationContext(), new Intent(AbstractC1387m.m2421h(new byte[]{42, 46, -109, -91, -102, 9, 5, -100, 34, 46, -125, -78, -101, 20, 79, -45, 40, 52, -98, -72, -101, 78, 35, -3, 4, 20, -88, -108, -70, 45, 49, -2, 14, 20, -78, -109}, new byte[]{75, 64, -9, -41, -11, 96, 97, -78})));
                            break;
                        case 11:
                            MainActivity mainActivity12 = this.f3299b;
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{114, 109, -96, 86, 11, 40, ByteCompanionObject.MAX_VALUE, -101, 71, 82, -87, 115, 20, 37, 123, -101, 64, 94, -97, 104, 12, 43, 116, -101, 100, 104, -94, 101, 13, 59, 71, -79, 93}, new byte[]{51, 1, -52, 1, 98, 76, 24, -2}), z9);
                            EnumC1362h enumC1362h = EnumC1362h.f3254i;
                            AllWidgetServices allWidgetServices = MainActivity.f1292i1;
                            if (allWidgetServices != null) {
                                allWidgetServices.m1388e(enumC1362h, z9);
                            }
                            if (z9 && MainActivity.f1292i1 == null) {
                                AllWidgetServices.m1384c(mainActivity12);
                                break;
                            }
                            break;
                        case 12:
                            MainActivity mainActivity13 = this.f3299b;
                            String str14 = MainActivity.f1288e1;
                            String str15 = AbstractC3134a1.f8964a;
                            mainActivity13.getPackageManager().setComponentEnabledSetting(new ComponentName(mainActivity13.getPackageName(), AbstractC3134a1.f8964a), z9 ? 1 : 2, 1);
                            break;
                        case 13:
                            MainActivity mainActivity14 = this.f3299b;
                            String str16 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{97, -20, 2, 79, 40, 84, -127, -32, 90, -28, 6, 105, 54, 113, -96, -59, 96, -34, 49, 66, 44, 114, -69, -42, 107, -40}, new byte[]{44, -115, 114, 16, 105, 55, -11, -119}), z9);
                            C1396n3.m2439a(mainActivity14);
                            break;
                        default:
                            MainActivity mainActivity15 = this.f3299b;
                            String str17 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{89, -93, 75, 63, 70, 93, -107, -66, 98, -85, 79, 25, 88, 115, -96, -113, 75, -110, 126, 50, 65, 113, -77, -102, 85, -116, 120, 37}, new byte[]{20, -62, 59, 96, 7, 62, -31, -41}), z9);
                            C1396n3.m2439a(mainActivity15);
                            break;
                    }
                }
            });
            this.f1306F = (HeatManSetView) findViewById(R.id.DriverVentSeat);
            this.f1302D = (HeatManSetView) findViewById(R.id.DriverHeatSeat);
            this.f1304E = (HeatManSetView) findViewById(R.id.ShturmanHeatSeat);
            this.f1308G = (HeatManSetView) findViewById(R.id.ShturmanVentSeat);
            this.f1310H = (HeatManSetView) findViewById(R.id.HeatWheel);
            this.f1312I = (HeatManSetView) findViewById(R.id.HeatWindshield);
            this.f1314J = (HeatManSetView) findViewById(R.id.HeatRearwomdpw);
            this.f1316K = (HeatManSetView) findViewById(R.id.TimeDalayHeat);
            ((Button) findViewById(R.id.swipe_setting_button)).setOnClickListener(new ViewOnClickListenerC1408q0(this, i19));
            MaterialSwitch materialSwitch16 = (MaterialSwitch) findViewById(R.id.VJCT_Service_View_visible);
            this.f1300C = materialSwitch16;
            int i24 = 25;
            AbstractC1178q.m2088v(new byte[]{-17, -27, 45, 34, 3, 39, 67, -21, -49, -58, 13, 19, 3, 34, 79, -4, -50, -16, 24, 31, 47, 29, 68, -11, -36}, new byte[]{-71, -81, 110, 118, 92, 116, 38, -103}, C1652b.m2745o(), false, materialSwitch16);
            this.f1300C.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: e0.l0

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ MainActivity f3299b;

                {
                    this.f3299b = this;
                }

                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                    RelativeLayout relativeLayout;
                    RelativeLayout relativeLayout2;
                    switch (i10) {
                        case 0:
                            MainActivity mainActivity = this.f3299b;
                            String str2 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-60, -53, 107, 79, -77, 24, -89, 15, -6, -47, 123}, new byte[]{-120, -92, 30, 33, -48, 112, -27, 91}), z9);
                            boolean zLoadBoolean3 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-19, -62, -4, -76, -87, -9, 82, 0, -63, -41, -42, -83, -88, -12, 72}, new byte[]{-98, -75, -93, -39, -36, -101, 38, 105}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity);
                                C3105c c3105c = LounchB.f1282h;
                                if (c3105c != null && (relativeLayout2 = ((LounchB) c3105c.f8867c).f1283b) != null) {
                                    relativeLayout2.setVisibility(0);
                                    break;
                                }
                            } else if (!zLoadBoolean3) {
                                WindowManager windowManager = LounchB.f1281g;
                                mainActivity.stopService(new Intent(mainActivity, (Class<?>) LounchB.class));
                                break;
                            } else {
                                C3105c c3105c2 = LounchB.f1282h;
                                if (c3105c2 != null && (relativeLayout = ((LounchB) c3105c2.f8867c).f1283b) != null) {
                                    relativeLayout.setVisibility(8);
                                    break;
                                }
                            }
                            break;
                        case 1:
                            MainActivity mainActivity2 = this.f3299b;
                            String str3 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{105, -56, -43, 92, 59, -26, -126, 121, 69, -35, -1, 69, 58, -27, -104}, new byte[]{26, -65, -118, 49, 78, -118, -10, 16}), z9);
                            boolean zLoadBoolean4 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{34, -97, -78, -81, 126, -63, 107, -8, 28, -123, -94}, new byte[]{110, -16, -57, -63, 29, -87, 41, -84}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity2);
                                C3105c c3105c3 = LounchB.f1282h;
                                if (c3105c3 != null) {
                                    ((LounchB) c3105c3.f8867c).m1421b(true);
                                }
                            } else if (zLoadBoolean4) {
                                C3105c c3105c4 = LounchB.f1282h;
                                if (c3105c4 != null) {
                                    ((LounchB) c3105c4.f8867c).m1421b(false);
                                }
                            } else {
                                WindowManager windowManager2 = LounchB.f1281g;
                                mainActivity2.stopService(new Intent(mainActivity2, (Class<?>) LounchB.class));
                            }
                            break;
                        case 2:
                            MainActivity mainActivity3 = this.f3299b;
                            String str4 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{22, 10, -105, -66, -75, -9, -93, 15, 4, 34, -65, -89, -66, -9, -109, 4, 11, 18, -82, -88}, new byte[]{101, 125, -56, -50, -38, -112, -52, 107}), z9);
                            if (z9) {
                                WeatherService.m2207e(mainActivity3);
                            } else {
                                boolean z10 = WeatherService.f2877f;
                                mainActivity3.stopService(new Intent(mainActivity3, (Class<?>) WeatherService.class));
                            }
                            break;
                        case 3:
                            MainActivity mainActivity4 = this.f3299b;
                            String str5 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-116, 46, -84, -101, 100, 117, -91, 13, -98, 42, -99, -106, 114, 123}, new byte[]{-1, 89, -13, -7, 1, 15, -54, 125}), z9);
                            FlexboxLayout flexboxLayout = mainActivity4.f1388s0;
                            for (int i25 = 0; i25 < flexboxLayout.getChildCount(); i25++) {
                                flexboxLayout.getChildAt(i25).setEnabled(z9);
                            }
                            if (!z9) {
                                FlexboxLayout flexboxLayout2 = mainActivity4.f1388s0;
                                for (int i26 = 0; i26 < flexboxLayout2.getChildCount(); i26++) {
                                    ((MaterialSwitch) flexboxLayout2.getChildAt(i26)).setChecked(false);
                                }
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{68, 18, -70, 67, 56, 122, -80, 114}, new byte[]{55, 101, -27, 48, 76, 21, -36, 25}), false);
                            }
                            break;
                        case 4:
                            MainActivity mainActivity5 = this.f3299b;
                            String str6 = MainActivity.f1288e1;
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-50, -81, 29, 122, 103, 126, 25, 32, -46, -91, 17, 113, 103, 104, 3}, new byte[]{-121, -21, 66, 57, 38, 44, 70, 115});
                            C3277a c3277aM2745o = C1652b.m2745o();
                            StringBuilder sbM170u = AbstractC0074a.m170u(strM2421h);
                            sbM170u.append(mainActivity5.m1429A());
                            c3277aM2745o.saveBoolean(sbM170u.toString(), z9);
                            break;
                        case 5:
                            MainActivity mainActivity6 = this.f3299b;
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-97, -7, 52, -80, -63, 54, 57, -61, -75, -3, 39, -85, -50, 50, 19, -28, -79, -3, 37}, new byte[]{-48, -113, 81, -62, -83, 87, 64, -112}), z9);
                            if (z9) {
                                OverlayService.m1512c(mainActivity6);
                            } else {
                                OverlayService overlayService = OverlayService.f1499f;
                                mainActivity6.stopService(new Intent(mainActivity6.getApplicationContext(), (Class<?>) OverlayService.class));
                                boolean z11 = ServiceC1080Si.f1588d;
                                Context applicationContext = mainActivity6.getApplicationContext();
                                applicationContext.stopService(new Intent(applicationContext, (Class<?>) ServiceC1080Si.class));
                            }
                            break;
                        case 6:
                            MainActivity mainActivity7 = this.f3299b;
                            String str8 = MainActivity.f1288e1;
                            try {
                                C1652b.m2745o().saveBoolean(MockGpsService.f1423r, z9);
                                break;
                            } catch (Exception unused2) {
                            }
                            if (z9) {
                                MockGpsService.m1457m(mainActivity7);
                            } else {
                                MockGpsService.m1449b(mainActivity7);
                                mainActivity7.stopService(new Intent(mainActivity7, (Class<?>) MockGpsService.class));
                            }
                            break;
                        case 7:
                            MainActivity mainActivity8 = this.f3299b;
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(Notik.f1487m, z9);
                            if (z9) {
                                Notik.m1506g(mainActivity8);
                            } else {
                                mainActivity8.getApplicationContext().stopService(new Intent(mainActivity8.getApplicationContext(), (Class<?>) Notik.class));
                            }
                            break;
                        case 8:
                            MainActivity mainActivity9 = this.f3299b;
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(SpeedBoardService.f1614k, z9);
                            if (z9) {
                                SpeedBoardService.m1542b(mainActivity9.getApplicationContext());
                            } else {
                                Context applicationContext2 = mainActivity9.getApplicationContext();
                                applicationContext2.stopService(new Intent(applicationContext2.getApplicationContext(), (Class<?>) SpeedBoardService.class));
                            }
                            break;
                        case 9:
                            MainActivity mainActivity10 = this.f3299b;
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-41, -101, -118, -81, 87, -106, 41, 34, -9, -72, -86, -98, 87, -109, 37, 53, -10, -114, -65, -110, 123, -84, 46, 60, -28}, new byte[]{-127, -47, -55, -5, 8, -59, 76, 80}), z9);
                            if (z9) {
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-55, -94, Base64.padSymbol, -120, -39, 119, 3, 91, -42, -79, 54, -92, -11, 97, 5, 76, -51, -90}, new byte[]{-65, -46, 83, -41, -86, 18, 113, 45}), true);
                                TService.m1586c(mainActivity10.getApplicationContext());
                                TService.m1584a(Boolean.TRUE);
                            } else {
                                TService.m1584a(Boolean.FALSE);
                            }
                            break;
                        case 10:
                            MainActivity mainActivity11 = this.f3299b;
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{41, -104, -57, -91, 108, 113, -79, 0, 49, -121, -58, -80, 86, 118, -69, 44, 42, -108, -50}, new byte[]{94, -15, -93, -62, 9, 5, -62, 95}), z9);
                            new SystemMessageReceiver().onReceive(mainActivity11.getApplicationContext(), new Intent(AbstractC1387m.m2421h(new byte[]{42, 46, -109, -91, -102, 9, 5, -100, 34, 46, -125, -78, -101, 20, 79, -45, 40, 52, -98, -72, -101, 78, 35, -3, 4, 20, -88, -108, -70, 45, 49, -2, 14, 20, -78, -109}, new byte[]{75, 64, -9, -41, -11, 96, 97, -78})));
                            break;
                        case 11:
                            MainActivity mainActivity12 = this.f3299b;
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{114, 109, -96, 86, 11, 40, ByteCompanionObject.MAX_VALUE, -101, 71, 82, -87, 115, 20, 37, 123, -101, 64, 94, -97, 104, 12, 43, 116, -101, 100, 104, -94, 101, 13, 59, 71, -79, 93}, new byte[]{51, 1, -52, 1, 98, 76, 24, -2}), z9);
                            EnumC1362h enumC1362h = EnumC1362h.f3254i;
                            AllWidgetServices allWidgetServices = MainActivity.f1292i1;
                            if (allWidgetServices != null) {
                                allWidgetServices.m1388e(enumC1362h, z9);
                            }
                            if (z9 && MainActivity.f1292i1 == null) {
                                AllWidgetServices.m1384c(mainActivity12);
                                break;
                            }
                            break;
                        case 12:
                            MainActivity mainActivity13 = this.f3299b;
                            String str14 = MainActivity.f1288e1;
                            String str15 = AbstractC3134a1.f8964a;
                            mainActivity13.getPackageManager().setComponentEnabledSetting(new ComponentName(mainActivity13.getPackageName(), AbstractC3134a1.f8964a), z9 ? 1 : 2, 1);
                            break;
                        case 13:
                            MainActivity mainActivity14 = this.f3299b;
                            String str16 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{97, -20, 2, 79, 40, 84, -127, -32, 90, -28, 6, 105, 54, 113, -96, -59, 96, -34, 49, 66, 44, 114, -69, -42, 107, -40}, new byte[]{44, -115, 114, 16, 105, 55, -11, -119}), z9);
                            C1396n3.m2439a(mainActivity14);
                            break;
                        default:
                            MainActivity mainActivity15 = this.f3299b;
                            String str17 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{89, -93, 75, 63, 70, 93, -107, -66, 98, -85, 79, 25, 88, 115, -96, -113, 75, -110, 126, 50, 65, 113, -77, -102, 85, -116, 120, 37}, new byte[]{20, -62, 59, 96, 7, 62, -31, -41}), z9);
                            C1396n3.m2439a(mainActivity15);
                            break;
                    }
                }
            });
            ((Button) findViewById(R.id.VJCT_Service_settings)).setOnClickListener(new ViewOnClickListenerC1408q0(this, 14));
            MaterialSwitch materialSwitch17 = (MaterialSwitch) findViewById(R.id.widgets_over_system);
            materialSwitch17.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-42, -78, -82, -112, 46, -17, -71, 25, -50, -83, -81, -123, 20, -24, -77, 53, -43, -66, -89}, new byte[]{-95, -37, -54, -9, 75, -101, -54, 70}), false));
            materialSwitch17.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: e0.l0

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ MainActivity f3299b;

                {
                    this.f3299b = this;
                }

                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                    RelativeLayout relativeLayout;
                    RelativeLayout relativeLayout2;
                    switch (i13) {
                        case 0:
                            MainActivity mainActivity = this.f3299b;
                            String str2 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-60, -53, 107, 79, -77, 24, -89, 15, -6, -47, 123}, new byte[]{-120, -92, 30, 33, -48, 112, -27, 91}), z9);
                            boolean zLoadBoolean3 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-19, -62, -4, -76, -87, -9, 82, 0, -63, -41, -42, -83, -88, -12, 72}, new byte[]{-98, -75, -93, -39, -36, -101, 38, 105}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity);
                                C3105c c3105c = LounchB.f1282h;
                                if (c3105c != null && (relativeLayout2 = ((LounchB) c3105c.f8867c).f1283b) != null) {
                                    relativeLayout2.setVisibility(0);
                                    break;
                                }
                            } else if (!zLoadBoolean3) {
                                WindowManager windowManager = LounchB.f1281g;
                                mainActivity.stopService(new Intent(mainActivity, (Class<?>) LounchB.class));
                                break;
                            } else {
                                C3105c c3105c2 = LounchB.f1282h;
                                if (c3105c2 != null && (relativeLayout = ((LounchB) c3105c2.f8867c).f1283b) != null) {
                                    relativeLayout.setVisibility(8);
                                    break;
                                }
                            }
                            break;
                        case 1:
                            MainActivity mainActivity2 = this.f3299b;
                            String str3 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{105, -56, -43, 92, 59, -26, -126, 121, 69, -35, -1, 69, 58, -27, -104}, new byte[]{26, -65, -118, 49, 78, -118, -10, 16}), z9);
                            boolean zLoadBoolean4 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{34, -97, -78, -81, 126, -63, 107, -8, 28, -123, -94}, new byte[]{110, -16, -57, -63, 29, -87, 41, -84}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity2);
                                C3105c c3105c3 = LounchB.f1282h;
                                if (c3105c3 != null) {
                                    ((LounchB) c3105c3.f8867c).m1421b(true);
                                }
                            } else if (zLoadBoolean4) {
                                C3105c c3105c4 = LounchB.f1282h;
                                if (c3105c4 != null) {
                                    ((LounchB) c3105c4.f8867c).m1421b(false);
                                }
                            } else {
                                WindowManager windowManager2 = LounchB.f1281g;
                                mainActivity2.stopService(new Intent(mainActivity2, (Class<?>) LounchB.class));
                            }
                            break;
                        case 2:
                            MainActivity mainActivity3 = this.f3299b;
                            String str4 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{22, 10, -105, -66, -75, -9, -93, 15, 4, 34, -65, -89, -66, -9, -109, 4, 11, 18, -82, -88}, new byte[]{101, 125, -56, -50, -38, -112, -52, 107}), z9);
                            if (z9) {
                                WeatherService.m2207e(mainActivity3);
                            } else {
                                boolean z10 = WeatherService.f2877f;
                                mainActivity3.stopService(new Intent(mainActivity3, (Class<?>) WeatherService.class));
                            }
                            break;
                        case 3:
                            MainActivity mainActivity4 = this.f3299b;
                            String str5 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-116, 46, -84, -101, 100, 117, -91, 13, -98, 42, -99, -106, 114, 123}, new byte[]{-1, 89, -13, -7, 1, 15, -54, 125}), z9);
                            FlexboxLayout flexboxLayout = mainActivity4.f1388s0;
                            for (int i25 = 0; i25 < flexboxLayout.getChildCount(); i25++) {
                                flexboxLayout.getChildAt(i25).setEnabled(z9);
                            }
                            if (!z9) {
                                FlexboxLayout flexboxLayout2 = mainActivity4.f1388s0;
                                for (int i26 = 0; i26 < flexboxLayout2.getChildCount(); i26++) {
                                    ((MaterialSwitch) flexboxLayout2.getChildAt(i26)).setChecked(false);
                                }
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{68, 18, -70, 67, 56, 122, -80, 114}, new byte[]{55, 101, -27, 48, 76, 21, -36, 25}), false);
                            }
                            break;
                        case 4:
                            MainActivity mainActivity5 = this.f3299b;
                            String str6 = MainActivity.f1288e1;
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-50, -81, 29, 122, 103, 126, 25, 32, -46, -91, 17, 113, 103, 104, 3}, new byte[]{-121, -21, 66, 57, 38, 44, 70, 115});
                            C3277a c3277aM2745o = C1652b.m2745o();
                            StringBuilder sbM170u = AbstractC0074a.m170u(strM2421h);
                            sbM170u.append(mainActivity5.m1429A());
                            c3277aM2745o.saveBoolean(sbM170u.toString(), z9);
                            break;
                        case 5:
                            MainActivity mainActivity6 = this.f3299b;
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-97, -7, 52, -80, -63, 54, 57, -61, -75, -3, 39, -85, -50, 50, 19, -28, -79, -3, 37}, new byte[]{-48, -113, 81, -62, -83, 87, 64, -112}), z9);
                            if (z9) {
                                OverlayService.m1512c(mainActivity6);
                            } else {
                                OverlayService overlayService = OverlayService.f1499f;
                                mainActivity6.stopService(new Intent(mainActivity6.getApplicationContext(), (Class<?>) OverlayService.class));
                                boolean z11 = ServiceC1080Si.f1588d;
                                Context applicationContext = mainActivity6.getApplicationContext();
                                applicationContext.stopService(new Intent(applicationContext, (Class<?>) ServiceC1080Si.class));
                            }
                            break;
                        case 6:
                            MainActivity mainActivity7 = this.f3299b;
                            String str8 = MainActivity.f1288e1;
                            try {
                                C1652b.m2745o().saveBoolean(MockGpsService.f1423r, z9);
                                break;
                            } catch (Exception unused2) {
                            }
                            if (z9) {
                                MockGpsService.m1457m(mainActivity7);
                            } else {
                                MockGpsService.m1449b(mainActivity7);
                                mainActivity7.stopService(new Intent(mainActivity7, (Class<?>) MockGpsService.class));
                            }
                            break;
                        case 7:
                            MainActivity mainActivity8 = this.f3299b;
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(Notik.f1487m, z9);
                            if (z9) {
                                Notik.m1506g(mainActivity8);
                            } else {
                                mainActivity8.getApplicationContext().stopService(new Intent(mainActivity8.getApplicationContext(), (Class<?>) Notik.class));
                            }
                            break;
                        case 8:
                            MainActivity mainActivity9 = this.f3299b;
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(SpeedBoardService.f1614k, z9);
                            if (z9) {
                                SpeedBoardService.m1542b(mainActivity9.getApplicationContext());
                            } else {
                                Context applicationContext2 = mainActivity9.getApplicationContext();
                                applicationContext2.stopService(new Intent(applicationContext2.getApplicationContext(), (Class<?>) SpeedBoardService.class));
                            }
                            break;
                        case 9:
                            MainActivity mainActivity10 = this.f3299b;
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-41, -101, -118, -81, 87, -106, 41, 34, -9, -72, -86, -98, 87, -109, 37, 53, -10, -114, -65, -110, 123, -84, 46, 60, -28}, new byte[]{-127, -47, -55, -5, 8, -59, 76, 80}), z9);
                            if (z9) {
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-55, -94, Base64.padSymbol, -120, -39, 119, 3, 91, -42, -79, 54, -92, -11, 97, 5, 76, -51, -90}, new byte[]{-65, -46, 83, -41, -86, 18, 113, 45}), true);
                                TService.m1586c(mainActivity10.getApplicationContext());
                                TService.m1584a(Boolean.TRUE);
                            } else {
                                TService.m1584a(Boolean.FALSE);
                            }
                            break;
                        case 10:
                            MainActivity mainActivity11 = this.f3299b;
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{41, -104, -57, -91, 108, 113, -79, 0, 49, -121, -58, -80, 86, 118, -69, 44, 42, -108, -50}, new byte[]{94, -15, -93, -62, 9, 5, -62, 95}), z9);
                            new SystemMessageReceiver().onReceive(mainActivity11.getApplicationContext(), new Intent(AbstractC1387m.m2421h(new byte[]{42, 46, -109, -91, -102, 9, 5, -100, 34, 46, -125, -78, -101, 20, 79, -45, 40, 52, -98, -72, -101, 78, 35, -3, 4, 20, -88, -108, -70, 45, 49, -2, 14, 20, -78, -109}, new byte[]{75, 64, -9, -41, -11, 96, 97, -78})));
                            break;
                        case 11:
                            MainActivity mainActivity12 = this.f3299b;
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{114, 109, -96, 86, 11, 40, ByteCompanionObject.MAX_VALUE, -101, 71, 82, -87, 115, 20, 37, 123, -101, 64, 94, -97, 104, 12, 43, 116, -101, 100, 104, -94, 101, 13, 59, 71, -79, 93}, new byte[]{51, 1, -52, 1, 98, 76, 24, -2}), z9);
                            EnumC1362h enumC1362h = EnumC1362h.f3254i;
                            AllWidgetServices allWidgetServices = MainActivity.f1292i1;
                            if (allWidgetServices != null) {
                                allWidgetServices.m1388e(enumC1362h, z9);
                            }
                            if (z9 && MainActivity.f1292i1 == null) {
                                AllWidgetServices.m1384c(mainActivity12);
                                break;
                            }
                            break;
                        case 12:
                            MainActivity mainActivity13 = this.f3299b;
                            String str14 = MainActivity.f1288e1;
                            String str15 = AbstractC3134a1.f8964a;
                            mainActivity13.getPackageManager().setComponentEnabledSetting(new ComponentName(mainActivity13.getPackageName(), AbstractC3134a1.f8964a), z9 ? 1 : 2, 1);
                            break;
                        case 13:
                            MainActivity mainActivity14 = this.f3299b;
                            String str16 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{97, -20, 2, 79, 40, 84, -127, -32, 90, -28, 6, 105, 54, 113, -96, -59, 96, -34, 49, 66, 44, 114, -69, -42, 107, -40}, new byte[]{44, -115, 114, 16, 105, 55, -11, -119}), z9);
                            C1396n3.m2439a(mainActivity14);
                            break;
                        default:
                            MainActivity mainActivity15 = this.f3299b;
                            String str17 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{89, -93, 75, 63, 70, 93, -107, -66, 98, -85, 79, 25, 88, 115, -96, -113, 75, -110, 126, 50, 65, 113, -77, -102, 85, -116, 120, 37}, new byte[]{20, -62, 59, 96, 7, 62, -31, -41}), z9);
                            C1396n3.m2439a(mainActivity15);
                            break;
                    }
                }
            });
            MaterialSwitch materialSwitch18 = (MaterialSwitch) findViewById(R.id.AllWidgetServices_dClock);
            materialSwitch18.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{121, 42, -120, 58, -59, -101, -81, -15, 76, 21, -127, 31, -38, -106, -85, -15, 75, 25, ByteCompanionObject.MIN_VALUE, 46, -64, -112, -85, -1, 103, 9, -118}, new byte[]{56, 70, -28, 109, -84, -1, -56, -108}), false));
            materialSwitch18.setOnCheckedChangeListener(new C1378k0(i17));
            MaterialSwitch materialSwitch19 = (MaterialSwitch) findViewById(R.id.AllWidgetServices_TemperaturaMashView);
            materialSwitch19.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-71, -65, 80, -2, -50, -119, 38, -113, -116, ByteCompanionObject.MIN_VALUE, 89, -37, -47, -124, 34, -113, -117, -116, 104, -52, -54, -99, 36, -104, -103, -89, 73, -37, -58, -96, 32, -103, -112, -123, 85, -52, -48, -78, 14, -124}, new byte[]{-8, -45, 60, -87, -89, -19, 65, -22}), false));
            materialSwitch19.setOnCheckedChangeListener(new C1378k0(i19));
            MaterialSwitch materialSwitch20 = (MaterialSwitch) findViewById(R.id.AllWidgetServices_FuelRemainingView);
            materialSwitch20.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{122, 18, -72, -98, 21, -122, -102, 28, 79, 45, -79, -69, 10, -117, -98, 28, 72, 33, -110, -68, 25, -114, -81, 28, 86, 31, -67, -89, 21, -116, -102, 47, 82, 27, -93, -106, 51, -116}, new byte[]{59, 126, -44, -55, 124, -30, -3, 121}), false));
            materialSwitch20.setOnCheckedChangeListener(new C1378k0(14));
            int i25 = 15;
            findViewById(R.id.fuel_widget_settings).setOnClickListener(new ViewOnClickListenerC1408q0(this, i25));
            MaterialSwitch materialSwitch21 = (MaterialSwitch) findViewById(R.id.AllWidgetServices_StorageFreeView);
            materialSwitch21.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{18, 37, 101, 107, 45, 44, -20, -91, 39, 26, 108, 78, 50, 33, -24, -91, 32, 22, 90, 72, 43, 58, -22, -89, 54, 15, 123, 89, 33, 30, -30, -91, 36, 22, 70, 82}, new byte[]{83, 73, 9, 60, 68, 72, -117, -64}), false));
            materialSwitch21.setOnCheckedChangeListener(new C1378k0(i25));
            MaterialSwitch materialSwitch22 = (MaterialSwitch) findViewById(R.id.AllWidgetServices_SingleWindow);
            materialSwitch22.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{73, 2, 65, -44, 14, 113, 67, 19, 124, Base64.padSymbol, 72, -15, 17, 124, 71, 19, 123, 49, 126, -22, 9, 114, 72, 19, 95, 7, 67, -25, 8, 98, 123, 57, 102}, new byte[]{8, 110, 45, -125, 103, 21, 36, 118}), false));
            final int i26 = 11;
            materialSwitch22.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: e0.l0

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ MainActivity f3299b;

                {
                    this.f3299b = this;
                }

                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                    RelativeLayout relativeLayout;
                    RelativeLayout relativeLayout2;
                    switch (i26) {
                        case 0:
                            MainActivity mainActivity = this.f3299b;
                            String str2 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-60, -53, 107, 79, -77, 24, -89, 15, -6, -47, 123}, new byte[]{-120, -92, 30, 33, -48, 112, -27, 91}), z9);
                            boolean zLoadBoolean3 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-19, -62, -4, -76, -87, -9, 82, 0, -63, -41, -42, -83, -88, -12, 72}, new byte[]{-98, -75, -93, -39, -36, -101, 38, 105}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity);
                                C3105c c3105c = LounchB.f1282h;
                                if (c3105c != null && (relativeLayout2 = ((LounchB) c3105c.f8867c).f1283b) != null) {
                                    relativeLayout2.setVisibility(0);
                                    break;
                                }
                            } else if (!zLoadBoolean3) {
                                WindowManager windowManager = LounchB.f1281g;
                                mainActivity.stopService(new Intent(mainActivity, (Class<?>) LounchB.class));
                                break;
                            } else {
                                C3105c c3105c2 = LounchB.f1282h;
                                if (c3105c2 != null && (relativeLayout = ((LounchB) c3105c2.f8867c).f1283b) != null) {
                                    relativeLayout.setVisibility(8);
                                    break;
                                }
                            }
                            break;
                        case 1:
                            MainActivity mainActivity2 = this.f3299b;
                            String str3 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{105, -56, -43, 92, 59, -26, -126, 121, 69, -35, -1, 69, 58, -27, -104}, new byte[]{26, -65, -118, 49, 78, -118, -10, 16}), z9);
                            boolean zLoadBoolean4 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{34, -97, -78, -81, 126, -63, 107, -8, 28, -123, -94}, new byte[]{110, -16, -57, -63, 29, -87, 41, -84}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity2);
                                C3105c c3105c3 = LounchB.f1282h;
                                if (c3105c3 != null) {
                                    ((LounchB) c3105c3.f8867c).m1421b(true);
                                }
                            } else if (zLoadBoolean4) {
                                C3105c c3105c4 = LounchB.f1282h;
                                if (c3105c4 != null) {
                                    ((LounchB) c3105c4.f8867c).m1421b(false);
                                }
                            } else {
                                WindowManager windowManager2 = LounchB.f1281g;
                                mainActivity2.stopService(new Intent(mainActivity2, (Class<?>) LounchB.class));
                            }
                            break;
                        case 2:
                            MainActivity mainActivity3 = this.f3299b;
                            String str4 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{22, 10, -105, -66, -75, -9, -93, 15, 4, 34, -65, -89, -66, -9, -109, 4, 11, 18, -82, -88}, new byte[]{101, 125, -56, -50, -38, -112, -52, 107}), z9);
                            if (z9) {
                                WeatherService.m2207e(mainActivity3);
                            } else {
                                boolean z10 = WeatherService.f2877f;
                                mainActivity3.stopService(new Intent(mainActivity3, (Class<?>) WeatherService.class));
                            }
                            break;
                        case 3:
                            MainActivity mainActivity4 = this.f3299b;
                            String str5 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-116, 46, -84, -101, 100, 117, -91, 13, -98, 42, -99, -106, 114, 123}, new byte[]{-1, 89, -13, -7, 1, 15, -54, 125}), z9);
                            FlexboxLayout flexboxLayout = mainActivity4.f1388s0;
                            for (int i27 = 0; i27 < flexboxLayout.getChildCount(); i27++) {
                                flexboxLayout.getChildAt(i27).setEnabled(z9);
                            }
                            if (!z9) {
                                FlexboxLayout flexboxLayout2 = mainActivity4.f1388s0;
                                for (int i28 = 0; i28 < flexboxLayout2.getChildCount(); i28++) {
                                    ((MaterialSwitch) flexboxLayout2.getChildAt(i28)).setChecked(false);
                                }
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{68, 18, -70, 67, 56, 122, -80, 114}, new byte[]{55, 101, -27, 48, 76, 21, -36, 25}), false);
                            }
                            break;
                        case 4:
                            MainActivity mainActivity5 = this.f3299b;
                            String str6 = MainActivity.f1288e1;
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-50, -81, 29, 122, 103, 126, 25, 32, -46, -91, 17, 113, 103, 104, 3}, new byte[]{-121, -21, 66, 57, 38, 44, 70, 115});
                            C3277a c3277aM2745o = C1652b.m2745o();
                            StringBuilder sbM170u = AbstractC0074a.m170u(strM2421h);
                            sbM170u.append(mainActivity5.m1429A());
                            c3277aM2745o.saveBoolean(sbM170u.toString(), z9);
                            break;
                        case 5:
                            MainActivity mainActivity6 = this.f3299b;
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-97, -7, 52, -80, -63, 54, 57, -61, -75, -3, 39, -85, -50, 50, 19, -28, -79, -3, 37}, new byte[]{-48, -113, 81, -62, -83, 87, 64, -112}), z9);
                            if (z9) {
                                OverlayService.m1512c(mainActivity6);
                            } else {
                                OverlayService overlayService = OverlayService.f1499f;
                                mainActivity6.stopService(new Intent(mainActivity6.getApplicationContext(), (Class<?>) OverlayService.class));
                                boolean z11 = ServiceC1080Si.f1588d;
                                Context applicationContext = mainActivity6.getApplicationContext();
                                applicationContext.stopService(new Intent(applicationContext, (Class<?>) ServiceC1080Si.class));
                            }
                            break;
                        case 6:
                            MainActivity mainActivity7 = this.f3299b;
                            String str8 = MainActivity.f1288e1;
                            try {
                                C1652b.m2745o().saveBoolean(MockGpsService.f1423r, z9);
                                break;
                            } catch (Exception unused2) {
                            }
                            if (z9) {
                                MockGpsService.m1457m(mainActivity7);
                            } else {
                                MockGpsService.m1449b(mainActivity7);
                                mainActivity7.stopService(new Intent(mainActivity7, (Class<?>) MockGpsService.class));
                            }
                            break;
                        case 7:
                            MainActivity mainActivity8 = this.f3299b;
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(Notik.f1487m, z9);
                            if (z9) {
                                Notik.m1506g(mainActivity8);
                            } else {
                                mainActivity8.getApplicationContext().stopService(new Intent(mainActivity8.getApplicationContext(), (Class<?>) Notik.class));
                            }
                            break;
                        case 8:
                            MainActivity mainActivity9 = this.f3299b;
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(SpeedBoardService.f1614k, z9);
                            if (z9) {
                                SpeedBoardService.m1542b(mainActivity9.getApplicationContext());
                            } else {
                                Context applicationContext2 = mainActivity9.getApplicationContext();
                                applicationContext2.stopService(new Intent(applicationContext2.getApplicationContext(), (Class<?>) SpeedBoardService.class));
                            }
                            break;
                        case 9:
                            MainActivity mainActivity10 = this.f3299b;
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-41, -101, -118, -81, 87, -106, 41, 34, -9, -72, -86, -98, 87, -109, 37, 53, -10, -114, -65, -110, 123, -84, 46, 60, -28}, new byte[]{-127, -47, -55, -5, 8, -59, 76, 80}), z9);
                            if (z9) {
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-55, -94, Base64.padSymbol, -120, -39, 119, 3, 91, -42, -79, 54, -92, -11, 97, 5, 76, -51, -90}, new byte[]{-65, -46, 83, -41, -86, 18, 113, 45}), true);
                                TService.m1586c(mainActivity10.getApplicationContext());
                                TService.m1584a(Boolean.TRUE);
                            } else {
                                TService.m1584a(Boolean.FALSE);
                            }
                            break;
                        case 10:
                            MainActivity mainActivity11 = this.f3299b;
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{41, -104, -57, -91, 108, 113, -79, 0, 49, -121, -58, -80, 86, 118, -69, 44, 42, -108, -50}, new byte[]{94, -15, -93, -62, 9, 5, -62, 95}), z9);
                            new SystemMessageReceiver().onReceive(mainActivity11.getApplicationContext(), new Intent(AbstractC1387m.m2421h(new byte[]{42, 46, -109, -91, -102, 9, 5, -100, 34, 46, -125, -78, -101, 20, 79, -45, 40, 52, -98, -72, -101, 78, 35, -3, 4, 20, -88, -108, -70, 45, 49, -2, 14, 20, -78, -109}, new byte[]{75, 64, -9, -41, -11, 96, 97, -78})));
                            break;
                        case 11:
                            MainActivity mainActivity12 = this.f3299b;
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{114, 109, -96, 86, 11, 40, ByteCompanionObject.MAX_VALUE, -101, 71, 82, -87, 115, 20, 37, 123, -101, 64, 94, -97, 104, 12, 43, 116, -101, 100, 104, -94, 101, 13, 59, 71, -79, 93}, new byte[]{51, 1, -52, 1, 98, 76, 24, -2}), z9);
                            EnumC1362h enumC1362h = EnumC1362h.f3254i;
                            AllWidgetServices allWidgetServices = MainActivity.f1292i1;
                            if (allWidgetServices != null) {
                                allWidgetServices.m1388e(enumC1362h, z9);
                            }
                            if (z9 && MainActivity.f1292i1 == null) {
                                AllWidgetServices.m1384c(mainActivity12);
                                break;
                            }
                            break;
                        case 12:
                            MainActivity mainActivity13 = this.f3299b;
                            String str14 = MainActivity.f1288e1;
                            String str15 = AbstractC3134a1.f8964a;
                            mainActivity13.getPackageManager().setComponentEnabledSetting(new ComponentName(mainActivity13.getPackageName(), AbstractC3134a1.f8964a), z9 ? 1 : 2, 1);
                            break;
                        case 13:
                            MainActivity mainActivity14 = this.f3299b;
                            String str16 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{97, -20, 2, 79, 40, 84, -127, -32, 90, -28, 6, 105, 54, 113, -96, -59, 96, -34, 49, 66, 44, 114, -69, -42, 107, -40}, new byte[]{44, -115, 114, 16, 105, 55, -11, -119}), z9);
                            C1396n3.m2439a(mainActivity14);
                            break;
                        default:
                            MainActivity mainActivity15 = this.f3299b;
                            String str17 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{89, -93, 75, 63, 70, 93, -107, -66, 98, -85, 79, 25, 88, 115, -96, -113, 75, -110, 126, 50, 65, 113, -77, -102, 85, -116, 120, 37}, new byte[]{20, -62, 59, 96, 7, 62, -31, -41}), z9);
                            C1396n3.m2439a(mainActivity15);
                            break;
                    }
                }
            });
            MaterialSwitch materialSwitch23 = (MaterialSwitch) findViewById(R.id.AllWidgetServices_MediaControlView);
            materialSwitch23.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{88, 84, -29, 118, ByteCompanionObject.MIN_VALUE, 87, -96, -3, 109, 107, -22, 83, -97, 90, -92, -3, 106, 103, -30, 68, -115, 90, -90, -37, 118, 86, -5, 83, -122, 95, -111, -15, 124, 79, -48, 110, -121}, new byte[]{25, 56, -113, 33, -23, 51, -57, -104}), false));
            int i27 = 16;
            materialSwitch23.setOnCheckedChangeListener(new C1378k0(i27));
            ((Button) findViewById(R.id.install_AuroraStore)).setOnClickListener(new ViewOnClickListenerC1408q0(this, i27));
            ((Button) findViewById(R.id.install_RuStore)).setOnClickListener(new ViewOnClickListenerC1408q0(this, 17));
            ((Button) findViewById(R.id.install_AptoideStore)).setOnClickListener(new ViewOnClickListenerC1408q0(this, i12));
            ((Button) findViewById(R.id.install_unistall_app)).setOnClickListener(new ViewOnClickListenerC1408q0(this, i16));
            this.f1397x = (TabLayout) findViewById(R.id.tabsSwitcher);
            m1441N();
            m1443P();
            MaterialSwitch materialSwitch24 = (MaterialSwitch) findViewById(R.id.sw_pogoda_widg);
            this.f1392u0 = materialSwitch24;
            int i28 = 20;
            AbstractC1178q.m2088v(new byte[]{82, 71, 18, 58, -122, -70, 6, 17, 64, 111, 58, 35, -115, -70, 54, 26, 79, 95, 43, 44}, new byte[]{33, 48, 77, 74, -23, -35, 105, 117}, C1652b.m2745o(), false, materialSwitch24);
            MaterialSwitch materialSwitch25 = (MaterialSwitch) findViewById(R.id.switch_auto_to_start_engine);
            this.f1396w0 = materialSwitch25;
            AbstractC1178q.m2088v(new byte[]{-28, -68, -33, 5, -60, 65, -53, -67, -30, -74, -31, 16, -18, 65, -53, -67, -21, -90, -12, 11, -18, 70, -48, -125, -8, -89, -33, 1, -33, 82, -51, -116, -17}, new byte[]{-118, -45, ByteCompanionObject.MIN_VALUE, 100, -79, 53, -92, -30}, C1652b.m2745o(), true, materialSwitch25);
            AbstractC1387m.m2421h(new byte[]{8, 124, 102, 17, 125, 122, -75, -67, 0, 118}, new byte[]{105, 18, 2, 99, 18, 19, -47, -30});
            AbstractC1178q.m2088v(new byte[]{96, -102, -92, -42}, new byte[]{2, -11, -53, -94, 1, -113, -37, 93}, C1652b.m2745o(), false, this.f1399y);
            MaterialSwitch materialSwitch26 = (MaterialSwitch) findViewById(R.id.sw_auto_start_app_gu);
            materialSwitch26.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{8, -38, 23, 28, -97, -75, 69, 88, 36, -35, 58, 0, -76, -77, 66}, new byte[]{123, -83, 72, 111, -21, -44, 55, 44}), false));
            materialSwitch26.setOnCheckedChangeListener(new C1378k0(i12));
            MaterialSwitch materialSwitch27 = (MaterialSwitch) findViewById(R.id.sw_enable_web_launcher);
            String str2 = AbstractC3134a1.f8964a;
            materialSwitch27.setChecked(getPackageManager().getComponentEnabledSetting(new ComponentName(getPackageName(), AbstractC3134a1.f8964a)) == 1);
            materialSwitch27.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: e0.l0

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ MainActivity f3299b;

                {
                    this.f3299b = this;
                }

                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                    RelativeLayout relativeLayout;
                    RelativeLayout relativeLayout2;
                    switch (i17) {
                        case 0:
                            MainActivity mainActivity = this.f3299b;
                            String str3 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-60, -53, 107, 79, -77, 24, -89, 15, -6, -47, 123}, new byte[]{-120, -92, 30, 33, -48, 112, -27, 91}), z9);
                            boolean zLoadBoolean3 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-19, -62, -4, -76, -87, -9, 82, 0, -63, -41, -42, -83, -88, -12, 72}, new byte[]{-98, -75, -93, -39, -36, -101, 38, 105}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity);
                                C3105c c3105c = LounchB.f1282h;
                                if (c3105c != null && (relativeLayout2 = ((LounchB) c3105c.f8867c).f1283b) != null) {
                                    relativeLayout2.setVisibility(0);
                                    break;
                                }
                            } else if (!zLoadBoolean3) {
                                WindowManager windowManager = LounchB.f1281g;
                                mainActivity.stopService(new Intent(mainActivity, (Class<?>) LounchB.class));
                                break;
                            } else {
                                C3105c c3105c2 = LounchB.f1282h;
                                if (c3105c2 != null && (relativeLayout = ((LounchB) c3105c2.f8867c).f1283b) != null) {
                                    relativeLayout.setVisibility(8);
                                    break;
                                }
                            }
                            break;
                        case 1:
                            MainActivity mainActivity2 = this.f3299b;
                            String str4 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{105, -56, -43, 92, 59, -26, -126, 121, 69, -35, -1, 69, 58, -27, -104}, new byte[]{26, -65, -118, 49, 78, -118, -10, 16}), z9);
                            boolean zLoadBoolean4 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{34, -97, -78, -81, 126, -63, 107, -8, 28, -123, -94}, new byte[]{110, -16, -57, -63, 29, -87, 41, -84}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity2);
                                C3105c c3105c3 = LounchB.f1282h;
                                if (c3105c3 != null) {
                                    ((LounchB) c3105c3.f8867c).m1421b(true);
                                }
                            } else if (zLoadBoolean4) {
                                C3105c c3105c4 = LounchB.f1282h;
                                if (c3105c4 != null) {
                                    ((LounchB) c3105c4.f8867c).m1421b(false);
                                }
                            } else {
                                WindowManager windowManager2 = LounchB.f1281g;
                                mainActivity2.stopService(new Intent(mainActivity2, (Class<?>) LounchB.class));
                            }
                            break;
                        case 2:
                            MainActivity mainActivity3 = this.f3299b;
                            String str5 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{22, 10, -105, -66, -75, -9, -93, 15, 4, 34, -65, -89, -66, -9, -109, 4, 11, 18, -82, -88}, new byte[]{101, 125, -56, -50, -38, -112, -52, 107}), z9);
                            if (z9) {
                                WeatherService.m2207e(mainActivity3);
                            } else {
                                boolean z10 = WeatherService.f2877f;
                                mainActivity3.stopService(new Intent(mainActivity3, (Class<?>) WeatherService.class));
                            }
                            break;
                        case 3:
                            MainActivity mainActivity4 = this.f3299b;
                            String str6 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-116, 46, -84, -101, 100, 117, -91, 13, -98, 42, -99, -106, 114, 123}, new byte[]{-1, 89, -13, -7, 1, 15, -54, 125}), z9);
                            FlexboxLayout flexboxLayout = mainActivity4.f1388s0;
                            for (int i29 = 0; i29 < flexboxLayout.getChildCount(); i29++) {
                                flexboxLayout.getChildAt(i29).setEnabled(z9);
                            }
                            if (!z9) {
                                FlexboxLayout flexboxLayout2 = mainActivity4.f1388s0;
                                for (int i210 = 0; i210 < flexboxLayout2.getChildCount(); i210++) {
                                    ((MaterialSwitch) flexboxLayout2.getChildAt(i210)).setChecked(false);
                                }
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{68, 18, -70, 67, 56, 122, -80, 114}, new byte[]{55, 101, -27, 48, 76, 21, -36, 25}), false);
                            }
                            break;
                        case 4:
                            MainActivity mainActivity5 = this.f3299b;
                            String str7 = MainActivity.f1288e1;
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-50, -81, 29, 122, 103, 126, 25, 32, -46, -91, 17, 113, 103, 104, 3}, new byte[]{-121, -21, 66, 57, 38, 44, 70, 115});
                            C3277a c3277aM2745o = C1652b.m2745o();
                            StringBuilder sbM170u = AbstractC0074a.m170u(strM2421h);
                            sbM170u.append(mainActivity5.m1429A());
                            c3277aM2745o.saveBoolean(sbM170u.toString(), z9);
                            break;
                        case 5:
                            MainActivity mainActivity6 = this.f3299b;
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-97, -7, 52, -80, -63, 54, 57, -61, -75, -3, 39, -85, -50, 50, 19, -28, -79, -3, 37}, new byte[]{-48, -113, 81, -62, -83, 87, 64, -112}), z9);
                            if (z9) {
                                OverlayService.m1512c(mainActivity6);
                            } else {
                                OverlayService overlayService = OverlayService.f1499f;
                                mainActivity6.stopService(new Intent(mainActivity6.getApplicationContext(), (Class<?>) OverlayService.class));
                                boolean z11 = ServiceC1080Si.f1588d;
                                Context applicationContext = mainActivity6.getApplicationContext();
                                applicationContext.stopService(new Intent(applicationContext, (Class<?>) ServiceC1080Si.class));
                            }
                            break;
                        case 6:
                            MainActivity mainActivity7 = this.f3299b;
                            String str9 = MainActivity.f1288e1;
                            try {
                                C1652b.m2745o().saveBoolean(MockGpsService.f1423r, z9);
                                break;
                            } catch (Exception unused2) {
                            }
                            if (z9) {
                                MockGpsService.m1457m(mainActivity7);
                            } else {
                                MockGpsService.m1449b(mainActivity7);
                                mainActivity7.stopService(new Intent(mainActivity7, (Class<?>) MockGpsService.class));
                            }
                            break;
                        case 7:
                            MainActivity mainActivity8 = this.f3299b;
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(Notik.f1487m, z9);
                            if (z9) {
                                Notik.m1506g(mainActivity8);
                            } else {
                                mainActivity8.getApplicationContext().stopService(new Intent(mainActivity8.getApplicationContext(), (Class<?>) Notik.class));
                            }
                            break;
                        case 8:
                            MainActivity mainActivity9 = this.f3299b;
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(SpeedBoardService.f1614k, z9);
                            if (z9) {
                                SpeedBoardService.m1542b(mainActivity9.getApplicationContext());
                            } else {
                                Context applicationContext2 = mainActivity9.getApplicationContext();
                                applicationContext2.stopService(new Intent(applicationContext2.getApplicationContext(), (Class<?>) SpeedBoardService.class));
                            }
                            break;
                        case 9:
                            MainActivity mainActivity10 = this.f3299b;
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-41, -101, -118, -81, 87, -106, 41, 34, -9, -72, -86, -98, 87, -109, 37, 53, -10, -114, -65, -110, 123, -84, 46, 60, -28}, new byte[]{-127, -47, -55, -5, 8, -59, 76, 80}), z9);
                            if (z9) {
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-55, -94, Base64.padSymbol, -120, -39, 119, 3, 91, -42, -79, 54, -92, -11, 97, 5, 76, -51, -90}, new byte[]{-65, -46, 83, -41, -86, 18, 113, 45}), true);
                                TService.m1586c(mainActivity10.getApplicationContext());
                                TService.m1584a(Boolean.TRUE);
                            } else {
                                TService.m1584a(Boolean.FALSE);
                            }
                            break;
                        case 10:
                            MainActivity mainActivity11 = this.f3299b;
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{41, -104, -57, -91, 108, 113, -79, 0, 49, -121, -58, -80, 86, 118, -69, 44, 42, -108, -50}, new byte[]{94, -15, -93, -62, 9, 5, -62, 95}), z9);
                            new SystemMessageReceiver().onReceive(mainActivity11.getApplicationContext(), new Intent(AbstractC1387m.m2421h(new byte[]{42, 46, -109, -91, -102, 9, 5, -100, 34, 46, -125, -78, -101, 20, 79, -45, 40, 52, -98, -72, -101, 78, 35, -3, 4, 20, -88, -108, -70, 45, 49, -2, 14, 20, -78, -109}, new byte[]{75, 64, -9, -41, -11, 96, 97, -78})));
                            break;
                        case 11:
                            MainActivity mainActivity12 = this.f3299b;
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{114, 109, -96, 86, 11, 40, ByteCompanionObject.MAX_VALUE, -101, 71, 82, -87, 115, 20, 37, 123, -101, 64, 94, -97, 104, 12, 43, 116, -101, 100, 104, -94, 101, 13, 59, 71, -79, 93}, new byte[]{51, 1, -52, 1, 98, 76, 24, -2}), z9);
                            EnumC1362h enumC1362h = EnumC1362h.f3254i;
                            AllWidgetServices allWidgetServices = MainActivity.f1292i1;
                            if (allWidgetServices != null) {
                                allWidgetServices.m1388e(enumC1362h, z9);
                            }
                            if (z9 && MainActivity.f1292i1 == null) {
                                AllWidgetServices.m1384c(mainActivity12);
                                break;
                            }
                            break;
                        case 12:
                            MainActivity mainActivity13 = this.f3299b;
                            String str15 = MainActivity.f1288e1;
                            String str16 = AbstractC3134a1.f8964a;
                            mainActivity13.getPackageManager().setComponentEnabledSetting(new ComponentName(mainActivity13.getPackageName(), AbstractC3134a1.f8964a), z9 ? 1 : 2, 1);
                            break;
                        case 13:
                            MainActivity mainActivity14 = this.f3299b;
                            String str17 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{97, -20, 2, 79, 40, 84, -127, -32, 90, -28, 6, 105, 54, 113, -96, -59, 96, -34, 49, 66, 44, 114, -69, -42, 107, -40}, new byte[]{44, -115, 114, 16, 105, 55, -11, -119}), z9);
                            C1396n3.m2439a(mainActivity14);
                            break;
                        default:
                            MainActivity mainActivity15 = this.f3299b;
                            String str18 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{89, -93, 75, 63, 70, 93, -107, -66, 98, -85, 79, 25, 88, 115, -96, -113, 75, -110, 126, 50, 65, 113, -77, -102, 85, -116, 120, 37}, new byte[]{20, -62, 59, 96, 7, 62, -31, -41}), z9);
                            C1396n3.m2439a(mainActivity15);
                            break;
                    }
                }
            });
            ((Button) findViewById(R.id.button_start_web_launcher)).setOnClickListener(new ViewOnClickListenerC1408q0(this, i28));
            ((Button) findViewById(R.id.button_make_default_web_launcher)).setOnClickListener(new ViewOnClickListenerC0701a(i14, this, materialSwitch27));
            final MaterialSwitch materialSwitch28 = (MaterialSwitch) findViewById(R.id.sw_auto_start_web_launcher);
            final MaterialSwitch materialSwitch29 = (MaterialSwitch) findViewById(R.id.sw_auto_start_black);
            materialSwitch28.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{57, -52, 84, 82, 8, 112, -84, -61, 57, -49, 106, 65, 9, 91, -76, -7, 40, -28, 103, 82, 8, 106, -96, -12, 47, -55}, new byte[]{74, -69, 11, 51, 125, 4, -61, -100}), false));
            materialSwitch29.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-60, -18, -97, -67, 84, -88, -125, -11, -60, -19, -95, -82, 85, -125, -114, -58, -42, -6, -85}, new byte[]{-73, -103, -64, -36, 33, -36, -20, -86}), false));
            final int i29 = 0;
            materialSwitch28.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: e0.w0
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                    int i30 = i29;
                    MaterialSwitch materialSwitch30 = materialSwitch29;
                    switch (i30) {
                        case 0:
                            String str3 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{100, ByteCompanionObject.MIN_VALUE, -120, 116, 22, -11, 34, -89, 100, -125, -74, 103, 23, -34, 58, -99, 117, -88, -69, 116, 22, -17, 46, -112, 114, -123}, new byte[]{23, -9, -41, 21, 99, -127, 77, -8}), z9);
                            if (z9 && materialSwitch30.isChecked()) {
                                materialSwitch30.setChecked(false);
                                break;
                            }
                            break;
                        default:
                            String str4 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-35, 24, 28, -87, 91, -48, 70, -85, -35, 27, 34, -70, 90, -5, 75, -104, -49, 12, 40}, new byte[]{-82, 111, 67, -56, 46, -92, 41, -12}), z9);
                            if (z9 && materialSwitch30.isChecked()) {
                                materialSwitch30.setChecked(false);
                                break;
                            }
                            break;
                    }
                }
            });
            materialSwitch29.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: e0.w0
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                    int i30 = i14;
                    MaterialSwitch materialSwitch30 = materialSwitch28;
                    switch (i30) {
                        case 0:
                            String str3 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{100, ByteCompanionObject.MIN_VALUE, -120, 116, 22, -11, 34, -89, 100, -125, -74, 103, 23, -34, 58, -99, 117, -88, -69, 116, 22, -17, 46, -112, 114, -123}, new byte[]{23, -9, -41, 21, 99, -127, 77, -8}), z9);
                            if (z9 && materialSwitch30.isChecked()) {
                                materialSwitch30.setChecked(false);
                                break;
                            }
                            break;
                        default:
                            String str4 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-35, 24, 28, -87, 91, -48, 70, -85, -35, 27, 34, -70, 90, -5, 75, -104, -49, 12, 40}, new byte[]{-82, 111, 67, -56, 46, -92, 41, -12}), z9);
                            if (z9 && materialSwitch30.isChecked()) {
                                materialSwitch30.setChecked(false);
                                break;
                            }
                            break;
                    }
                }
            });
            ((Button) findViewById(R.id.button_start_black_Settins)).setOnClickListener(new ViewOnClickListenerC1408q0(this, 21));
            MaterialSwitch materialSwitch30 = (MaterialSwitch) findViewById(R.id.sw_run_app_more);
            materialSwitch30.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-44, -97, 67, 78, -94, -33, 48, 102, -41, -104, 67, 81, -72, -61, 10}, new byte[]{-89, -24, 28, 60, -41, -79, 111, 7}), false));
            materialSwitch30.setOnCheckedChangeListener(new C1378k0(i28));
            ((Button) findViewById(R.id.button_run_app_more_Settins)).setOnClickListener(new ViewOnClickListenerC1408q0(this, 22));
            ((Button) findViewById(R.id.button_exlantix_physical_buttons_settings)).setOnClickListener(new ViewOnClickListenerC1408q0(this, 23));
            ((Button) findViewById(R.id.button_log_keycode_settings)).setOnClickListener(new ViewOnClickListenerC1408q0(this, 24));
            MaterialSwitch materialSwitch31 = (MaterialSwitch) findViewById(R.id.sw_black_top_auto_click_install);
            materialSwitch31.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-118, -107, -122, -52, -76, -42, 126, -53, -104, -90, -114, -63, -84, -3, 107, -56, -124, -90, -112, -58, -79, -42, 105, -56, -127, -102, -116}, new byte[]{-24, -7, -25, -81, -33, -119, 10, -92}), true));
            materialSwitch31.setOnCheckedChangeListener(new C1378k0(21));
            this.f1343X0 = (ImageView) findViewById(R.id.ind_black_top_auto_click_install);
            final int i30 = 0;
            ((C3324b) C3326d.m5242a().f9736a.get(C3324b.class)).m5241b().observe(this, new Observer(this) { // from class: e0.x0

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ MainActivity f3469b;

                {
                    this.f3469b = this;
                }

                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    int i31 = i30;
                    MainActivity mainActivity = this.f3469b;
                    switch (i31) {
                        case 0:
                            mainActivity.mo1437J(((Boolean) obj).booleanValue());
                            break;
                        default:
                            C1402p c1402p = (C1402p) obj;
                            String str3 = MainActivity.f1288e1;
                            if (c1402p != null) {
                                int i32 = c1402p.f3363e;
                                ViewGroup viewGroup = (ViewGroup) mainActivity.f1397x.getChildAt(0);
                                View childAt = viewGroup.getChildAt(0);
                                View childAt2 = viewGroup.getChildAt(1);
                                View childAt3 = viewGroup.getChildAt(2);
                                if (i32 == 1) {
                                    childAt.setBackgroundColor(Color.parseColor(AbstractC1387m.m2421h(new byte[]{35, 92, 72, 107, 108, -64, 0, -45, 65}, new byte[]{0, 100, 112, 42, 45, -127, 65, -110})));
                                    childAt2.setBackgroundColor(0);
                                    childAt3.setBackgroundColor(0);
                                } else if (i32 == 2) {
                                    childAt.setBackgroundColor(0);
                                    childAt2.setBackgroundColor(Color.parseColor(AbstractC1387m.m2421h(new byte[]{-2, -97, -53, -78, 28, -59, 69, -116, -100}, new byte[]{-35, -89, -13, -13, 93, -124, 4, -51})));
                                    childAt3.setBackgroundColor(0);
                                } else if (i32 == 3) {
                                    childAt.setBackgroundColor(0);
                                    childAt2.setBackgroundColor(0);
                                    childAt3.setBackgroundColor(Color.parseColor(AbstractC1387m.m2421h(new byte[]{1, -27, -63, 113, 17, 96, 82, -33, 99}, new byte[]{34, -35, -7, 48, 80, 33, 19, -98})));
                                }
                                mainActivity.f1353c.setText(c1402p.f3362d + AbstractC1387m.m2421h(new byte[]{79, 86, 64}, new byte[]{-115, -26, 3, -26, -48, -85, 102, 72}));
                            }
                            break;
                    }
                }
            });
            ((C3324b) C3326d.m5242a().f9736a.get(C3324b.class)).m5240a().observe(this, new Observer(this) { // from class: e0.x0

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ MainActivity f3469b;

                {
                    this.f3469b = this;
                }

                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    int i31 = i14;
                    MainActivity mainActivity = this.f3469b;
                    switch (i31) {
                        case 0:
                            mainActivity.mo1437J(((Boolean) obj).booleanValue());
                            break;
                        default:
                            C1402p c1402p = (C1402p) obj;
                            String str3 = MainActivity.f1288e1;
                            if (c1402p != null) {
                                int i32 = c1402p.f3363e;
                                ViewGroup viewGroup = (ViewGroup) mainActivity.f1397x.getChildAt(0);
                                View childAt = viewGroup.getChildAt(0);
                                View childAt2 = viewGroup.getChildAt(1);
                                View childAt3 = viewGroup.getChildAt(2);
                                if (i32 == 1) {
                                    childAt.setBackgroundColor(Color.parseColor(AbstractC1387m.m2421h(new byte[]{35, 92, 72, 107, 108, -64, 0, -45, 65}, new byte[]{0, 100, 112, 42, 45, -127, 65, -110})));
                                    childAt2.setBackgroundColor(0);
                                    childAt3.setBackgroundColor(0);
                                } else if (i32 == 2) {
                                    childAt.setBackgroundColor(0);
                                    childAt2.setBackgroundColor(Color.parseColor(AbstractC1387m.m2421h(new byte[]{-2, -97, -53, -78, 28, -59, 69, -116, -100}, new byte[]{-35, -89, -13, -13, 93, -124, 4, -51})));
                                    childAt3.setBackgroundColor(0);
                                } else if (i32 == 3) {
                                    childAt.setBackgroundColor(0);
                                    childAt2.setBackgroundColor(0);
                                    childAt3.setBackgroundColor(Color.parseColor(AbstractC1387m.m2421h(new byte[]{1, -27, -63, 113, 17, 96, 82, -33, 99}, new byte[]{34, -35, -7, 48, 80, 33, 19, -98})));
                                }
                                mainActivity.f1353c.setText(c1402p.f3362d + AbstractC1387m.m2421h(new byte[]{79, 86, 64}, new byte[]{-115, -26, 3, -26, -48, -85, 102, 72}));
                            }
                            break;
                    }
                }
            });
            AbstractC1178q.m2088v(new byte[]{-120, -121, 15, -35, -64, 86, 102}, new byte[]{-5, -13, 125, -72, -84, Base64.padSymbol, 7, 64}, C1652b.m2745o(), true, this.f1401z);
            C1343d0.m2389d(this);
            AbstractC1178q.m2088v(new byte[]{-116, -89, -32, 116, 84, 82, 95, 109, -98, -65, -2}, new byte[]{-1, -45, -110, 17, 56, 57, 62, 50}, C1652b.m2745o(), false, this.f1296A);
            AbstractC1178q.m2088v(new byte[]{79, -63, 96, -11, 44, 3, 50, 15, 100, -48, 100, -5, 31, 3, 55, 3, 116, -1, 96}, new byte[]{22, -109, 5, -106, 73, 106, 68, 106}, C1652b.m2745o(), false, this.f1298B);
            AbstractC1178q.m2088v(new byte[]{-118, -3, 66, -37, 117, -87, -82}, new byte[]{-56, -111, 55, -124, 3, -58, -54, 82}, C1652b.m2745o(), false, this.f1380o0);
            this.f1382p0 = (MaterialSwitch) findViewById(R.id.switch20);
            SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.sw_multi_button);
            this.f1390t0 = (MaterialSwitch) findViewById(R.id.switch30);
            this.f1329Q0 = (TextInputLayout) findViewById(R.id.textField13);
            C1343d0.m2389d(this);
            this.f1384q0 = (MaterialSwitch) findViewById(R.id.sw_bez);
            this.f1388s0 = (FlexboxLayout) findViewById(R.id.bez_aw_layFlex);
            MaterialSwitch materialSwitch32 = (MaterialSwitch) findViewById(R.id.sw_stolk);
            this.f1386r0 = materialSwitch32;
            AbstractC1178q.m2088v(new byte[]{-28, Base64.padSymbol, -36, -60, 47, 47, 27, ByteCompanionObject.MAX_VALUE}, new byte[]{-105, 74, -125, -73, 91, 64, 119, 20}, C1652b.m2745o(), false, materialSwitch32);
            AbstractC1178q.m2088v(new byte[]{-23, -84, -17, 36, 25, 56, -27, -16, -5, -88, -34, 41, 15, 54}, new byte[]{-102, -37, -80, 70, 124, 66, -118, ByteCompanionObject.MIN_VALUE}, C1652b.m2745o(), false, this.f1384q0);
            this.f1386r0.setEnabled(this.f1384q0.isChecked());
            FlexboxLayout flexboxLayout = this.f1388s0;
            boolean zIsChecked = this.f1384q0.isChecked();
            for (int i31 = 0; i31 < flexboxLayout.getChildCount(); i31++) {
                flexboxLayout.getChildAt(i31).setEnabled(zIsChecked);
            }
            m1434G(R.id.ID_CAR_SPD_LIMIT_WARN_SET, AbstractC1387m.m2421h(new byte[]{102, -106, 20, 9, 79, -20, 25, -29, ByteCompanionObject.MAX_VALUE, -106, 20, 6, 71, -13, 15, -28, 112, -123, 10, 24, 64, -31, 21, -11, 123}, new byte[]{47, -46, 75, 74, 14, -66, 70, -80}));
            m1434G(R.id.ID_SPD_LIMIT_VALUE_CHANGE, AbstractC1387m.m2421h(new byte[]{79, 71, 124, -110, 73, 98, -75, 65, 79, 78, 106, -107, 70, 112, -85, 65, 83, 70, 124, -126, 81, 103, -92, 74, 67}, new byte[]{6, 3, 35, -63, 25, 38, -22, 13}));
            m1434G(R.id.ID_CAR_LDW, AbstractC1387m.m2421h(new byte[]{52, 67, -104, 80, 52, -92, 3, 116, 57, 80}, new byte[]{125, 7, -57, 19, 117, -10, 92, 56}));
            m1434G(R.id.ID_CAR_FCM_FRM_DAI_ON_OF, AbstractC1387m.m2421h(new byte[]{-48, -97, -3, 7, -58, 104, 8, 37, -38, -106, -3, 2, -43, 119, 8, 39, -40, -110, -3, 11, -55, 101, 24, 37}, new byte[]{-103, -37, -94, 68, -121, 58, 87, 99}));
            m1434G(R.id.ID_CAR_FCM_INHIBIT, AbstractC1387m.m2421h(new byte[]{30, -55, ByteCompanionObject.MAX_VALUE, -57, -93, -47, -126, -100, 20, -64, ByteCompanionObject.MAX_VALUE, -51, -84, -53, -108, -104, 30, -39}, new byte[]{87, -115, 32, -124, -30, -125, -35, -38}));
            m1434G(R.id.ID_CAR_FCM_IES_ON_OFF, AbstractC1387m.m2421h(new byte[]{6, -111, 36, 73, 26, 16, -51, 88, 12, -104, 36, 67, 30, 17, -51, 81, 1, -118, 52, 76, 29}, new byte[]{79, -43, 123, 10, 91, 66, -110, 30}));
            m1434G(R.id.ID_CAR_FCM_EMERGENCY_KEEY, AbstractC1387m.m2421h(new byte[]{63, 8, 6, 79, -73, 111, 82, -10, 53, 1, 6, 73, -69, 120, 95, -9, 51, 2, 26, 85, -87, 118, 72, -11, 47}, new byte[]{118, 76, 89, 12, -10, Base64.padSymbol, 13, -80}));
            m1434G(R.id.ID_CAR_CIR_ENA_STS, AbstractC1387m.m2421h(new byte[]{96, 78, -114, -89, 99, 12, -101, -14, 96, 88, -114, -95, 108, 31, -101, -30, 125, 89}, new byte[]{41, 10, -47, -28, 34, 94, -60, -79}));
            m1434G(R.id.ID_CAR_OPPOSITION_SWITCH, AbstractC1387m.m2421h(new byte[]{74, -19, 79, 120, -96, 50, -69, 36, 83, -7, 95, 104, -88, 52, -83, 36, 77, -10, 67, 108, -88, 52, -89, 35}, new byte[]{3, -87, 16, 59, -31, 96, -28, 107}));
            m1434G(R.id.Driver_Monitoring_System, AbstractC1387m.m2421h(new byte[]{-51, -121, 3, -69, -110, 72, -33, 13, -26, -101, 3, -71, -104, 72, -23, 46, -18, -86, 57, -76, -124, 78, -27, 45}, new byte[]{-119, -11, 106, -51, -9, 58, ByteCompanionObject.MIN_VALUE, 64}));
            C1343d0.m2389d(this);
            this.f1382p0.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{103, -4, 79, -45, 71, 26, 124, 99, 89, -26, 95}, new byte[]{43, -109, 58, -67, 36, 114, 62, 55}), false));
            switchCompat.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-121, -48, -94, 24, -104, -18, -99, -122, -85, -59, -120, 1, -103, -19, -121}, new byte[]{-12, -89, -3, 117, -19, -126, -23, -17}), false));
            ((Button) findViewById(R.id.button_setting_multubutton)).setOnClickListener(new ViewOnClickListenerC1408q0(this, i24));
            AbstractC1178q.m2088v(new byte[]{-56, 45, 31, -108, 32, -121, -5, -74, -41, 34, 62, -113, 4, -105, -21}, new byte[]{-104, 76, 109, -1, 97, -14, -113, -39}, C1652b.m2745o(), false, this.f1390t0);
            C1343d0.m2389d(this);
            C1343d0.m2389d(this);
            this.f1345Y0 = (CardView) findViewById(R.id.Lay_strelka);
            TextView textView = (TextView) findViewById(R.id.MainPayViewLabel);
            m1446u();
            C1343d0.m2389d(this);
            textView.setOnClickListener(new ViewOnClickListenerC1408q0(this, i18));
            C1343d0.m2389d(this);
            m1446u();
            ((Button) findViewById(R.id.button3)).setOnClickListener(new ViewOnClickListenerC1408q0(this, 27));
            EditText editText = this.f1329Q0.getEditText();
            Objects.requireNonNull(editText);
            editText.setText(String.valueOf(C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-21, 36, -17, -94, -50, -46, -44, -37, -34, 32, -7, -97, -32, -48, -14, -50}, new byte[]{-69, 69, -99, -55, -127, -68, -121, -85}), 0)));
            C1343d0.m2389d(this);
            this.f1329Q0.getEditText().addTextChangedListener(new C1329a1(0, this));
            C1343d0.m2389d(this);
            this.f1331R0 = (YMovLay) findViewById(R.id.blok_lim_speed);
            this.f1333S0 = (YMovLay) findViewById(R.id.blok_man_help);
            this.f1335T0 = (YMovLay) findViewById(R.id.blok_prog);
            this.f1337U0 = (YMovLay) findViewById(R.id.blok_dpi_pp);
            this.f1339V0 = (YMovLay) findViewById(R.id.blok_dpi_gu);
            this.f1334T = (LinearLayout) findViewById(R.id.len_jesti2);
            this.f1336U = (LinearLayout) findViewById(R.id.len_jesti3);
            m1436I();
            C1343d0.m2389d(this);
            this.f1331R0.setmovL(new RunnableC1388m0(this, i16));
            this.f1331R0.setmovR(new RunnableC1388m0(this, i28));
            this.f1331R0.setmovU(new RunnableC1388m0(this, 21));
            this.f1331R0.setmovD(new RunnableC1388m0(this, 22));
            this.f1333S0.setmovL(new RunnableC1388m0(this, 23));
            this.f1333S0.setmovR(new RunnableC1388m0(this, 24));
            this.f1333S0.setmovU(new RunnableC1388m0(this, i24));
            this.f1333S0.setmovD(new RunnableC1388m0(this, i18));
            this.f1335T0.setmovL(new RunnableC1388m0(this, 27));
            this.f1335T0.setmovR(new RunnableC1388m0(this, 28));
            this.f1335T0.setmovU(new RunnableC1388m0(this, 29));
            final int i32 = 0;
            this.f1335T0.setmovD(new Runnable(this) { // from class: e0.y0

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ MainActivity f3495c;

                {
                    this.f3495c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i33 = i32;
                    MainActivity mainActivity = this.f3495c;
                    switch (i33) {
                        case 0:
                            String strValueOf = String.valueOf(Integer.parseInt(mainActivity.f1335T0.getYLayMovY()) - 1);
                            C1652b.m2745o().saveString(mainActivity.f1381p, strValueOf);
                            mainActivity.f1335T0.setYLayMovY(strValueOf);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 1:
                            String str3 = MainActivity.f1288e1;
                            String strValueOf2 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{14, 116, -109, 67, 113, -16, 57, -52, 53, 124, -105, 101, 111, -41, 29, -20}, new byte[]{67, 21, -29, 28, 48, -109, 77, -91}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-111, 102, 107, 75, 53, 120, 75, 67, -86, 110, 111, 109, 43, 95, 111, 99}, new byte[]{-36, 7, 27, 20, 116, 27, 63, 42}), strValueOf2);
                            mainActivity.f1337U0.setYLayMovX(strValueOf2);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 2:
                            String str4 = MainActivity.f1288e1;
                            String strValueOf3 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-23, -60, -4, -127, 101, 54, -102, 16, -46, -52, -8, -89, 123, 17, -66, 48}, new byte[]{-92, -91, -116, -34, 36, 85, -18, 121}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-66, -70, -81, -63, 42, -44, 16, -18, -123, -78, -85, -25, 52, -13, 52, -50}, new byte[]{-13, -37, -33, -98, 107, -73, 100, -121}), strValueOf3);
                            mainActivity.f1337U0.setYLayMovX(strValueOf3);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 3:
                            String str5 = MainActivity.f1288e1;
                            String strValueOf4 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-50, 2, 110, -35, 99, 41, -71, 88, -11, 10, 106, -5, 125, 14, -99, 120, -36, 36, 75}, new byte[]{-125, 99, 30, -126, 34, 74, -51, 49}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{78, -57, 104, 72, -38, 118, -74, -105, 117, -49, 108, 110, -60, 81, -110, -73, 92, -31, 77}, new byte[]{3, -90, 24, 23, -101, 21, -62, -2}), strValueOf4);
                            mainActivity.f1339V0.setYLayMovX(strValueOf4);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 4:
                            String str6 = MainActivity.f1288e1;
                            String strValueOf5 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{9, 14, -71, 59, 29, -6, -36, -79, 50, 6, -67, 29, 3, -35, -8, -111, 27, 40, -100}, new byte[]{68, 111, -55, 100, 92, -103, -88, -40}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-6, -123, -102, 59, 29, -39, 59, 123, -63, -115, -98, 29, 3, -2, 31, 91, -24, -93, -65}, new byte[]{-73, -28, -22, 100, 92, -70, 79, 18}), strValueOf5);
                            mainActivity.f1339V0.setYLayMovX(strValueOf5);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 5:
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{63, -39, 57, 81, -26, 25, -125, -93, 36, -44, 48, 87, -11, 20, -113, -94, 55, -55, 57, 68, -30, 5, -120, -82, 58, -36, 50, 91, -24, 5}, new byte[]{118, -99, 102, 18, -89, 75, -36, -25}, new StringBuilder(), mainActivity), mainActivity.f1306F.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{39, 15, 115, 78, -36, 23, 125, 117, 60, 2, 122, 72, -49, 26, 113, 116, 47, 31, 115, 91, -40, 11, 118, 120, 34, 10, 120, 68, -46, 11, 125, 124, 33, 24, 100}, new byte[]{110, 75, 44, 13, -99, 69, 34, 49}, new StringBuilder(), mainActivity), mainActivity.f1306F.getLevel());
                            break;
                        case 6:
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{124, 117, -28, -97, -11, -64, 27, -76, 103, 120, -19, -103, -26, -51, 23, -75, 116, 101, -28, -108, -15, -45, 16}, new byte[]{53, 49, -69, -36, -76, -110, 68, -16}, new StringBuilder(), mainActivity), mainActivity.f1302D.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-87, 65, -112, 30, -125, 121, -84, -88, -78, 76, -103, 24, -112, 116, -96, -87, -95, 81, -112, 21, -121, 106, -89, -77, -83, 74, -100, 21}, new byte[]{-32, 5, -49, 93, -62, 43, -13, -20}, new StringBuilder(), mainActivity), mainActivity.f1302D.getLevel());
                            break;
                        case 7:
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-43, -46, -119, -64, -118, 76, -33, 120, -45, -58, -97, -49, -124, 74, -33, 104, -39, -41, -126, -36, -125, 91, -63, 111}, new byte[]{-100, -106, -42, -125, -53, 30, ByteCompanionObject.MIN_VALUE, 59}, new StringBuilder(), mainActivity), mainActivity.f1304E.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-54, 108, 111, 56, -100, -25, 14, -123, -52, 120, 121, 55, -110, -31, 14, -107, -58, 105, 100, 36, -107, -16, 16, -110, -36, 101, ByteCompanionObject.MAX_VALUE, 40, -107}, new byte[]{-125, 40, 48, 123, -35, -75, 81, -58}, new StringBuilder(), mainActivity), mainActivity.f1304E.getLevel());
                            break;
                        case 8:
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{20, -55, -61, 106, ByteCompanionObject.MAX_VALUE, 69, 62, -65, 18, -35, -43, 101, 113, 67, 62, -81, 24, -52, -56, 118, 104, 82, 47, -88, 20, -63, -35, 125, 119, 88, 47}, new byte[]{93, -115, -100, 41, 62, 23, 97, -4}, new StringBuilder(), mainActivity), mainActivity.f1308G.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-28, 51, -66, 50, -107, 44, -118, 28, -30, 39, -88, Base64.padSymbol, -101, 42, -118, 12, -24, 54, -75, 46, -126, 59, -101, 11, -28, 59, -96, 37, -99, 49, -101, 0, -32, 56, -78, 57}, new byte[]{-83, 119, -31, 113, -44, 126, -43, 95}, new StringBuilder(), mainActivity), mainActivity.f1308G.getLevel());
                            break;
                        case 9:
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-23, 64, -79, -89, -123, -65, 40, 16, -12, 65, -85, -74, -101, -70, 63, 6, -27, 72, -79, -84, -127, -84, 35}, new byte[]{-96, 4, -18, -28, -60, -19, 119, 67}, new StringBuilder(), mainActivity), mainActivity.f1310H.getisEnable().booleanValue());
                            break;
                        case 10:
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-117, -25, 3, 60, 62, -6, 126, -28, -115, -19, 8, 34, 58, -23, 121, -27, -111, -4, 20, 56, 60, -15}, new byte[]{-62, -93, 92, 125, 125, -91, 56, -74}, new StringBuilder(), mainActivity), mainActivity.f1312I.getisEnable().booleanValue());
                            break;
                        case 11:
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{97, 113, -17, -35, 0, 107, 25, 19, 105, 103, -17, -40, 6, 114, 25, 25, 123, 97}, new byte[]{40, 53, -80, -100, 67, 52, 75, 86}, new StringBuilder(), mainActivity), mainActivity.f1314J.getisEnable().booleanValue());
                            break;
                        default:
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-119, 1, 94, -57, 53, -27, -40, 126, -92, 32, 86, -61, 5, -37, -48, 126, -87, 11, 91, -53, 26, -22, -43, 109, -88, 15, 108, -19, 63}, new byte[]{-35, 104, 51, -94, 113, -124, -76, 31}, new StringBuilder(), mainActivity), mainActivity.f1316K.getisEnable().booleanValue());
                            mainActivity.m1439L(mainActivity.f1316K.getisEnable().booleanValue());
                            break;
                    }
                }
            });
            this.f1337U0.setmovL(new Runnable(this) { // from class: e0.y0

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ MainActivity f3495c;

                {
                    this.f3495c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i33 = i14;
                    MainActivity mainActivity = this.f3495c;
                    switch (i33) {
                        case 0:
                            String strValueOf = String.valueOf(Integer.parseInt(mainActivity.f1335T0.getYLayMovY()) - 1);
                            C1652b.m2745o().saveString(mainActivity.f1381p, strValueOf);
                            mainActivity.f1335T0.setYLayMovY(strValueOf);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 1:
                            String str3 = MainActivity.f1288e1;
                            String strValueOf2 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{14, 116, -109, 67, 113, -16, 57, -52, 53, 124, -105, 101, 111, -41, 29, -20}, new byte[]{67, 21, -29, 28, 48, -109, 77, -91}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-111, 102, 107, 75, 53, 120, 75, 67, -86, 110, 111, 109, 43, 95, 111, 99}, new byte[]{-36, 7, 27, 20, 116, 27, 63, 42}), strValueOf2);
                            mainActivity.f1337U0.setYLayMovX(strValueOf2);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 2:
                            String str4 = MainActivity.f1288e1;
                            String strValueOf3 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-23, -60, -4, -127, 101, 54, -102, 16, -46, -52, -8, -89, 123, 17, -66, 48}, new byte[]{-92, -91, -116, -34, 36, 85, -18, 121}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-66, -70, -81, -63, 42, -44, 16, -18, -123, -78, -85, -25, 52, -13, 52, -50}, new byte[]{-13, -37, -33, -98, 107, -73, 100, -121}), strValueOf3);
                            mainActivity.f1337U0.setYLayMovX(strValueOf3);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 3:
                            String str5 = MainActivity.f1288e1;
                            String strValueOf4 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-50, 2, 110, -35, 99, 41, -71, 88, -11, 10, 106, -5, 125, 14, -99, 120, -36, 36, 75}, new byte[]{-125, 99, 30, -126, 34, 74, -51, 49}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{78, -57, 104, 72, -38, 118, -74, -105, 117, -49, 108, 110, -60, 81, -110, -73, 92, -31, 77}, new byte[]{3, -90, 24, 23, -101, 21, -62, -2}), strValueOf4);
                            mainActivity.f1339V0.setYLayMovX(strValueOf4);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 4:
                            String str6 = MainActivity.f1288e1;
                            String strValueOf5 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{9, 14, -71, 59, 29, -6, -36, -79, 50, 6, -67, 29, 3, -35, -8, -111, 27, 40, -100}, new byte[]{68, 111, -55, 100, 92, -103, -88, -40}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-6, -123, -102, 59, 29, -39, 59, 123, -63, -115, -98, 29, 3, -2, 31, 91, -24, -93, -65}, new byte[]{-73, -28, -22, 100, 92, -70, 79, 18}), strValueOf5);
                            mainActivity.f1339V0.setYLayMovX(strValueOf5);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 5:
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{63, -39, 57, 81, -26, 25, -125, -93, 36, -44, 48, 87, -11, 20, -113, -94, 55, -55, 57, 68, -30, 5, -120, -82, 58, -36, 50, 91, -24, 5}, new byte[]{118, -99, 102, 18, -89, 75, -36, -25}, new StringBuilder(), mainActivity), mainActivity.f1306F.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{39, 15, 115, 78, -36, 23, 125, 117, 60, 2, 122, 72, -49, 26, 113, 116, 47, 31, 115, 91, -40, 11, 118, 120, 34, 10, 120, 68, -46, 11, 125, 124, 33, 24, 100}, new byte[]{110, 75, 44, 13, -99, 69, 34, 49}, new StringBuilder(), mainActivity), mainActivity.f1306F.getLevel());
                            break;
                        case 6:
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{124, 117, -28, -97, -11, -64, 27, -76, 103, 120, -19, -103, -26, -51, 23, -75, 116, 101, -28, -108, -15, -45, 16}, new byte[]{53, 49, -69, -36, -76, -110, 68, -16}, new StringBuilder(), mainActivity), mainActivity.f1302D.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-87, 65, -112, 30, -125, 121, -84, -88, -78, 76, -103, 24, -112, 116, -96, -87, -95, 81, -112, 21, -121, 106, -89, -77, -83, 74, -100, 21}, new byte[]{-32, 5, -49, 93, -62, 43, -13, -20}, new StringBuilder(), mainActivity), mainActivity.f1302D.getLevel());
                            break;
                        case 7:
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-43, -46, -119, -64, -118, 76, -33, 120, -45, -58, -97, -49, -124, 74, -33, 104, -39, -41, -126, -36, -125, 91, -63, 111}, new byte[]{-100, -106, -42, -125, -53, 30, ByteCompanionObject.MIN_VALUE, 59}, new StringBuilder(), mainActivity), mainActivity.f1304E.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-54, 108, 111, 56, -100, -25, 14, -123, -52, 120, 121, 55, -110, -31, 14, -107, -58, 105, 100, 36, -107, -16, 16, -110, -36, 101, ByteCompanionObject.MAX_VALUE, 40, -107}, new byte[]{-125, 40, 48, 123, -35, -75, 81, -58}, new StringBuilder(), mainActivity), mainActivity.f1304E.getLevel());
                            break;
                        case 8:
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{20, -55, -61, 106, ByteCompanionObject.MAX_VALUE, 69, 62, -65, 18, -35, -43, 101, 113, 67, 62, -81, 24, -52, -56, 118, 104, 82, 47, -88, 20, -63, -35, 125, 119, 88, 47}, new byte[]{93, -115, -100, 41, 62, 23, 97, -4}, new StringBuilder(), mainActivity), mainActivity.f1308G.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-28, 51, -66, 50, -107, 44, -118, 28, -30, 39, -88, Base64.padSymbol, -101, 42, -118, 12, -24, 54, -75, 46, -126, 59, -101, 11, -28, 59, -96, 37, -99, 49, -101, 0, -32, 56, -78, 57}, new byte[]{-83, 119, -31, 113, -44, 126, -43, 95}, new StringBuilder(), mainActivity), mainActivity.f1308G.getLevel());
                            break;
                        case 9:
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-23, 64, -79, -89, -123, -65, 40, 16, -12, 65, -85, -74, -101, -70, 63, 6, -27, 72, -79, -84, -127, -84, 35}, new byte[]{-96, 4, -18, -28, -60, -19, 119, 67}, new StringBuilder(), mainActivity), mainActivity.f1310H.getisEnable().booleanValue());
                            break;
                        case 10:
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-117, -25, 3, 60, 62, -6, 126, -28, -115, -19, 8, 34, 58, -23, 121, -27, -111, -4, 20, 56, 60, -15}, new byte[]{-62, -93, 92, 125, 125, -91, 56, -74}, new StringBuilder(), mainActivity), mainActivity.f1312I.getisEnable().booleanValue());
                            break;
                        case 11:
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{97, 113, -17, -35, 0, 107, 25, 19, 105, 103, -17, -40, 6, 114, 25, 25, 123, 97}, new byte[]{40, 53, -80, -100, 67, 52, 75, 86}, new StringBuilder(), mainActivity), mainActivity.f1314J.getisEnable().booleanValue());
                            break;
                        default:
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-119, 1, 94, -57, 53, -27, -40, 126, -92, 32, 86, -61, 5, -37, -48, 126, -87, 11, 91, -53, 26, -22, -43, 109, -88, 15, 108, -19, 63}, new byte[]{-35, 104, 51, -94, 113, -124, -76, 31}, new StringBuilder(), mainActivity), mainActivity.f1316K.getisEnable().booleanValue());
                            mainActivity.m1439L(mainActivity.f1316K.getisEnable().booleanValue());
                            break;
                    }
                }
            });
            final int i33 = 2;
            this.f1337U0.setmovR(new Runnable(this) { // from class: e0.y0

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ MainActivity f3495c;

                {
                    this.f3495c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i34 = i33;
                    MainActivity mainActivity = this.f3495c;
                    switch (i34) {
                        case 0:
                            String strValueOf = String.valueOf(Integer.parseInt(mainActivity.f1335T0.getYLayMovY()) - 1);
                            C1652b.m2745o().saveString(mainActivity.f1381p, strValueOf);
                            mainActivity.f1335T0.setYLayMovY(strValueOf);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 1:
                            String str3 = MainActivity.f1288e1;
                            String strValueOf2 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{14, 116, -109, 67, 113, -16, 57, -52, 53, 124, -105, 101, 111, -41, 29, -20}, new byte[]{67, 21, -29, 28, 48, -109, 77, -91}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-111, 102, 107, 75, 53, 120, 75, 67, -86, 110, 111, 109, 43, 95, 111, 99}, new byte[]{-36, 7, 27, 20, 116, 27, 63, 42}), strValueOf2);
                            mainActivity.f1337U0.setYLayMovX(strValueOf2);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 2:
                            String str4 = MainActivity.f1288e1;
                            String strValueOf3 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-23, -60, -4, -127, 101, 54, -102, 16, -46, -52, -8, -89, 123, 17, -66, 48}, new byte[]{-92, -91, -116, -34, 36, 85, -18, 121}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-66, -70, -81, -63, 42, -44, 16, -18, -123, -78, -85, -25, 52, -13, 52, -50}, new byte[]{-13, -37, -33, -98, 107, -73, 100, -121}), strValueOf3);
                            mainActivity.f1337U0.setYLayMovX(strValueOf3);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 3:
                            String str5 = MainActivity.f1288e1;
                            String strValueOf4 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-50, 2, 110, -35, 99, 41, -71, 88, -11, 10, 106, -5, 125, 14, -99, 120, -36, 36, 75}, new byte[]{-125, 99, 30, -126, 34, 74, -51, 49}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{78, -57, 104, 72, -38, 118, -74, -105, 117, -49, 108, 110, -60, 81, -110, -73, 92, -31, 77}, new byte[]{3, -90, 24, 23, -101, 21, -62, -2}), strValueOf4);
                            mainActivity.f1339V0.setYLayMovX(strValueOf4);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 4:
                            String str6 = MainActivity.f1288e1;
                            String strValueOf5 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{9, 14, -71, 59, 29, -6, -36, -79, 50, 6, -67, 29, 3, -35, -8, -111, 27, 40, -100}, new byte[]{68, 111, -55, 100, 92, -103, -88, -40}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-6, -123, -102, 59, 29, -39, 59, 123, -63, -115, -98, 29, 3, -2, 31, 91, -24, -93, -65}, new byte[]{-73, -28, -22, 100, 92, -70, 79, 18}), strValueOf5);
                            mainActivity.f1339V0.setYLayMovX(strValueOf5);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 5:
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{63, -39, 57, 81, -26, 25, -125, -93, 36, -44, 48, 87, -11, 20, -113, -94, 55, -55, 57, 68, -30, 5, -120, -82, 58, -36, 50, 91, -24, 5}, new byte[]{118, -99, 102, 18, -89, 75, -36, -25}, new StringBuilder(), mainActivity), mainActivity.f1306F.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{39, 15, 115, 78, -36, 23, 125, 117, 60, 2, 122, 72, -49, 26, 113, 116, 47, 31, 115, 91, -40, 11, 118, 120, 34, 10, 120, 68, -46, 11, 125, 124, 33, 24, 100}, new byte[]{110, 75, 44, 13, -99, 69, 34, 49}, new StringBuilder(), mainActivity), mainActivity.f1306F.getLevel());
                            break;
                        case 6:
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{124, 117, -28, -97, -11, -64, 27, -76, 103, 120, -19, -103, -26, -51, 23, -75, 116, 101, -28, -108, -15, -45, 16}, new byte[]{53, 49, -69, -36, -76, -110, 68, -16}, new StringBuilder(), mainActivity), mainActivity.f1302D.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-87, 65, -112, 30, -125, 121, -84, -88, -78, 76, -103, 24, -112, 116, -96, -87, -95, 81, -112, 21, -121, 106, -89, -77, -83, 74, -100, 21}, new byte[]{-32, 5, -49, 93, -62, 43, -13, -20}, new StringBuilder(), mainActivity), mainActivity.f1302D.getLevel());
                            break;
                        case 7:
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-43, -46, -119, -64, -118, 76, -33, 120, -45, -58, -97, -49, -124, 74, -33, 104, -39, -41, -126, -36, -125, 91, -63, 111}, new byte[]{-100, -106, -42, -125, -53, 30, ByteCompanionObject.MIN_VALUE, 59}, new StringBuilder(), mainActivity), mainActivity.f1304E.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-54, 108, 111, 56, -100, -25, 14, -123, -52, 120, 121, 55, -110, -31, 14, -107, -58, 105, 100, 36, -107, -16, 16, -110, -36, 101, ByteCompanionObject.MAX_VALUE, 40, -107}, new byte[]{-125, 40, 48, 123, -35, -75, 81, -58}, new StringBuilder(), mainActivity), mainActivity.f1304E.getLevel());
                            break;
                        case 8:
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{20, -55, -61, 106, ByteCompanionObject.MAX_VALUE, 69, 62, -65, 18, -35, -43, 101, 113, 67, 62, -81, 24, -52, -56, 118, 104, 82, 47, -88, 20, -63, -35, 125, 119, 88, 47}, new byte[]{93, -115, -100, 41, 62, 23, 97, -4}, new StringBuilder(), mainActivity), mainActivity.f1308G.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-28, 51, -66, 50, -107, 44, -118, 28, -30, 39, -88, Base64.padSymbol, -101, 42, -118, 12, -24, 54, -75, 46, -126, 59, -101, 11, -28, 59, -96, 37, -99, 49, -101, 0, -32, 56, -78, 57}, new byte[]{-83, 119, -31, 113, -44, 126, -43, 95}, new StringBuilder(), mainActivity), mainActivity.f1308G.getLevel());
                            break;
                        case 9:
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-23, 64, -79, -89, -123, -65, 40, 16, -12, 65, -85, -74, -101, -70, 63, 6, -27, 72, -79, -84, -127, -84, 35}, new byte[]{-96, 4, -18, -28, -60, -19, 119, 67}, new StringBuilder(), mainActivity), mainActivity.f1310H.getisEnable().booleanValue());
                            break;
                        case 10:
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-117, -25, 3, 60, 62, -6, 126, -28, -115, -19, 8, 34, 58, -23, 121, -27, -111, -4, 20, 56, 60, -15}, new byte[]{-62, -93, 92, 125, 125, -91, 56, -74}, new StringBuilder(), mainActivity), mainActivity.f1312I.getisEnable().booleanValue());
                            break;
                        case 11:
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{97, 113, -17, -35, 0, 107, 25, 19, 105, 103, -17, -40, 6, 114, 25, 25, 123, 97}, new byte[]{40, 53, -80, -100, 67, 52, 75, 86}, new StringBuilder(), mainActivity), mainActivity.f1314J.getisEnable().booleanValue());
                            break;
                        default:
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-119, 1, 94, -57, 53, -27, -40, 126, -92, 32, 86, -61, 5, -37, -48, 126, -87, 11, 91, -53, 26, -22, -43, 109, -88, 15, 108, -19, 63}, new byte[]{-35, 104, 51, -94, 113, -124, -76, 31}, new StringBuilder(), mainActivity), mainActivity.f1316K.getisEnable().booleanValue());
                            mainActivity.m1439L(mainActivity.f1316K.getisEnable().booleanValue());
                            break;
                    }
                }
            });
            final int i34 = 3;
            this.f1339V0.setmovL(new Runnable(this) { // from class: e0.y0

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ MainActivity f3495c;

                {
                    this.f3495c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i35 = i34;
                    MainActivity mainActivity = this.f3495c;
                    switch (i35) {
                        case 0:
                            String strValueOf = String.valueOf(Integer.parseInt(mainActivity.f1335T0.getYLayMovY()) - 1);
                            C1652b.m2745o().saveString(mainActivity.f1381p, strValueOf);
                            mainActivity.f1335T0.setYLayMovY(strValueOf);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 1:
                            String str3 = MainActivity.f1288e1;
                            String strValueOf2 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{14, 116, -109, 67, 113, -16, 57, -52, 53, 124, -105, 101, 111, -41, 29, -20}, new byte[]{67, 21, -29, 28, 48, -109, 77, -91}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-111, 102, 107, 75, 53, 120, 75, 67, -86, 110, 111, 109, 43, 95, 111, 99}, new byte[]{-36, 7, 27, 20, 116, 27, 63, 42}), strValueOf2);
                            mainActivity.f1337U0.setYLayMovX(strValueOf2);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 2:
                            String str4 = MainActivity.f1288e1;
                            String strValueOf3 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-23, -60, -4, -127, 101, 54, -102, 16, -46, -52, -8, -89, 123, 17, -66, 48}, new byte[]{-92, -91, -116, -34, 36, 85, -18, 121}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-66, -70, -81, -63, 42, -44, 16, -18, -123, -78, -85, -25, 52, -13, 52, -50}, new byte[]{-13, -37, -33, -98, 107, -73, 100, -121}), strValueOf3);
                            mainActivity.f1337U0.setYLayMovX(strValueOf3);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 3:
                            String str5 = MainActivity.f1288e1;
                            String strValueOf4 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-50, 2, 110, -35, 99, 41, -71, 88, -11, 10, 106, -5, 125, 14, -99, 120, -36, 36, 75}, new byte[]{-125, 99, 30, -126, 34, 74, -51, 49}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{78, -57, 104, 72, -38, 118, -74, -105, 117, -49, 108, 110, -60, 81, -110, -73, 92, -31, 77}, new byte[]{3, -90, 24, 23, -101, 21, -62, -2}), strValueOf4);
                            mainActivity.f1339V0.setYLayMovX(strValueOf4);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 4:
                            String str6 = MainActivity.f1288e1;
                            String strValueOf5 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{9, 14, -71, 59, 29, -6, -36, -79, 50, 6, -67, 29, 3, -35, -8, -111, 27, 40, -100}, new byte[]{68, 111, -55, 100, 92, -103, -88, -40}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-6, -123, -102, 59, 29, -39, 59, 123, -63, -115, -98, 29, 3, -2, 31, 91, -24, -93, -65}, new byte[]{-73, -28, -22, 100, 92, -70, 79, 18}), strValueOf5);
                            mainActivity.f1339V0.setYLayMovX(strValueOf5);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 5:
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{63, -39, 57, 81, -26, 25, -125, -93, 36, -44, 48, 87, -11, 20, -113, -94, 55, -55, 57, 68, -30, 5, -120, -82, 58, -36, 50, 91, -24, 5}, new byte[]{118, -99, 102, 18, -89, 75, -36, -25}, new StringBuilder(), mainActivity), mainActivity.f1306F.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{39, 15, 115, 78, -36, 23, 125, 117, 60, 2, 122, 72, -49, 26, 113, 116, 47, 31, 115, 91, -40, 11, 118, 120, 34, 10, 120, 68, -46, 11, 125, 124, 33, 24, 100}, new byte[]{110, 75, 44, 13, -99, 69, 34, 49}, new StringBuilder(), mainActivity), mainActivity.f1306F.getLevel());
                            break;
                        case 6:
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{124, 117, -28, -97, -11, -64, 27, -76, 103, 120, -19, -103, -26, -51, 23, -75, 116, 101, -28, -108, -15, -45, 16}, new byte[]{53, 49, -69, -36, -76, -110, 68, -16}, new StringBuilder(), mainActivity), mainActivity.f1302D.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-87, 65, -112, 30, -125, 121, -84, -88, -78, 76, -103, 24, -112, 116, -96, -87, -95, 81, -112, 21, -121, 106, -89, -77, -83, 74, -100, 21}, new byte[]{-32, 5, -49, 93, -62, 43, -13, -20}, new StringBuilder(), mainActivity), mainActivity.f1302D.getLevel());
                            break;
                        case 7:
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-43, -46, -119, -64, -118, 76, -33, 120, -45, -58, -97, -49, -124, 74, -33, 104, -39, -41, -126, -36, -125, 91, -63, 111}, new byte[]{-100, -106, -42, -125, -53, 30, ByteCompanionObject.MIN_VALUE, 59}, new StringBuilder(), mainActivity), mainActivity.f1304E.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-54, 108, 111, 56, -100, -25, 14, -123, -52, 120, 121, 55, -110, -31, 14, -107, -58, 105, 100, 36, -107, -16, 16, -110, -36, 101, ByteCompanionObject.MAX_VALUE, 40, -107}, new byte[]{-125, 40, 48, 123, -35, -75, 81, -58}, new StringBuilder(), mainActivity), mainActivity.f1304E.getLevel());
                            break;
                        case 8:
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{20, -55, -61, 106, ByteCompanionObject.MAX_VALUE, 69, 62, -65, 18, -35, -43, 101, 113, 67, 62, -81, 24, -52, -56, 118, 104, 82, 47, -88, 20, -63, -35, 125, 119, 88, 47}, new byte[]{93, -115, -100, 41, 62, 23, 97, -4}, new StringBuilder(), mainActivity), mainActivity.f1308G.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-28, 51, -66, 50, -107, 44, -118, 28, -30, 39, -88, Base64.padSymbol, -101, 42, -118, 12, -24, 54, -75, 46, -126, 59, -101, 11, -28, 59, -96, 37, -99, 49, -101, 0, -32, 56, -78, 57}, new byte[]{-83, 119, -31, 113, -44, 126, -43, 95}, new StringBuilder(), mainActivity), mainActivity.f1308G.getLevel());
                            break;
                        case 9:
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-23, 64, -79, -89, -123, -65, 40, 16, -12, 65, -85, -74, -101, -70, 63, 6, -27, 72, -79, -84, -127, -84, 35}, new byte[]{-96, 4, -18, -28, -60, -19, 119, 67}, new StringBuilder(), mainActivity), mainActivity.f1310H.getisEnable().booleanValue());
                            break;
                        case 10:
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-117, -25, 3, 60, 62, -6, 126, -28, -115, -19, 8, 34, 58, -23, 121, -27, -111, -4, 20, 56, 60, -15}, new byte[]{-62, -93, 92, 125, 125, -91, 56, -74}, new StringBuilder(), mainActivity), mainActivity.f1312I.getisEnable().booleanValue());
                            break;
                        case 11:
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{97, 113, -17, -35, 0, 107, 25, 19, 105, 103, -17, -40, 6, 114, 25, 25, 123, 97}, new byte[]{40, 53, -80, -100, 67, 52, 75, 86}, new StringBuilder(), mainActivity), mainActivity.f1314J.getisEnable().booleanValue());
                            break;
                        default:
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-119, 1, 94, -57, 53, -27, -40, 126, -92, 32, 86, -61, 5, -37, -48, 126, -87, 11, 91, -53, 26, -22, -43, 109, -88, 15, 108, -19, 63}, new byte[]{-35, 104, 51, -94, 113, -124, -76, 31}, new StringBuilder(), mainActivity), mainActivity.f1316K.getisEnable().booleanValue());
                            mainActivity.m1439L(mainActivity.f1316K.getisEnable().booleanValue());
                            break;
                    }
                }
            });
            final int i35 = 4;
            this.f1339V0.setmovR(new Runnable(this) { // from class: e0.y0

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ MainActivity f3495c;

                {
                    this.f3495c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i36 = i35;
                    MainActivity mainActivity = this.f3495c;
                    switch (i36) {
                        case 0:
                            String strValueOf = String.valueOf(Integer.parseInt(mainActivity.f1335T0.getYLayMovY()) - 1);
                            C1652b.m2745o().saveString(mainActivity.f1381p, strValueOf);
                            mainActivity.f1335T0.setYLayMovY(strValueOf);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 1:
                            String str3 = MainActivity.f1288e1;
                            String strValueOf2 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{14, 116, -109, 67, 113, -16, 57, -52, 53, 124, -105, 101, 111, -41, 29, -20}, new byte[]{67, 21, -29, 28, 48, -109, 77, -91}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-111, 102, 107, 75, 53, 120, 75, 67, -86, 110, 111, 109, 43, 95, 111, 99}, new byte[]{-36, 7, 27, 20, 116, 27, 63, 42}), strValueOf2);
                            mainActivity.f1337U0.setYLayMovX(strValueOf2);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 2:
                            String str4 = MainActivity.f1288e1;
                            String strValueOf3 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-23, -60, -4, -127, 101, 54, -102, 16, -46, -52, -8, -89, 123, 17, -66, 48}, new byte[]{-92, -91, -116, -34, 36, 85, -18, 121}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-66, -70, -81, -63, 42, -44, 16, -18, -123, -78, -85, -25, 52, -13, 52, -50}, new byte[]{-13, -37, -33, -98, 107, -73, 100, -121}), strValueOf3);
                            mainActivity.f1337U0.setYLayMovX(strValueOf3);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 3:
                            String str5 = MainActivity.f1288e1;
                            String strValueOf4 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-50, 2, 110, -35, 99, 41, -71, 88, -11, 10, 106, -5, 125, 14, -99, 120, -36, 36, 75}, new byte[]{-125, 99, 30, -126, 34, 74, -51, 49}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{78, -57, 104, 72, -38, 118, -74, -105, 117, -49, 108, 110, -60, 81, -110, -73, 92, -31, 77}, new byte[]{3, -90, 24, 23, -101, 21, -62, -2}), strValueOf4);
                            mainActivity.f1339V0.setYLayMovX(strValueOf4);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 4:
                            String str6 = MainActivity.f1288e1;
                            String strValueOf5 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{9, 14, -71, 59, 29, -6, -36, -79, 50, 6, -67, 29, 3, -35, -8, -111, 27, 40, -100}, new byte[]{68, 111, -55, 100, 92, -103, -88, -40}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-6, -123, -102, 59, 29, -39, 59, 123, -63, -115, -98, 29, 3, -2, 31, 91, -24, -93, -65}, new byte[]{-73, -28, -22, 100, 92, -70, 79, 18}), strValueOf5);
                            mainActivity.f1339V0.setYLayMovX(strValueOf5);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 5:
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{63, -39, 57, 81, -26, 25, -125, -93, 36, -44, 48, 87, -11, 20, -113, -94, 55, -55, 57, 68, -30, 5, -120, -82, 58, -36, 50, 91, -24, 5}, new byte[]{118, -99, 102, 18, -89, 75, -36, -25}, new StringBuilder(), mainActivity), mainActivity.f1306F.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{39, 15, 115, 78, -36, 23, 125, 117, 60, 2, 122, 72, -49, 26, 113, 116, 47, 31, 115, 91, -40, 11, 118, 120, 34, 10, 120, 68, -46, 11, 125, 124, 33, 24, 100}, new byte[]{110, 75, 44, 13, -99, 69, 34, 49}, new StringBuilder(), mainActivity), mainActivity.f1306F.getLevel());
                            break;
                        case 6:
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{124, 117, -28, -97, -11, -64, 27, -76, 103, 120, -19, -103, -26, -51, 23, -75, 116, 101, -28, -108, -15, -45, 16}, new byte[]{53, 49, -69, -36, -76, -110, 68, -16}, new StringBuilder(), mainActivity), mainActivity.f1302D.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-87, 65, -112, 30, -125, 121, -84, -88, -78, 76, -103, 24, -112, 116, -96, -87, -95, 81, -112, 21, -121, 106, -89, -77, -83, 74, -100, 21}, new byte[]{-32, 5, -49, 93, -62, 43, -13, -20}, new StringBuilder(), mainActivity), mainActivity.f1302D.getLevel());
                            break;
                        case 7:
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-43, -46, -119, -64, -118, 76, -33, 120, -45, -58, -97, -49, -124, 74, -33, 104, -39, -41, -126, -36, -125, 91, -63, 111}, new byte[]{-100, -106, -42, -125, -53, 30, ByteCompanionObject.MIN_VALUE, 59}, new StringBuilder(), mainActivity), mainActivity.f1304E.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-54, 108, 111, 56, -100, -25, 14, -123, -52, 120, 121, 55, -110, -31, 14, -107, -58, 105, 100, 36, -107, -16, 16, -110, -36, 101, ByteCompanionObject.MAX_VALUE, 40, -107}, new byte[]{-125, 40, 48, 123, -35, -75, 81, -58}, new StringBuilder(), mainActivity), mainActivity.f1304E.getLevel());
                            break;
                        case 8:
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{20, -55, -61, 106, ByteCompanionObject.MAX_VALUE, 69, 62, -65, 18, -35, -43, 101, 113, 67, 62, -81, 24, -52, -56, 118, 104, 82, 47, -88, 20, -63, -35, 125, 119, 88, 47}, new byte[]{93, -115, -100, 41, 62, 23, 97, -4}, new StringBuilder(), mainActivity), mainActivity.f1308G.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-28, 51, -66, 50, -107, 44, -118, 28, -30, 39, -88, Base64.padSymbol, -101, 42, -118, 12, -24, 54, -75, 46, -126, 59, -101, 11, -28, 59, -96, 37, -99, 49, -101, 0, -32, 56, -78, 57}, new byte[]{-83, 119, -31, 113, -44, 126, -43, 95}, new StringBuilder(), mainActivity), mainActivity.f1308G.getLevel());
                            break;
                        case 9:
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-23, 64, -79, -89, -123, -65, 40, 16, -12, 65, -85, -74, -101, -70, 63, 6, -27, 72, -79, -84, -127, -84, 35}, new byte[]{-96, 4, -18, -28, -60, -19, 119, 67}, new StringBuilder(), mainActivity), mainActivity.f1310H.getisEnable().booleanValue());
                            break;
                        case 10:
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-117, -25, 3, 60, 62, -6, 126, -28, -115, -19, 8, 34, 58, -23, 121, -27, -111, -4, 20, 56, 60, -15}, new byte[]{-62, -93, 92, 125, 125, -91, 56, -74}, new StringBuilder(), mainActivity), mainActivity.f1312I.getisEnable().booleanValue());
                            break;
                        case 11:
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{97, 113, -17, -35, 0, 107, 25, 19, 105, 103, -17, -40, 6, 114, 25, 25, 123, 97}, new byte[]{40, 53, -80, -100, 67, 52, 75, 86}, new StringBuilder(), mainActivity), mainActivity.f1314J.getisEnable().booleanValue());
                            break;
                        default:
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-119, 1, 94, -57, 53, -27, -40, 126, -92, 32, 86, -61, 5, -37, -48, 126, -87, 11, 91, -53, 26, -22, -43, 109, -88, 15, 108, -19, 63}, new byte[]{-35, 104, 51, -94, 113, -124, -76, 31}, new StringBuilder(), mainActivity), mainActivity.f1316K.getisEnable().booleanValue());
                            mainActivity.m1439L(mainActivity.f1316K.getisEnable().booleanValue());
                            break;
                    }
                }
            });
            C1343d0.m2389d(this);
            ((Button) findViewById(R.id.button)).setOnClickListener(new ViewOnClickListenerC1408q0(this, 28));
            ((Button) findViewById(R.id.button2)).setOnClickListener(new ViewOnClickListenerC1408q0(this, 29));
            final int i36 = 5;
            this.f1306F.setLevelRun(new Runnable(this) { // from class: e0.y0

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ MainActivity f3495c;

                {
                    this.f3495c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i37 = i36;
                    MainActivity mainActivity = this.f3495c;
                    switch (i37) {
                        case 0:
                            String strValueOf = String.valueOf(Integer.parseInt(mainActivity.f1335T0.getYLayMovY()) - 1);
                            C1652b.m2745o().saveString(mainActivity.f1381p, strValueOf);
                            mainActivity.f1335T0.setYLayMovY(strValueOf);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 1:
                            String str3 = MainActivity.f1288e1;
                            String strValueOf2 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{14, 116, -109, 67, 113, -16, 57, -52, 53, 124, -105, 101, 111, -41, 29, -20}, new byte[]{67, 21, -29, 28, 48, -109, 77, -91}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-111, 102, 107, 75, 53, 120, 75, 67, -86, 110, 111, 109, 43, 95, 111, 99}, new byte[]{-36, 7, 27, 20, 116, 27, 63, 42}), strValueOf2);
                            mainActivity.f1337U0.setYLayMovX(strValueOf2);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 2:
                            String str4 = MainActivity.f1288e1;
                            String strValueOf3 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-23, -60, -4, -127, 101, 54, -102, 16, -46, -52, -8, -89, 123, 17, -66, 48}, new byte[]{-92, -91, -116, -34, 36, 85, -18, 121}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-66, -70, -81, -63, 42, -44, 16, -18, -123, -78, -85, -25, 52, -13, 52, -50}, new byte[]{-13, -37, -33, -98, 107, -73, 100, -121}), strValueOf3);
                            mainActivity.f1337U0.setYLayMovX(strValueOf3);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 3:
                            String str5 = MainActivity.f1288e1;
                            String strValueOf4 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-50, 2, 110, -35, 99, 41, -71, 88, -11, 10, 106, -5, 125, 14, -99, 120, -36, 36, 75}, new byte[]{-125, 99, 30, -126, 34, 74, -51, 49}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{78, -57, 104, 72, -38, 118, -74, -105, 117, -49, 108, 110, -60, 81, -110, -73, 92, -31, 77}, new byte[]{3, -90, 24, 23, -101, 21, -62, -2}), strValueOf4);
                            mainActivity.f1339V0.setYLayMovX(strValueOf4);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 4:
                            String str6 = MainActivity.f1288e1;
                            String strValueOf5 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{9, 14, -71, 59, 29, -6, -36, -79, 50, 6, -67, 29, 3, -35, -8, -111, 27, 40, -100}, new byte[]{68, 111, -55, 100, 92, -103, -88, -40}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-6, -123, -102, 59, 29, -39, 59, 123, -63, -115, -98, 29, 3, -2, 31, 91, -24, -93, -65}, new byte[]{-73, -28, -22, 100, 92, -70, 79, 18}), strValueOf5);
                            mainActivity.f1339V0.setYLayMovX(strValueOf5);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 5:
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{63, -39, 57, 81, -26, 25, -125, -93, 36, -44, 48, 87, -11, 20, -113, -94, 55, -55, 57, 68, -30, 5, -120, -82, 58, -36, 50, 91, -24, 5}, new byte[]{118, -99, 102, 18, -89, 75, -36, -25}, new StringBuilder(), mainActivity), mainActivity.f1306F.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{39, 15, 115, 78, -36, 23, 125, 117, 60, 2, 122, 72, -49, 26, 113, 116, 47, 31, 115, 91, -40, 11, 118, 120, 34, 10, 120, 68, -46, 11, 125, 124, 33, 24, 100}, new byte[]{110, 75, 44, 13, -99, 69, 34, 49}, new StringBuilder(), mainActivity), mainActivity.f1306F.getLevel());
                            break;
                        case 6:
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{124, 117, -28, -97, -11, -64, 27, -76, 103, 120, -19, -103, -26, -51, 23, -75, 116, 101, -28, -108, -15, -45, 16}, new byte[]{53, 49, -69, -36, -76, -110, 68, -16}, new StringBuilder(), mainActivity), mainActivity.f1302D.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-87, 65, -112, 30, -125, 121, -84, -88, -78, 76, -103, 24, -112, 116, -96, -87, -95, 81, -112, 21, -121, 106, -89, -77, -83, 74, -100, 21}, new byte[]{-32, 5, -49, 93, -62, 43, -13, -20}, new StringBuilder(), mainActivity), mainActivity.f1302D.getLevel());
                            break;
                        case 7:
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-43, -46, -119, -64, -118, 76, -33, 120, -45, -58, -97, -49, -124, 74, -33, 104, -39, -41, -126, -36, -125, 91, -63, 111}, new byte[]{-100, -106, -42, -125, -53, 30, ByteCompanionObject.MIN_VALUE, 59}, new StringBuilder(), mainActivity), mainActivity.f1304E.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-54, 108, 111, 56, -100, -25, 14, -123, -52, 120, 121, 55, -110, -31, 14, -107, -58, 105, 100, 36, -107, -16, 16, -110, -36, 101, ByteCompanionObject.MAX_VALUE, 40, -107}, new byte[]{-125, 40, 48, 123, -35, -75, 81, -58}, new StringBuilder(), mainActivity), mainActivity.f1304E.getLevel());
                            break;
                        case 8:
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{20, -55, -61, 106, ByteCompanionObject.MAX_VALUE, 69, 62, -65, 18, -35, -43, 101, 113, 67, 62, -81, 24, -52, -56, 118, 104, 82, 47, -88, 20, -63, -35, 125, 119, 88, 47}, new byte[]{93, -115, -100, 41, 62, 23, 97, -4}, new StringBuilder(), mainActivity), mainActivity.f1308G.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-28, 51, -66, 50, -107, 44, -118, 28, -30, 39, -88, Base64.padSymbol, -101, 42, -118, 12, -24, 54, -75, 46, -126, 59, -101, 11, -28, 59, -96, 37, -99, 49, -101, 0, -32, 56, -78, 57}, new byte[]{-83, 119, -31, 113, -44, 126, -43, 95}, new StringBuilder(), mainActivity), mainActivity.f1308G.getLevel());
                            break;
                        case 9:
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-23, 64, -79, -89, -123, -65, 40, 16, -12, 65, -85, -74, -101, -70, 63, 6, -27, 72, -79, -84, -127, -84, 35}, new byte[]{-96, 4, -18, -28, -60, -19, 119, 67}, new StringBuilder(), mainActivity), mainActivity.f1310H.getisEnable().booleanValue());
                            break;
                        case 10:
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-117, -25, 3, 60, 62, -6, 126, -28, -115, -19, 8, 34, 58, -23, 121, -27, -111, -4, 20, 56, 60, -15}, new byte[]{-62, -93, 92, 125, 125, -91, 56, -74}, new StringBuilder(), mainActivity), mainActivity.f1312I.getisEnable().booleanValue());
                            break;
                        case 11:
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{97, 113, -17, -35, 0, 107, 25, 19, 105, 103, -17, -40, 6, 114, 25, 25, 123, 97}, new byte[]{40, 53, -80, -100, 67, 52, 75, 86}, new StringBuilder(), mainActivity), mainActivity.f1314J.getisEnable().booleanValue());
                            break;
                        default:
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-119, 1, 94, -57, 53, -27, -40, 126, -92, 32, 86, -61, 5, -37, -48, 126, -87, 11, 91, -53, 26, -22, -43, 109, -88, 15, 108, -19, 63}, new byte[]{-35, 104, 51, -94, 113, -124, -76, 31}, new StringBuilder(), mainActivity), mainActivity.f1316K.getisEnable().booleanValue());
                            mainActivity.m1439L(mainActivity.f1316K.getisEnable().booleanValue());
                            break;
                    }
                }
            });
            final int i37 = 6;
            this.f1302D.setLevelRun(new Runnable(this) { // from class: e0.y0

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ MainActivity f3495c;

                {
                    this.f3495c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i38 = i37;
                    MainActivity mainActivity = this.f3495c;
                    switch (i38) {
                        case 0:
                            String strValueOf = String.valueOf(Integer.parseInt(mainActivity.f1335T0.getYLayMovY()) - 1);
                            C1652b.m2745o().saveString(mainActivity.f1381p, strValueOf);
                            mainActivity.f1335T0.setYLayMovY(strValueOf);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 1:
                            String str3 = MainActivity.f1288e1;
                            String strValueOf2 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{14, 116, -109, 67, 113, -16, 57, -52, 53, 124, -105, 101, 111, -41, 29, -20}, new byte[]{67, 21, -29, 28, 48, -109, 77, -91}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-111, 102, 107, 75, 53, 120, 75, 67, -86, 110, 111, 109, 43, 95, 111, 99}, new byte[]{-36, 7, 27, 20, 116, 27, 63, 42}), strValueOf2);
                            mainActivity.f1337U0.setYLayMovX(strValueOf2);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 2:
                            String str4 = MainActivity.f1288e1;
                            String strValueOf3 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-23, -60, -4, -127, 101, 54, -102, 16, -46, -52, -8, -89, 123, 17, -66, 48}, new byte[]{-92, -91, -116, -34, 36, 85, -18, 121}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-66, -70, -81, -63, 42, -44, 16, -18, -123, -78, -85, -25, 52, -13, 52, -50}, new byte[]{-13, -37, -33, -98, 107, -73, 100, -121}), strValueOf3);
                            mainActivity.f1337U0.setYLayMovX(strValueOf3);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 3:
                            String str5 = MainActivity.f1288e1;
                            String strValueOf4 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-50, 2, 110, -35, 99, 41, -71, 88, -11, 10, 106, -5, 125, 14, -99, 120, -36, 36, 75}, new byte[]{-125, 99, 30, -126, 34, 74, -51, 49}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{78, -57, 104, 72, -38, 118, -74, -105, 117, -49, 108, 110, -60, 81, -110, -73, 92, -31, 77}, new byte[]{3, -90, 24, 23, -101, 21, -62, -2}), strValueOf4);
                            mainActivity.f1339V0.setYLayMovX(strValueOf4);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 4:
                            String str6 = MainActivity.f1288e1;
                            String strValueOf5 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{9, 14, -71, 59, 29, -6, -36, -79, 50, 6, -67, 29, 3, -35, -8, -111, 27, 40, -100}, new byte[]{68, 111, -55, 100, 92, -103, -88, -40}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-6, -123, -102, 59, 29, -39, 59, 123, -63, -115, -98, 29, 3, -2, 31, 91, -24, -93, -65}, new byte[]{-73, -28, -22, 100, 92, -70, 79, 18}), strValueOf5);
                            mainActivity.f1339V0.setYLayMovX(strValueOf5);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 5:
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{63, -39, 57, 81, -26, 25, -125, -93, 36, -44, 48, 87, -11, 20, -113, -94, 55, -55, 57, 68, -30, 5, -120, -82, 58, -36, 50, 91, -24, 5}, new byte[]{118, -99, 102, 18, -89, 75, -36, -25}, new StringBuilder(), mainActivity), mainActivity.f1306F.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{39, 15, 115, 78, -36, 23, 125, 117, 60, 2, 122, 72, -49, 26, 113, 116, 47, 31, 115, 91, -40, 11, 118, 120, 34, 10, 120, 68, -46, 11, 125, 124, 33, 24, 100}, new byte[]{110, 75, 44, 13, -99, 69, 34, 49}, new StringBuilder(), mainActivity), mainActivity.f1306F.getLevel());
                            break;
                        case 6:
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{124, 117, -28, -97, -11, -64, 27, -76, 103, 120, -19, -103, -26, -51, 23, -75, 116, 101, -28, -108, -15, -45, 16}, new byte[]{53, 49, -69, -36, -76, -110, 68, -16}, new StringBuilder(), mainActivity), mainActivity.f1302D.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-87, 65, -112, 30, -125, 121, -84, -88, -78, 76, -103, 24, -112, 116, -96, -87, -95, 81, -112, 21, -121, 106, -89, -77, -83, 74, -100, 21}, new byte[]{-32, 5, -49, 93, -62, 43, -13, -20}, new StringBuilder(), mainActivity), mainActivity.f1302D.getLevel());
                            break;
                        case 7:
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-43, -46, -119, -64, -118, 76, -33, 120, -45, -58, -97, -49, -124, 74, -33, 104, -39, -41, -126, -36, -125, 91, -63, 111}, new byte[]{-100, -106, -42, -125, -53, 30, ByteCompanionObject.MIN_VALUE, 59}, new StringBuilder(), mainActivity), mainActivity.f1304E.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-54, 108, 111, 56, -100, -25, 14, -123, -52, 120, 121, 55, -110, -31, 14, -107, -58, 105, 100, 36, -107, -16, 16, -110, -36, 101, ByteCompanionObject.MAX_VALUE, 40, -107}, new byte[]{-125, 40, 48, 123, -35, -75, 81, -58}, new StringBuilder(), mainActivity), mainActivity.f1304E.getLevel());
                            break;
                        case 8:
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{20, -55, -61, 106, ByteCompanionObject.MAX_VALUE, 69, 62, -65, 18, -35, -43, 101, 113, 67, 62, -81, 24, -52, -56, 118, 104, 82, 47, -88, 20, -63, -35, 125, 119, 88, 47}, new byte[]{93, -115, -100, 41, 62, 23, 97, -4}, new StringBuilder(), mainActivity), mainActivity.f1308G.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-28, 51, -66, 50, -107, 44, -118, 28, -30, 39, -88, Base64.padSymbol, -101, 42, -118, 12, -24, 54, -75, 46, -126, 59, -101, 11, -28, 59, -96, 37, -99, 49, -101, 0, -32, 56, -78, 57}, new byte[]{-83, 119, -31, 113, -44, 126, -43, 95}, new StringBuilder(), mainActivity), mainActivity.f1308G.getLevel());
                            break;
                        case 9:
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-23, 64, -79, -89, -123, -65, 40, 16, -12, 65, -85, -74, -101, -70, 63, 6, -27, 72, -79, -84, -127, -84, 35}, new byte[]{-96, 4, -18, -28, -60, -19, 119, 67}, new StringBuilder(), mainActivity), mainActivity.f1310H.getisEnable().booleanValue());
                            break;
                        case 10:
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-117, -25, 3, 60, 62, -6, 126, -28, -115, -19, 8, 34, 58, -23, 121, -27, -111, -4, 20, 56, 60, -15}, new byte[]{-62, -93, 92, 125, 125, -91, 56, -74}, new StringBuilder(), mainActivity), mainActivity.f1312I.getisEnable().booleanValue());
                            break;
                        case 11:
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{97, 113, -17, -35, 0, 107, 25, 19, 105, 103, -17, -40, 6, 114, 25, 25, 123, 97}, new byte[]{40, 53, -80, -100, 67, 52, 75, 86}, new StringBuilder(), mainActivity), mainActivity.f1314J.getisEnable().booleanValue());
                            break;
                        default:
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-119, 1, 94, -57, 53, -27, -40, 126, -92, 32, 86, -61, 5, -37, -48, 126, -87, 11, 91, -53, 26, -22, -43, 109, -88, 15, 108, -19, 63}, new byte[]{-35, 104, 51, -94, 113, -124, -76, 31}, new StringBuilder(), mainActivity), mainActivity.f1316K.getisEnable().booleanValue());
                            mainActivity.m1439L(mainActivity.f1316K.getisEnable().booleanValue());
                            break;
                    }
                }
            });
            final int i38 = 7;
            this.f1304E.setLevelRun(new Runnable(this) { // from class: e0.y0

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ MainActivity f3495c;

                {
                    this.f3495c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i39 = i38;
                    MainActivity mainActivity = this.f3495c;
                    switch (i39) {
                        case 0:
                            String strValueOf = String.valueOf(Integer.parseInt(mainActivity.f1335T0.getYLayMovY()) - 1);
                            C1652b.m2745o().saveString(mainActivity.f1381p, strValueOf);
                            mainActivity.f1335T0.setYLayMovY(strValueOf);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 1:
                            String str3 = MainActivity.f1288e1;
                            String strValueOf2 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{14, 116, -109, 67, 113, -16, 57, -52, 53, 124, -105, 101, 111, -41, 29, -20}, new byte[]{67, 21, -29, 28, 48, -109, 77, -91}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-111, 102, 107, 75, 53, 120, 75, 67, -86, 110, 111, 109, 43, 95, 111, 99}, new byte[]{-36, 7, 27, 20, 116, 27, 63, 42}), strValueOf2);
                            mainActivity.f1337U0.setYLayMovX(strValueOf2);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 2:
                            String str4 = MainActivity.f1288e1;
                            String strValueOf3 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-23, -60, -4, -127, 101, 54, -102, 16, -46, -52, -8, -89, 123, 17, -66, 48}, new byte[]{-92, -91, -116, -34, 36, 85, -18, 121}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-66, -70, -81, -63, 42, -44, 16, -18, -123, -78, -85, -25, 52, -13, 52, -50}, new byte[]{-13, -37, -33, -98, 107, -73, 100, -121}), strValueOf3);
                            mainActivity.f1337U0.setYLayMovX(strValueOf3);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 3:
                            String str5 = MainActivity.f1288e1;
                            String strValueOf4 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-50, 2, 110, -35, 99, 41, -71, 88, -11, 10, 106, -5, 125, 14, -99, 120, -36, 36, 75}, new byte[]{-125, 99, 30, -126, 34, 74, -51, 49}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{78, -57, 104, 72, -38, 118, -74, -105, 117, -49, 108, 110, -60, 81, -110, -73, 92, -31, 77}, new byte[]{3, -90, 24, 23, -101, 21, -62, -2}), strValueOf4);
                            mainActivity.f1339V0.setYLayMovX(strValueOf4);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 4:
                            String str6 = MainActivity.f1288e1;
                            String strValueOf5 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{9, 14, -71, 59, 29, -6, -36, -79, 50, 6, -67, 29, 3, -35, -8, -111, 27, 40, -100}, new byte[]{68, 111, -55, 100, 92, -103, -88, -40}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-6, -123, -102, 59, 29, -39, 59, 123, -63, -115, -98, 29, 3, -2, 31, 91, -24, -93, -65}, new byte[]{-73, -28, -22, 100, 92, -70, 79, 18}), strValueOf5);
                            mainActivity.f1339V0.setYLayMovX(strValueOf5);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 5:
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{63, -39, 57, 81, -26, 25, -125, -93, 36, -44, 48, 87, -11, 20, -113, -94, 55, -55, 57, 68, -30, 5, -120, -82, 58, -36, 50, 91, -24, 5}, new byte[]{118, -99, 102, 18, -89, 75, -36, -25}, new StringBuilder(), mainActivity), mainActivity.f1306F.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{39, 15, 115, 78, -36, 23, 125, 117, 60, 2, 122, 72, -49, 26, 113, 116, 47, 31, 115, 91, -40, 11, 118, 120, 34, 10, 120, 68, -46, 11, 125, 124, 33, 24, 100}, new byte[]{110, 75, 44, 13, -99, 69, 34, 49}, new StringBuilder(), mainActivity), mainActivity.f1306F.getLevel());
                            break;
                        case 6:
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{124, 117, -28, -97, -11, -64, 27, -76, 103, 120, -19, -103, -26, -51, 23, -75, 116, 101, -28, -108, -15, -45, 16}, new byte[]{53, 49, -69, -36, -76, -110, 68, -16}, new StringBuilder(), mainActivity), mainActivity.f1302D.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-87, 65, -112, 30, -125, 121, -84, -88, -78, 76, -103, 24, -112, 116, -96, -87, -95, 81, -112, 21, -121, 106, -89, -77, -83, 74, -100, 21}, new byte[]{-32, 5, -49, 93, -62, 43, -13, -20}, new StringBuilder(), mainActivity), mainActivity.f1302D.getLevel());
                            break;
                        case 7:
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-43, -46, -119, -64, -118, 76, -33, 120, -45, -58, -97, -49, -124, 74, -33, 104, -39, -41, -126, -36, -125, 91, -63, 111}, new byte[]{-100, -106, -42, -125, -53, 30, ByteCompanionObject.MIN_VALUE, 59}, new StringBuilder(), mainActivity), mainActivity.f1304E.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-54, 108, 111, 56, -100, -25, 14, -123, -52, 120, 121, 55, -110, -31, 14, -107, -58, 105, 100, 36, -107, -16, 16, -110, -36, 101, ByteCompanionObject.MAX_VALUE, 40, -107}, new byte[]{-125, 40, 48, 123, -35, -75, 81, -58}, new StringBuilder(), mainActivity), mainActivity.f1304E.getLevel());
                            break;
                        case 8:
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{20, -55, -61, 106, ByteCompanionObject.MAX_VALUE, 69, 62, -65, 18, -35, -43, 101, 113, 67, 62, -81, 24, -52, -56, 118, 104, 82, 47, -88, 20, -63, -35, 125, 119, 88, 47}, new byte[]{93, -115, -100, 41, 62, 23, 97, -4}, new StringBuilder(), mainActivity), mainActivity.f1308G.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-28, 51, -66, 50, -107, 44, -118, 28, -30, 39, -88, Base64.padSymbol, -101, 42, -118, 12, -24, 54, -75, 46, -126, 59, -101, 11, -28, 59, -96, 37, -99, 49, -101, 0, -32, 56, -78, 57}, new byte[]{-83, 119, -31, 113, -44, 126, -43, 95}, new StringBuilder(), mainActivity), mainActivity.f1308G.getLevel());
                            break;
                        case 9:
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-23, 64, -79, -89, -123, -65, 40, 16, -12, 65, -85, -74, -101, -70, 63, 6, -27, 72, -79, -84, -127, -84, 35}, new byte[]{-96, 4, -18, -28, -60, -19, 119, 67}, new StringBuilder(), mainActivity), mainActivity.f1310H.getisEnable().booleanValue());
                            break;
                        case 10:
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-117, -25, 3, 60, 62, -6, 126, -28, -115, -19, 8, 34, 58, -23, 121, -27, -111, -4, 20, 56, 60, -15}, new byte[]{-62, -93, 92, 125, 125, -91, 56, -74}, new StringBuilder(), mainActivity), mainActivity.f1312I.getisEnable().booleanValue());
                            break;
                        case 11:
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{97, 113, -17, -35, 0, 107, 25, 19, 105, 103, -17, -40, 6, 114, 25, 25, 123, 97}, new byte[]{40, 53, -80, -100, 67, 52, 75, 86}, new StringBuilder(), mainActivity), mainActivity.f1314J.getisEnable().booleanValue());
                            break;
                        default:
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-119, 1, 94, -57, 53, -27, -40, 126, -92, 32, 86, -61, 5, -37, -48, 126, -87, 11, 91, -53, 26, -22, -43, 109, -88, 15, 108, -19, 63}, new byte[]{-35, 104, 51, -94, 113, -124, -76, 31}, new StringBuilder(), mainActivity), mainActivity.f1316K.getisEnable().booleanValue());
                            mainActivity.m1439L(mainActivity.f1316K.getisEnable().booleanValue());
                            break;
                    }
                }
            });
            this.f1308G.setLevelRun(new Runnable(this) { // from class: e0.y0

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ MainActivity f3495c;

                {
                    this.f3495c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i39 = i11;
                    MainActivity mainActivity = this.f3495c;
                    switch (i39) {
                        case 0:
                            String strValueOf = String.valueOf(Integer.parseInt(mainActivity.f1335T0.getYLayMovY()) - 1);
                            C1652b.m2745o().saveString(mainActivity.f1381p, strValueOf);
                            mainActivity.f1335T0.setYLayMovY(strValueOf);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 1:
                            String str3 = MainActivity.f1288e1;
                            String strValueOf2 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{14, 116, -109, 67, 113, -16, 57, -52, 53, 124, -105, 101, 111, -41, 29, -20}, new byte[]{67, 21, -29, 28, 48, -109, 77, -91}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-111, 102, 107, 75, 53, 120, 75, 67, -86, 110, 111, 109, 43, 95, 111, 99}, new byte[]{-36, 7, 27, 20, 116, 27, 63, 42}), strValueOf2);
                            mainActivity.f1337U0.setYLayMovX(strValueOf2);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 2:
                            String str4 = MainActivity.f1288e1;
                            String strValueOf3 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-23, -60, -4, -127, 101, 54, -102, 16, -46, -52, -8, -89, 123, 17, -66, 48}, new byte[]{-92, -91, -116, -34, 36, 85, -18, 121}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-66, -70, -81, -63, 42, -44, 16, -18, -123, -78, -85, -25, 52, -13, 52, -50}, new byte[]{-13, -37, -33, -98, 107, -73, 100, -121}), strValueOf3);
                            mainActivity.f1337U0.setYLayMovX(strValueOf3);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 3:
                            String str5 = MainActivity.f1288e1;
                            String strValueOf4 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-50, 2, 110, -35, 99, 41, -71, 88, -11, 10, 106, -5, 125, 14, -99, 120, -36, 36, 75}, new byte[]{-125, 99, 30, -126, 34, 74, -51, 49}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{78, -57, 104, 72, -38, 118, -74, -105, 117, -49, 108, 110, -60, 81, -110, -73, 92, -31, 77}, new byte[]{3, -90, 24, 23, -101, 21, -62, -2}), strValueOf4);
                            mainActivity.f1339V0.setYLayMovX(strValueOf4);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 4:
                            String str6 = MainActivity.f1288e1;
                            String strValueOf5 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{9, 14, -71, 59, 29, -6, -36, -79, 50, 6, -67, 29, 3, -35, -8, -111, 27, 40, -100}, new byte[]{68, 111, -55, 100, 92, -103, -88, -40}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-6, -123, -102, 59, 29, -39, 59, 123, -63, -115, -98, 29, 3, -2, 31, 91, -24, -93, -65}, new byte[]{-73, -28, -22, 100, 92, -70, 79, 18}), strValueOf5);
                            mainActivity.f1339V0.setYLayMovX(strValueOf5);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 5:
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{63, -39, 57, 81, -26, 25, -125, -93, 36, -44, 48, 87, -11, 20, -113, -94, 55, -55, 57, 68, -30, 5, -120, -82, 58, -36, 50, 91, -24, 5}, new byte[]{118, -99, 102, 18, -89, 75, -36, -25}, new StringBuilder(), mainActivity), mainActivity.f1306F.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{39, 15, 115, 78, -36, 23, 125, 117, 60, 2, 122, 72, -49, 26, 113, 116, 47, 31, 115, 91, -40, 11, 118, 120, 34, 10, 120, 68, -46, 11, 125, 124, 33, 24, 100}, new byte[]{110, 75, 44, 13, -99, 69, 34, 49}, new StringBuilder(), mainActivity), mainActivity.f1306F.getLevel());
                            break;
                        case 6:
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{124, 117, -28, -97, -11, -64, 27, -76, 103, 120, -19, -103, -26, -51, 23, -75, 116, 101, -28, -108, -15, -45, 16}, new byte[]{53, 49, -69, -36, -76, -110, 68, -16}, new StringBuilder(), mainActivity), mainActivity.f1302D.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-87, 65, -112, 30, -125, 121, -84, -88, -78, 76, -103, 24, -112, 116, -96, -87, -95, 81, -112, 21, -121, 106, -89, -77, -83, 74, -100, 21}, new byte[]{-32, 5, -49, 93, -62, 43, -13, -20}, new StringBuilder(), mainActivity), mainActivity.f1302D.getLevel());
                            break;
                        case 7:
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-43, -46, -119, -64, -118, 76, -33, 120, -45, -58, -97, -49, -124, 74, -33, 104, -39, -41, -126, -36, -125, 91, -63, 111}, new byte[]{-100, -106, -42, -125, -53, 30, ByteCompanionObject.MIN_VALUE, 59}, new StringBuilder(), mainActivity), mainActivity.f1304E.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-54, 108, 111, 56, -100, -25, 14, -123, -52, 120, 121, 55, -110, -31, 14, -107, -58, 105, 100, 36, -107, -16, 16, -110, -36, 101, ByteCompanionObject.MAX_VALUE, 40, -107}, new byte[]{-125, 40, 48, 123, -35, -75, 81, -58}, new StringBuilder(), mainActivity), mainActivity.f1304E.getLevel());
                            break;
                        case 8:
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{20, -55, -61, 106, ByteCompanionObject.MAX_VALUE, 69, 62, -65, 18, -35, -43, 101, 113, 67, 62, -81, 24, -52, -56, 118, 104, 82, 47, -88, 20, -63, -35, 125, 119, 88, 47}, new byte[]{93, -115, -100, 41, 62, 23, 97, -4}, new StringBuilder(), mainActivity), mainActivity.f1308G.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-28, 51, -66, 50, -107, 44, -118, 28, -30, 39, -88, Base64.padSymbol, -101, 42, -118, 12, -24, 54, -75, 46, -126, 59, -101, 11, -28, 59, -96, 37, -99, 49, -101, 0, -32, 56, -78, 57}, new byte[]{-83, 119, -31, 113, -44, 126, -43, 95}, new StringBuilder(), mainActivity), mainActivity.f1308G.getLevel());
                            break;
                        case 9:
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-23, 64, -79, -89, -123, -65, 40, 16, -12, 65, -85, -74, -101, -70, 63, 6, -27, 72, -79, -84, -127, -84, 35}, new byte[]{-96, 4, -18, -28, -60, -19, 119, 67}, new StringBuilder(), mainActivity), mainActivity.f1310H.getisEnable().booleanValue());
                            break;
                        case 10:
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-117, -25, 3, 60, 62, -6, 126, -28, -115, -19, 8, 34, 58, -23, 121, -27, -111, -4, 20, 56, 60, -15}, new byte[]{-62, -93, 92, 125, 125, -91, 56, -74}, new StringBuilder(), mainActivity), mainActivity.f1312I.getisEnable().booleanValue());
                            break;
                        case 11:
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{97, 113, -17, -35, 0, 107, 25, 19, 105, 103, -17, -40, 6, 114, 25, 25, 123, 97}, new byte[]{40, 53, -80, -100, 67, 52, 75, 86}, new StringBuilder(), mainActivity), mainActivity.f1314J.getisEnable().booleanValue());
                            break;
                        default:
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-119, 1, 94, -57, 53, -27, -40, 126, -92, 32, 86, -61, 5, -37, -48, 126, -87, 11, 91, -53, 26, -22, -43, 109, -88, 15, 108, -19, 63}, new byte[]{-35, 104, 51, -94, 113, -124, -76, 31}, new StringBuilder(), mainActivity), mainActivity.f1316K.getisEnable().booleanValue());
                            mainActivity.m1439L(mainActivity.f1316K.getisEnable().booleanValue());
                            break;
                    }
                }
            });
            final int i39 = 9;
            this.f1310H.setLevelRun(new Runnable(this) { // from class: e0.y0

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ MainActivity f3495c;

                {
                    this.f3495c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i310 = i39;
                    MainActivity mainActivity = this.f3495c;
                    switch (i310) {
                        case 0:
                            String strValueOf = String.valueOf(Integer.parseInt(mainActivity.f1335T0.getYLayMovY()) - 1);
                            C1652b.m2745o().saveString(mainActivity.f1381p, strValueOf);
                            mainActivity.f1335T0.setYLayMovY(strValueOf);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 1:
                            String str3 = MainActivity.f1288e1;
                            String strValueOf2 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{14, 116, -109, 67, 113, -16, 57, -52, 53, 124, -105, 101, 111, -41, 29, -20}, new byte[]{67, 21, -29, 28, 48, -109, 77, -91}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-111, 102, 107, 75, 53, 120, 75, 67, -86, 110, 111, 109, 43, 95, 111, 99}, new byte[]{-36, 7, 27, 20, 116, 27, 63, 42}), strValueOf2);
                            mainActivity.f1337U0.setYLayMovX(strValueOf2);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 2:
                            String str4 = MainActivity.f1288e1;
                            String strValueOf3 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-23, -60, -4, -127, 101, 54, -102, 16, -46, -52, -8, -89, 123, 17, -66, 48}, new byte[]{-92, -91, -116, -34, 36, 85, -18, 121}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-66, -70, -81, -63, 42, -44, 16, -18, -123, -78, -85, -25, 52, -13, 52, -50}, new byte[]{-13, -37, -33, -98, 107, -73, 100, -121}), strValueOf3);
                            mainActivity.f1337U0.setYLayMovX(strValueOf3);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 3:
                            String str5 = MainActivity.f1288e1;
                            String strValueOf4 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-50, 2, 110, -35, 99, 41, -71, 88, -11, 10, 106, -5, 125, 14, -99, 120, -36, 36, 75}, new byte[]{-125, 99, 30, -126, 34, 74, -51, 49}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{78, -57, 104, 72, -38, 118, -74, -105, 117, -49, 108, 110, -60, 81, -110, -73, 92, -31, 77}, new byte[]{3, -90, 24, 23, -101, 21, -62, -2}), strValueOf4);
                            mainActivity.f1339V0.setYLayMovX(strValueOf4);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 4:
                            String str6 = MainActivity.f1288e1;
                            String strValueOf5 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{9, 14, -71, 59, 29, -6, -36, -79, 50, 6, -67, 29, 3, -35, -8, -111, 27, 40, -100}, new byte[]{68, 111, -55, 100, 92, -103, -88, -40}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-6, -123, -102, 59, 29, -39, 59, 123, -63, -115, -98, 29, 3, -2, 31, 91, -24, -93, -65}, new byte[]{-73, -28, -22, 100, 92, -70, 79, 18}), strValueOf5);
                            mainActivity.f1339V0.setYLayMovX(strValueOf5);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 5:
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{63, -39, 57, 81, -26, 25, -125, -93, 36, -44, 48, 87, -11, 20, -113, -94, 55, -55, 57, 68, -30, 5, -120, -82, 58, -36, 50, 91, -24, 5}, new byte[]{118, -99, 102, 18, -89, 75, -36, -25}, new StringBuilder(), mainActivity), mainActivity.f1306F.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{39, 15, 115, 78, -36, 23, 125, 117, 60, 2, 122, 72, -49, 26, 113, 116, 47, 31, 115, 91, -40, 11, 118, 120, 34, 10, 120, 68, -46, 11, 125, 124, 33, 24, 100}, new byte[]{110, 75, 44, 13, -99, 69, 34, 49}, new StringBuilder(), mainActivity), mainActivity.f1306F.getLevel());
                            break;
                        case 6:
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{124, 117, -28, -97, -11, -64, 27, -76, 103, 120, -19, -103, -26, -51, 23, -75, 116, 101, -28, -108, -15, -45, 16}, new byte[]{53, 49, -69, -36, -76, -110, 68, -16}, new StringBuilder(), mainActivity), mainActivity.f1302D.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-87, 65, -112, 30, -125, 121, -84, -88, -78, 76, -103, 24, -112, 116, -96, -87, -95, 81, -112, 21, -121, 106, -89, -77, -83, 74, -100, 21}, new byte[]{-32, 5, -49, 93, -62, 43, -13, -20}, new StringBuilder(), mainActivity), mainActivity.f1302D.getLevel());
                            break;
                        case 7:
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-43, -46, -119, -64, -118, 76, -33, 120, -45, -58, -97, -49, -124, 74, -33, 104, -39, -41, -126, -36, -125, 91, -63, 111}, new byte[]{-100, -106, -42, -125, -53, 30, ByteCompanionObject.MIN_VALUE, 59}, new StringBuilder(), mainActivity), mainActivity.f1304E.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-54, 108, 111, 56, -100, -25, 14, -123, -52, 120, 121, 55, -110, -31, 14, -107, -58, 105, 100, 36, -107, -16, 16, -110, -36, 101, ByteCompanionObject.MAX_VALUE, 40, -107}, new byte[]{-125, 40, 48, 123, -35, -75, 81, -58}, new StringBuilder(), mainActivity), mainActivity.f1304E.getLevel());
                            break;
                        case 8:
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{20, -55, -61, 106, ByteCompanionObject.MAX_VALUE, 69, 62, -65, 18, -35, -43, 101, 113, 67, 62, -81, 24, -52, -56, 118, 104, 82, 47, -88, 20, -63, -35, 125, 119, 88, 47}, new byte[]{93, -115, -100, 41, 62, 23, 97, -4}, new StringBuilder(), mainActivity), mainActivity.f1308G.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-28, 51, -66, 50, -107, 44, -118, 28, -30, 39, -88, Base64.padSymbol, -101, 42, -118, 12, -24, 54, -75, 46, -126, 59, -101, 11, -28, 59, -96, 37, -99, 49, -101, 0, -32, 56, -78, 57}, new byte[]{-83, 119, -31, 113, -44, 126, -43, 95}, new StringBuilder(), mainActivity), mainActivity.f1308G.getLevel());
                            break;
                        case 9:
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-23, 64, -79, -89, -123, -65, 40, 16, -12, 65, -85, -74, -101, -70, 63, 6, -27, 72, -79, -84, -127, -84, 35}, new byte[]{-96, 4, -18, -28, -60, -19, 119, 67}, new StringBuilder(), mainActivity), mainActivity.f1310H.getisEnable().booleanValue());
                            break;
                        case 10:
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-117, -25, 3, 60, 62, -6, 126, -28, -115, -19, 8, 34, 58, -23, 121, -27, -111, -4, 20, 56, 60, -15}, new byte[]{-62, -93, 92, 125, 125, -91, 56, -74}, new StringBuilder(), mainActivity), mainActivity.f1312I.getisEnable().booleanValue());
                            break;
                        case 11:
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{97, 113, -17, -35, 0, 107, 25, 19, 105, 103, -17, -40, 6, 114, 25, 25, 123, 97}, new byte[]{40, 53, -80, -100, 67, 52, 75, 86}, new StringBuilder(), mainActivity), mainActivity.f1314J.getisEnable().booleanValue());
                            break;
                        default:
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-119, 1, 94, -57, 53, -27, -40, 126, -92, 32, 86, -61, 5, -37, -48, 126, -87, 11, 91, -53, 26, -22, -43, 109, -88, 15, 108, -19, 63}, new byte[]{-35, 104, 51, -94, 113, -124, -76, 31}, new StringBuilder(), mainActivity), mainActivity.f1316K.getisEnable().booleanValue());
                            mainActivity.m1439L(mainActivity.f1316K.getisEnable().booleanValue());
                            break;
                    }
                }
            });
            this.f1312I.setLevelRun(new Runnable(this) { // from class: e0.y0

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ MainActivity f3495c;

                {
                    this.f3495c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i310 = i13;
                    MainActivity mainActivity = this.f3495c;
                    switch (i310) {
                        case 0:
                            String strValueOf = String.valueOf(Integer.parseInt(mainActivity.f1335T0.getYLayMovY()) - 1);
                            C1652b.m2745o().saveString(mainActivity.f1381p, strValueOf);
                            mainActivity.f1335T0.setYLayMovY(strValueOf);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 1:
                            String str3 = MainActivity.f1288e1;
                            String strValueOf2 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{14, 116, -109, 67, 113, -16, 57, -52, 53, 124, -105, 101, 111, -41, 29, -20}, new byte[]{67, 21, -29, 28, 48, -109, 77, -91}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-111, 102, 107, 75, 53, 120, 75, 67, -86, 110, 111, 109, 43, 95, 111, 99}, new byte[]{-36, 7, 27, 20, 116, 27, 63, 42}), strValueOf2);
                            mainActivity.f1337U0.setYLayMovX(strValueOf2);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 2:
                            String str4 = MainActivity.f1288e1;
                            String strValueOf3 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-23, -60, -4, -127, 101, 54, -102, 16, -46, -52, -8, -89, 123, 17, -66, 48}, new byte[]{-92, -91, -116, -34, 36, 85, -18, 121}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-66, -70, -81, -63, 42, -44, 16, -18, -123, -78, -85, -25, 52, -13, 52, -50}, new byte[]{-13, -37, -33, -98, 107, -73, 100, -121}), strValueOf3);
                            mainActivity.f1337U0.setYLayMovX(strValueOf3);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 3:
                            String str5 = MainActivity.f1288e1;
                            String strValueOf4 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-50, 2, 110, -35, 99, 41, -71, 88, -11, 10, 106, -5, 125, 14, -99, 120, -36, 36, 75}, new byte[]{-125, 99, 30, -126, 34, 74, -51, 49}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{78, -57, 104, 72, -38, 118, -74, -105, 117, -49, 108, 110, -60, 81, -110, -73, 92, -31, 77}, new byte[]{3, -90, 24, 23, -101, 21, -62, -2}), strValueOf4);
                            mainActivity.f1339V0.setYLayMovX(strValueOf4);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 4:
                            String str6 = MainActivity.f1288e1;
                            String strValueOf5 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{9, 14, -71, 59, 29, -6, -36, -79, 50, 6, -67, 29, 3, -35, -8, -111, 27, 40, -100}, new byte[]{68, 111, -55, 100, 92, -103, -88, -40}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-6, -123, -102, 59, 29, -39, 59, 123, -63, -115, -98, 29, 3, -2, 31, 91, -24, -93, -65}, new byte[]{-73, -28, -22, 100, 92, -70, 79, 18}), strValueOf5);
                            mainActivity.f1339V0.setYLayMovX(strValueOf5);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 5:
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{63, -39, 57, 81, -26, 25, -125, -93, 36, -44, 48, 87, -11, 20, -113, -94, 55, -55, 57, 68, -30, 5, -120, -82, 58, -36, 50, 91, -24, 5}, new byte[]{118, -99, 102, 18, -89, 75, -36, -25}, new StringBuilder(), mainActivity), mainActivity.f1306F.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{39, 15, 115, 78, -36, 23, 125, 117, 60, 2, 122, 72, -49, 26, 113, 116, 47, 31, 115, 91, -40, 11, 118, 120, 34, 10, 120, 68, -46, 11, 125, 124, 33, 24, 100}, new byte[]{110, 75, 44, 13, -99, 69, 34, 49}, new StringBuilder(), mainActivity), mainActivity.f1306F.getLevel());
                            break;
                        case 6:
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{124, 117, -28, -97, -11, -64, 27, -76, 103, 120, -19, -103, -26, -51, 23, -75, 116, 101, -28, -108, -15, -45, 16}, new byte[]{53, 49, -69, -36, -76, -110, 68, -16}, new StringBuilder(), mainActivity), mainActivity.f1302D.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-87, 65, -112, 30, -125, 121, -84, -88, -78, 76, -103, 24, -112, 116, -96, -87, -95, 81, -112, 21, -121, 106, -89, -77, -83, 74, -100, 21}, new byte[]{-32, 5, -49, 93, -62, 43, -13, -20}, new StringBuilder(), mainActivity), mainActivity.f1302D.getLevel());
                            break;
                        case 7:
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-43, -46, -119, -64, -118, 76, -33, 120, -45, -58, -97, -49, -124, 74, -33, 104, -39, -41, -126, -36, -125, 91, -63, 111}, new byte[]{-100, -106, -42, -125, -53, 30, ByteCompanionObject.MIN_VALUE, 59}, new StringBuilder(), mainActivity), mainActivity.f1304E.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-54, 108, 111, 56, -100, -25, 14, -123, -52, 120, 121, 55, -110, -31, 14, -107, -58, 105, 100, 36, -107, -16, 16, -110, -36, 101, ByteCompanionObject.MAX_VALUE, 40, -107}, new byte[]{-125, 40, 48, 123, -35, -75, 81, -58}, new StringBuilder(), mainActivity), mainActivity.f1304E.getLevel());
                            break;
                        case 8:
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{20, -55, -61, 106, ByteCompanionObject.MAX_VALUE, 69, 62, -65, 18, -35, -43, 101, 113, 67, 62, -81, 24, -52, -56, 118, 104, 82, 47, -88, 20, -63, -35, 125, 119, 88, 47}, new byte[]{93, -115, -100, 41, 62, 23, 97, -4}, new StringBuilder(), mainActivity), mainActivity.f1308G.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-28, 51, -66, 50, -107, 44, -118, 28, -30, 39, -88, Base64.padSymbol, -101, 42, -118, 12, -24, 54, -75, 46, -126, 59, -101, 11, -28, 59, -96, 37, -99, 49, -101, 0, -32, 56, -78, 57}, new byte[]{-83, 119, -31, 113, -44, 126, -43, 95}, new StringBuilder(), mainActivity), mainActivity.f1308G.getLevel());
                            break;
                        case 9:
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-23, 64, -79, -89, -123, -65, 40, 16, -12, 65, -85, -74, -101, -70, 63, 6, -27, 72, -79, -84, -127, -84, 35}, new byte[]{-96, 4, -18, -28, -60, -19, 119, 67}, new StringBuilder(), mainActivity), mainActivity.f1310H.getisEnable().booleanValue());
                            break;
                        case 10:
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-117, -25, 3, 60, 62, -6, 126, -28, -115, -19, 8, 34, 58, -23, 121, -27, -111, -4, 20, 56, 60, -15}, new byte[]{-62, -93, 92, 125, 125, -91, 56, -74}, new StringBuilder(), mainActivity), mainActivity.f1312I.getisEnable().booleanValue());
                            break;
                        case 11:
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{97, 113, -17, -35, 0, 107, 25, 19, 105, 103, -17, -40, 6, 114, 25, 25, 123, 97}, new byte[]{40, 53, -80, -100, 67, 52, 75, 86}, new StringBuilder(), mainActivity), mainActivity.f1314J.getisEnable().booleanValue());
                            break;
                        default:
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-119, 1, 94, -57, 53, -27, -40, 126, -92, 32, 86, -61, 5, -37, -48, 126, -87, 11, 91, -53, 26, -22, -43, 109, -88, 15, 108, -19, 63}, new byte[]{-35, 104, 51, -94, 113, -124, -76, 31}, new StringBuilder(), mainActivity), mainActivity.f1316K.getisEnable().booleanValue());
                            mainActivity.m1439L(mainActivity.f1316K.getisEnable().booleanValue());
                            break;
                    }
                }
            });
            final int i40 = 11;
            this.f1314J.setLevelRun(new Runnable(this) { // from class: e0.y0

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ MainActivity f3495c;

                {
                    this.f3495c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i310 = i40;
                    MainActivity mainActivity = this.f3495c;
                    switch (i310) {
                        case 0:
                            String strValueOf = String.valueOf(Integer.parseInt(mainActivity.f1335T0.getYLayMovY()) - 1);
                            C1652b.m2745o().saveString(mainActivity.f1381p, strValueOf);
                            mainActivity.f1335T0.setYLayMovY(strValueOf);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 1:
                            String str3 = MainActivity.f1288e1;
                            String strValueOf2 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{14, 116, -109, 67, 113, -16, 57, -52, 53, 124, -105, 101, 111, -41, 29, -20}, new byte[]{67, 21, -29, 28, 48, -109, 77, -91}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-111, 102, 107, 75, 53, 120, 75, 67, -86, 110, 111, 109, 43, 95, 111, 99}, new byte[]{-36, 7, 27, 20, 116, 27, 63, 42}), strValueOf2);
                            mainActivity.f1337U0.setYLayMovX(strValueOf2);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 2:
                            String str4 = MainActivity.f1288e1;
                            String strValueOf3 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-23, -60, -4, -127, 101, 54, -102, 16, -46, -52, -8, -89, 123, 17, -66, 48}, new byte[]{-92, -91, -116, -34, 36, 85, -18, 121}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-66, -70, -81, -63, 42, -44, 16, -18, -123, -78, -85, -25, 52, -13, 52, -50}, new byte[]{-13, -37, -33, -98, 107, -73, 100, -121}), strValueOf3);
                            mainActivity.f1337U0.setYLayMovX(strValueOf3);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 3:
                            String str5 = MainActivity.f1288e1;
                            String strValueOf4 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-50, 2, 110, -35, 99, 41, -71, 88, -11, 10, 106, -5, 125, 14, -99, 120, -36, 36, 75}, new byte[]{-125, 99, 30, -126, 34, 74, -51, 49}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{78, -57, 104, 72, -38, 118, -74, -105, 117, -49, 108, 110, -60, 81, -110, -73, 92, -31, 77}, new byte[]{3, -90, 24, 23, -101, 21, -62, -2}), strValueOf4);
                            mainActivity.f1339V0.setYLayMovX(strValueOf4);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 4:
                            String str6 = MainActivity.f1288e1;
                            String strValueOf5 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{9, 14, -71, 59, 29, -6, -36, -79, 50, 6, -67, 29, 3, -35, -8, -111, 27, 40, -100}, new byte[]{68, 111, -55, 100, 92, -103, -88, -40}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-6, -123, -102, 59, 29, -39, 59, 123, -63, -115, -98, 29, 3, -2, 31, 91, -24, -93, -65}, new byte[]{-73, -28, -22, 100, 92, -70, 79, 18}), strValueOf5);
                            mainActivity.f1339V0.setYLayMovX(strValueOf5);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 5:
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{63, -39, 57, 81, -26, 25, -125, -93, 36, -44, 48, 87, -11, 20, -113, -94, 55, -55, 57, 68, -30, 5, -120, -82, 58, -36, 50, 91, -24, 5}, new byte[]{118, -99, 102, 18, -89, 75, -36, -25}, new StringBuilder(), mainActivity), mainActivity.f1306F.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{39, 15, 115, 78, -36, 23, 125, 117, 60, 2, 122, 72, -49, 26, 113, 116, 47, 31, 115, 91, -40, 11, 118, 120, 34, 10, 120, 68, -46, 11, 125, 124, 33, 24, 100}, new byte[]{110, 75, 44, 13, -99, 69, 34, 49}, new StringBuilder(), mainActivity), mainActivity.f1306F.getLevel());
                            break;
                        case 6:
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{124, 117, -28, -97, -11, -64, 27, -76, 103, 120, -19, -103, -26, -51, 23, -75, 116, 101, -28, -108, -15, -45, 16}, new byte[]{53, 49, -69, -36, -76, -110, 68, -16}, new StringBuilder(), mainActivity), mainActivity.f1302D.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-87, 65, -112, 30, -125, 121, -84, -88, -78, 76, -103, 24, -112, 116, -96, -87, -95, 81, -112, 21, -121, 106, -89, -77, -83, 74, -100, 21}, new byte[]{-32, 5, -49, 93, -62, 43, -13, -20}, new StringBuilder(), mainActivity), mainActivity.f1302D.getLevel());
                            break;
                        case 7:
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-43, -46, -119, -64, -118, 76, -33, 120, -45, -58, -97, -49, -124, 74, -33, 104, -39, -41, -126, -36, -125, 91, -63, 111}, new byte[]{-100, -106, -42, -125, -53, 30, ByteCompanionObject.MIN_VALUE, 59}, new StringBuilder(), mainActivity), mainActivity.f1304E.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-54, 108, 111, 56, -100, -25, 14, -123, -52, 120, 121, 55, -110, -31, 14, -107, -58, 105, 100, 36, -107, -16, 16, -110, -36, 101, ByteCompanionObject.MAX_VALUE, 40, -107}, new byte[]{-125, 40, 48, 123, -35, -75, 81, -58}, new StringBuilder(), mainActivity), mainActivity.f1304E.getLevel());
                            break;
                        case 8:
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{20, -55, -61, 106, ByteCompanionObject.MAX_VALUE, 69, 62, -65, 18, -35, -43, 101, 113, 67, 62, -81, 24, -52, -56, 118, 104, 82, 47, -88, 20, -63, -35, 125, 119, 88, 47}, new byte[]{93, -115, -100, 41, 62, 23, 97, -4}, new StringBuilder(), mainActivity), mainActivity.f1308G.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-28, 51, -66, 50, -107, 44, -118, 28, -30, 39, -88, Base64.padSymbol, -101, 42, -118, 12, -24, 54, -75, 46, -126, 59, -101, 11, -28, 59, -96, 37, -99, 49, -101, 0, -32, 56, -78, 57}, new byte[]{-83, 119, -31, 113, -44, 126, -43, 95}, new StringBuilder(), mainActivity), mainActivity.f1308G.getLevel());
                            break;
                        case 9:
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-23, 64, -79, -89, -123, -65, 40, 16, -12, 65, -85, -74, -101, -70, 63, 6, -27, 72, -79, -84, -127, -84, 35}, new byte[]{-96, 4, -18, -28, -60, -19, 119, 67}, new StringBuilder(), mainActivity), mainActivity.f1310H.getisEnable().booleanValue());
                            break;
                        case 10:
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-117, -25, 3, 60, 62, -6, 126, -28, -115, -19, 8, 34, 58, -23, 121, -27, -111, -4, 20, 56, 60, -15}, new byte[]{-62, -93, 92, 125, 125, -91, 56, -74}, new StringBuilder(), mainActivity), mainActivity.f1312I.getisEnable().booleanValue());
                            break;
                        case 11:
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{97, 113, -17, -35, 0, 107, 25, 19, 105, 103, -17, -40, 6, 114, 25, 25, 123, 97}, new byte[]{40, 53, -80, -100, 67, 52, 75, 86}, new StringBuilder(), mainActivity), mainActivity.f1314J.getisEnable().booleanValue());
                            break;
                        default:
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-119, 1, 94, -57, 53, -27, -40, 126, -92, 32, 86, -61, 5, -37, -48, 126, -87, 11, 91, -53, 26, -22, -43, 109, -88, 15, 108, -19, 63}, new byte[]{-35, 104, 51, -94, 113, -124, -76, 31}, new StringBuilder(), mainActivity), mainActivity.f1316K.getisEnable().booleanValue());
                            mainActivity.m1439L(mainActivity.f1316K.getisEnable().booleanValue());
                            break;
                    }
                }
            });
            final int i41 = 12;
            this.f1316K.setLevelRun(new Runnable(this) { // from class: e0.y0

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ MainActivity f3495c;

                {
                    this.f3495c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i310 = i41;
                    MainActivity mainActivity = this.f3495c;
                    switch (i310) {
                        case 0:
                            String strValueOf = String.valueOf(Integer.parseInt(mainActivity.f1335T0.getYLayMovY()) - 1);
                            C1652b.m2745o().saveString(mainActivity.f1381p, strValueOf);
                            mainActivity.f1335T0.setYLayMovY(strValueOf);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 1:
                            String str3 = MainActivity.f1288e1;
                            String strValueOf2 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{14, 116, -109, 67, 113, -16, 57, -52, 53, 124, -105, 101, 111, -41, 29, -20}, new byte[]{67, 21, -29, 28, 48, -109, 77, -91}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-111, 102, 107, 75, 53, 120, 75, 67, -86, 110, 111, 109, 43, 95, 111, 99}, new byte[]{-36, 7, 27, 20, 116, 27, 63, 42}), strValueOf2);
                            mainActivity.f1337U0.setYLayMovX(strValueOf2);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 2:
                            String str4 = MainActivity.f1288e1;
                            String strValueOf3 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-23, -60, -4, -127, 101, 54, -102, 16, -46, -52, -8, -89, 123, 17, -66, 48}, new byte[]{-92, -91, -116, -34, 36, 85, -18, 121}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-66, -70, -81, -63, 42, -44, 16, -18, -123, -78, -85, -25, 52, -13, 52, -50}, new byte[]{-13, -37, -33, -98, 107, -73, 100, -121}), strValueOf3);
                            mainActivity.f1337U0.setYLayMovX(strValueOf3);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 3:
                            String str5 = MainActivity.f1288e1;
                            String strValueOf4 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-50, 2, 110, -35, 99, 41, -71, 88, -11, 10, 106, -5, 125, 14, -99, 120, -36, 36, 75}, new byte[]{-125, 99, 30, -126, 34, 74, -51, 49}), mainActivity.f1387s)) - 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{78, -57, 104, 72, -38, 118, -74, -105, 117, -49, 108, 110, -60, 81, -110, -73, 92, -31, 77}, new byte[]{3, -90, 24, 23, -101, 21, -62, -2}), strValueOf4);
                            mainActivity.f1339V0.setYLayMovX(strValueOf4);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 4:
                            String str6 = MainActivity.f1288e1;
                            String strValueOf5 = String.valueOf(Integer.parseInt(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{9, 14, -71, 59, 29, -6, -36, -79, 50, 6, -67, 29, 3, -35, -8, -111, 27, 40, -100}, new byte[]{68, 111, -55, 100, 92, -103, -88, -40}), mainActivity.f1387s)) + 1);
                            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-6, -123, -102, 59, 29, -39, 59, 123, -63, -115, -98, 29, 3, -2, 31, 91, -24, -93, -65}, new byte[]{-73, -28, -22, 100, 92, -70, 79, 18}), strValueOf5);
                            mainActivity.f1339V0.setYLayMovX(strValueOf5);
                            C1396n3.m2439a(mainActivity);
                            break;
                        case 5:
                            String str7 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{63, -39, 57, 81, -26, 25, -125, -93, 36, -44, 48, 87, -11, 20, -113, -94, 55, -55, 57, 68, -30, 5, -120, -82, 58, -36, 50, 91, -24, 5}, new byte[]{118, -99, 102, 18, -89, 75, -36, -25}, new StringBuilder(), mainActivity), mainActivity.f1306F.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{39, 15, 115, 78, -36, 23, 125, 117, 60, 2, 122, 72, -49, 26, 113, 116, 47, 31, 115, 91, -40, 11, 118, 120, 34, 10, 120, 68, -46, 11, 125, 124, 33, 24, 100}, new byte[]{110, 75, 44, 13, -99, 69, 34, 49}, new StringBuilder(), mainActivity), mainActivity.f1306F.getLevel());
                            break;
                        case 6:
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{124, 117, -28, -97, -11, -64, 27, -76, 103, 120, -19, -103, -26, -51, 23, -75, 116, 101, -28, -108, -15, -45, 16}, new byte[]{53, 49, -69, -36, -76, -110, 68, -16}, new StringBuilder(), mainActivity), mainActivity.f1302D.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-87, 65, -112, 30, -125, 121, -84, -88, -78, 76, -103, 24, -112, 116, -96, -87, -95, 81, -112, 21, -121, 106, -89, -77, -83, 74, -100, 21}, new byte[]{-32, 5, -49, 93, -62, 43, -13, -20}, new StringBuilder(), mainActivity), mainActivity.f1302D.getLevel());
                            break;
                        case 7:
                            String str9 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-43, -46, -119, -64, -118, 76, -33, 120, -45, -58, -97, -49, -124, 74, -33, 104, -39, -41, -126, -36, -125, 91, -63, 111}, new byte[]{-100, -106, -42, -125, -53, 30, ByteCompanionObject.MIN_VALUE, 59}, new StringBuilder(), mainActivity), mainActivity.f1304E.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-54, 108, 111, 56, -100, -25, 14, -123, -52, 120, 121, 55, -110, -31, 14, -107, -58, 105, 100, 36, -107, -16, 16, -110, -36, 101, ByteCompanionObject.MAX_VALUE, 40, -107}, new byte[]{-125, 40, 48, 123, -35, -75, 81, -58}, new StringBuilder(), mainActivity), mainActivity.f1304E.getLevel());
                            break;
                        case 8:
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{20, -55, -61, 106, ByteCompanionObject.MAX_VALUE, 69, 62, -65, 18, -35, -43, 101, 113, 67, 62, -81, 24, -52, -56, 118, 104, 82, 47, -88, 20, -63, -35, 125, 119, 88, 47}, new byte[]{93, -115, -100, 41, 62, 23, 97, -4}, new StringBuilder(), mainActivity), mainActivity.f1308G.getisEnable().booleanValue());
                            C1652b.m2745o().saveInt(AbstractC1178q.m2077k(new byte[]{-28, 51, -66, 50, -107, 44, -118, 28, -30, 39, -88, Base64.padSymbol, -101, 42, -118, 12, -24, 54, -75, 46, -126, 59, -101, 11, -28, 59, -96, 37, -99, 49, -101, 0, -32, 56, -78, 57}, new byte[]{-83, 119, -31, 113, -44, 126, -43, 95}, new StringBuilder(), mainActivity), mainActivity.f1308G.getLevel());
                            break;
                        case 9:
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-23, 64, -79, -89, -123, -65, 40, 16, -12, 65, -85, -74, -101, -70, 63, 6, -27, 72, -79, -84, -127, -84, 35}, new byte[]{-96, 4, -18, -28, -60, -19, 119, 67}, new StringBuilder(), mainActivity), mainActivity.f1310H.getisEnable().booleanValue());
                            break;
                        case 10:
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-117, -25, 3, 60, 62, -6, 126, -28, -115, -19, 8, 34, 58, -23, 121, -27, -111, -4, 20, 56, 60, -15}, new byte[]{-62, -93, 92, 125, 125, -91, 56, -74}, new StringBuilder(), mainActivity), mainActivity.f1312I.getisEnable().booleanValue());
                            break;
                        case 11:
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{97, 113, -17, -35, 0, 107, 25, 19, 105, 103, -17, -40, 6, 114, 25, 25, 123, 97}, new byte[]{40, 53, -80, -100, 67, 52, 75, 86}, new StringBuilder(), mainActivity), mainActivity.f1314J.getisEnable().booleanValue());
                            break;
                        default:
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1178q.m2077k(new byte[]{-119, 1, 94, -57, 53, -27, -40, 126, -92, 32, 86, -61, 5, -37, -48, 126, -87, 11, 91, -53, 26, -22, -43, 109, -88, 15, 108, -19, 63}, new byte[]{-35, 104, 51, -94, 113, -124, -76, 31}, new StringBuilder(), mainActivity), mainActivity.f1316K.getisEnable().booleanValue());
                            mainActivity.m1439L(mainActivity.f1316K.getisEnable().booleanValue());
                            break;
                    }
                }
            });
            this.f1399y.setOnCheckedChangeListener(new C1378k0(23));
            this.f1380o0.setOnCheckedChangeListener(new C1378k0(24));
            this.f1401z.setOnCheckedChangeListener(new C1378k0(i24));
            final int i42 = 0;
            this.f1296A.setOnCheckedChangeListener(new C1378k0(i42));
            this.f1298B.setOnCheckedChangeListener(new C1378k0(i14));
            this.f1382p0.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: e0.l0

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ MainActivity f3299b;

                {
                    this.f3299b = this;
                }

                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                    RelativeLayout relativeLayout;
                    RelativeLayout relativeLayout2;
                    switch (i42) {
                        case 0:
                            MainActivity mainActivity = this.f3299b;
                            String str3 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-60, -53, 107, 79, -77, 24, -89, 15, -6, -47, 123}, new byte[]{-120, -92, 30, 33, -48, 112, -27, 91}), z9);
                            boolean zLoadBoolean3 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-19, -62, -4, -76, -87, -9, 82, 0, -63, -41, -42, -83, -88, -12, 72}, new byte[]{-98, -75, -93, -39, -36, -101, 38, 105}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity);
                                C3105c c3105c = LounchB.f1282h;
                                if (c3105c != null && (relativeLayout2 = ((LounchB) c3105c.f8867c).f1283b) != null) {
                                    relativeLayout2.setVisibility(0);
                                    break;
                                }
                            } else if (!zLoadBoolean3) {
                                WindowManager windowManager = LounchB.f1281g;
                                mainActivity.stopService(new Intent(mainActivity, (Class<?>) LounchB.class));
                                break;
                            } else {
                                C3105c c3105c2 = LounchB.f1282h;
                                if (c3105c2 != null && (relativeLayout = ((LounchB) c3105c2.f8867c).f1283b) != null) {
                                    relativeLayout.setVisibility(8);
                                    break;
                                }
                            }
                            break;
                        case 1:
                            MainActivity mainActivity2 = this.f3299b;
                            String str4 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{105, -56, -43, 92, 59, -26, -126, 121, 69, -35, -1, 69, 58, -27, -104}, new byte[]{26, -65, -118, 49, 78, -118, -10, 16}), z9);
                            boolean zLoadBoolean4 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{34, -97, -78, -81, 126, -63, 107, -8, 28, -123, -94}, new byte[]{110, -16, -57, -63, 29, -87, 41, -84}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity2);
                                C3105c c3105c3 = LounchB.f1282h;
                                if (c3105c3 != null) {
                                    ((LounchB) c3105c3.f8867c).m1421b(true);
                                }
                            } else if (zLoadBoolean4) {
                                C3105c c3105c4 = LounchB.f1282h;
                                if (c3105c4 != null) {
                                    ((LounchB) c3105c4.f8867c).m1421b(false);
                                }
                            } else {
                                WindowManager windowManager2 = LounchB.f1281g;
                                mainActivity2.stopService(new Intent(mainActivity2, (Class<?>) LounchB.class));
                            }
                            break;
                        case 2:
                            MainActivity mainActivity3 = this.f3299b;
                            String str5 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{22, 10, -105, -66, -75, -9, -93, 15, 4, 34, -65, -89, -66, -9, -109, 4, 11, 18, -82, -88}, new byte[]{101, 125, -56, -50, -38, -112, -52, 107}), z9);
                            if (z9) {
                                WeatherService.m2207e(mainActivity3);
                            } else {
                                boolean z10 = WeatherService.f2877f;
                                mainActivity3.stopService(new Intent(mainActivity3, (Class<?>) WeatherService.class));
                            }
                            break;
                        case 3:
                            MainActivity mainActivity4 = this.f3299b;
                            String str6 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-116, 46, -84, -101, 100, 117, -91, 13, -98, 42, -99, -106, 114, 123}, new byte[]{-1, 89, -13, -7, 1, 15, -54, 125}), z9);
                            FlexboxLayout flexboxLayout2 = mainActivity4.f1388s0;
                            for (int i210 = 0; i210 < flexboxLayout2.getChildCount(); i210++) {
                                flexboxLayout2.getChildAt(i210).setEnabled(z9);
                            }
                            if (!z9) {
                                FlexboxLayout flexboxLayout3 = mainActivity4.f1388s0;
                                for (int i211 = 0; i211 < flexboxLayout3.getChildCount(); i211++) {
                                    ((MaterialSwitch) flexboxLayout3.getChildAt(i211)).setChecked(false);
                                }
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{68, 18, -70, 67, 56, 122, -80, 114}, new byte[]{55, 101, -27, 48, 76, 21, -36, 25}), false);
                            }
                            break;
                        case 4:
                            MainActivity mainActivity5 = this.f3299b;
                            String str7 = MainActivity.f1288e1;
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-50, -81, 29, 122, 103, 126, 25, 32, -46, -91, 17, 113, 103, 104, 3}, new byte[]{-121, -21, 66, 57, 38, 44, 70, 115});
                            C3277a c3277aM2745o = C1652b.m2745o();
                            StringBuilder sbM170u = AbstractC0074a.m170u(strM2421h);
                            sbM170u.append(mainActivity5.m1429A());
                            c3277aM2745o.saveBoolean(sbM170u.toString(), z9);
                            break;
                        case 5:
                            MainActivity mainActivity6 = this.f3299b;
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-97, -7, 52, -80, -63, 54, 57, -61, -75, -3, 39, -85, -50, 50, 19, -28, -79, -3, 37}, new byte[]{-48, -113, 81, -62, -83, 87, 64, -112}), z9);
                            if (z9) {
                                OverlayService.m1512c(mainActivity6);
                            } else {
                                OverlayService overlayService = OverlayService.f1499f;
                                mainActivity6.stopService(new Intent(mainActivity6.getApplicationContext(), (Class<?>) OverlayService.class));
                                boolean z11 = ServiceC1080Si.f1588d;
                                Context applicationContext = mainActivity6.getApplicationContext();
                                applicationContext.stopService(new Intent(applicationContext, (Class<?>) ServiceC1080Si.class));
                            }
                            break;
                        case 6:
                            MainActivity mainActivity7 = this.f3299b;
                            String str9 = MainActivity.f1288e1;
                            try {
                                C1652b.m2745o().saveBoolean(MockGpsService.f1423r, z9);
                                break;
                            } catch (Exception unused2) {
                            }
                            if (z9) {
                                MockGpsService.m1457m(mainActivity7);
                            } else {
                                MockGpsService.m1449b(mainActivity7);
                                mainActivity7.stopService(new Intent(mainActivity7, (Class<?>) MockGpsService.class));
                            }
                            break;
                        case 7:
                            MainActivity mainActivity8 = this.f3299b;
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(Notik.f1487m, z9);
                            if (z9) {
                                Notik.m1506g(mainActivity8);
                            } else {
                                mainActivity8.getApplicationContext().stopService(new Intent(mainActivity8.getApplicationContext(), (Class<?>) Notik.class));
                            }
                            break;
                        case 8:
                            MainActivity mainActivity9 = this.f3299b;
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(SpeedBoardService.f1614k, z9);
                            if (z9) {
                                SpeedBoardService.m1542b(mainActivity9.getApplicationContext());
                            } else {
                                Context applicationContext2 = mainActivity9.getApplicationContext();
                                applicationContext2.stopService(new Intent(applicationContext2.getApplicationContext(), (Class<?>) SpeedBoardService.class));
                            }
                            break;
                        case 9:
                            MainActivity mainActivity10 = this.f3299b;
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-41, -101, -118, -81, 87, -106, 41, 34, -9, -72, -86, -98, 87, -109, 37, 53, -10, -114, -65, -110, 123, -84, 46, 60, -28}, new byte[]{-127, -47, -55, -5, 8, -59, 76, 80}), z9);
                            if (z9) {
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-55, -94, Base64.padSymbol, -120, -39, 119, 3, 91, -42, -79, 54, -92, -11, 97, 5, 76, -51, -90}, new byte[]{-65, -46, 83, -41, -86, 18, 113, 45}), true);
                                TService.m1586c(mainActivity10.getApplicationContext());
                                TService.m1584a(Boolean.TRUE);
                            } else {
                                TService.m1584a(Boolean.FALSE);
                            }
                            break;
                        case 10:
                            MainActivity mainActivity11 = this.f3299b;
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{41, -104, -57, -91, 108, 113, -79, 0, 49, -121, -58, -80, 86, 118, -69, 44, 42, -108, -50}, new byte[]{94, -15, -93, -62, 9, 5, -62, 95}), z9);
                            new SystemMessageReceiver().onReceive(mainActivity11.getApplicationContext(), new Intent(AbstractC1387m.m2421h(new byte[]{42, 46, -109, -91, -102, 9, 5, -100, 34, 46, -125, -78, -101, 20, 79, -45, 40, 52, -98, -72, -101, 78, 35, -3, 4, 20, -88, -108, -70, 45, 49, -2, 14, 20, -78, -109}, new byte[]{75, 64, -9, -41, -11, 96, 97, -78})));
                            break;
                        case 11:
                            MainActivity mainActivity12 = this.f3299b;
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{114, 109, -96, 86, 11, 40, ByteCompanionObject.MAX_VALUE, -101, 71, 82, -87, 115, 20, 37, 123, -101, 64, 94, -97, 104, 12, 43, 116, -101, 100, 104, -94, 101, 13, 59, 71, -79, 93}, new byte[]{51, 1, -52, 1, 98, 76, 24, -2}), z9);
                            EnumC1362h enumC1362h = EnumC1362h.f3254i;
                            AllWidgetServices allWidgetServices = MainActivity.f1292i1;
                            if (allWidgetServices != null) {
                                allWidgetServices.m1388e(enumC1362h, z9);
                            }
                            if (z9 && MainActivity.f1292i1 == null) {
                                AllWidgetServices.m1384c(mainActivity12);
                                break;
                            }
                            break;
                        case 12:
                            MainActivity mainActivity13 = this.f3299b;
                            String str15 = MainActivity.f1288e1;
                            String str16 = AbstractC3134a1.f8964a;
                            mainActivity13.getPackageManager().setComponentEnabledSetting(new ComponentName(mainActivity13.getPackageName(), AbstractC3134a1.f8964a), z9 ? 1 : 2, 1);
                            break;
                        case 13:
                            MainActivity mainActivity14 = this.f3299b;
                            String str17 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{97, -20, 2, 79, 40, 84, -127, -32, 90, -28, 6, 105, 54, 113, -96, -59, 96, -34, 49, 66, 44, 114, -69, -42, 107, -40}, new byte[]{44, -115, 114, 16, 105, 55, -11, -119}), z9);
                            C1396n3.m2439a(mainActivity14);
                            break;
                        default:
                            MainActivity mainActivity15 = this.f3299b;
                            String str18 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{89, -93, 75, 63, 70, 93, -107, -66, 98, -85, 79, 25, 88, 115, -96, -113, 75, -110, 126, 50, 65, 113, -77, -102, 85, -116, 120, 37}, new byte[]{20, -62, 59, 96, 7, 62, -31, -41}), z9);
                            C1396n3.m2439a(mainActivity15);
                            break;
                    }
                }
            });
            switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: e0.l0

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ MainActivity f3299b;

                {
                    this.f3299b = this;
                }

                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                    RelativeLayout relativeLayout;
                    RelativeLayout relativeLayout2;
                    switch (i14) {
                        case 0:
                            MainActivity mainActivity = this.f3299b;
                            String str3 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-60, -53, 107, 79, -77, 24, -89, 15, -6, -47, 123}, new byte[]{-120, -92, 30, 33, -48, 112, -27, 91}), z9);
                            boolean zLoadBoolean3 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-19, -62, -4, -76, -87, -9, 82, 0, -63, -41, -42, -83, -88, -12, 72}, new byte[]{-98, -75, -93, -39, -36, -101, 38, 105}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity);
                                C3105c c3105c = LounchB.f1282h;
                                if (c3105c != null && (relativeLayout2 = ((LounchB) c3105c.f8867c).f1283b) != null) {
                                    relativeLayout2.setVisibility(0);
                                    break;
                                }
                            } else if (!zLoadBoolean3) {
                                WindowManager windowManager = LounchB.f1281g;
                                mainActivity.stopService(new Intent(mainActivity, (Class<?>) LounchB.class));
                                break;
                            } else {
                                C3105c c3105c2 = LounchB.f1282h;
                                if (c3105c2 != null && (relativeLayout = ((LounchB) c3105c2.f8867c).f1283b) != null) {
                                    relativeLayout.setVisibility(8);
                                    break;
                                }
                            }
                            break;
                        case 1:
                            MainActivity mainActivity2 = this.f3299b;
                            String str4 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{105, -56, -43, 92, 59, -26, -126, 121, 69, -35, -1, 69, 58, -27, -104}, new byte[]{26, -65, -118, 49, 78, -118, -10, 16}), z9);
                            boolean zLoadBoolean4 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{34, -97, -78, -81, 126, -63, 107, -8, 28, -123, -94}, new byte[]{110, -16, -57, -63, 29, -87, 41, -84}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity2);
                                C3105c c3105c3 = LounchB.f1282h;
                                if (c3105c3 != null) {
                                    ((LounchB) c3105c3.f8867c).m1421b(true);
                                }
                            } else if (zLoadBoolean4) {
                                C3105c c3105c4 = LounchB.f1282h;
                                if (c3105c4 != null) {
                                    ((LounchB) c3105c4.f8867c).m1421b(false);
                                }
                            } else {
                                WindowManager windowManager2 = LounchB.f1281g;
                                mainActivity2.stopService(new Intent(mainActivity2, (Class<?>) LounchB.class));
                            }
                            break;
                        case 2:
                            MainActivity mainActivity3 = this.f3299b;
                            String str5 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{22, 10, -105, -66, -75, -9, -93, 15, 4, 34, -65, -89, -66, -9, -109, 4, 11, 18, -82, -88}, new byte[]{101, 125, -56, -50, -38, -112, -52, 107}), z9);
                            if (z9) {
                                WeatherService.m2207e(mainActivity3);
                            } else {
                                boolean z10 = WeatherService.f2877f;
                                mainActivity3.stopService(new Intent(mainActivity3, (Class<?>) WeatherService.class));
                            }
                            break;
                        case 3:
                            MainActivity mainActivity4 = this.f3299b;
                            String str6 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-116, 46, -84, -101, 100, 117, -91, 13, -98, 42, -99, -106, 114, 123}, new byte[]{-1, 89, -13, -7, 1, 15, -54, 125}), z9);
                            FlexboxLayout flexboxLayout2 = mainActivity4.f1388s0;
                            for (int i210 = 0; i210 < flexboxLayout2.getChildCount(); i210++) {
                                flexboxLayout2.getChildAt(i210).setEnabled(z9);
                            }
                            if (!z9) {
                                FlexboxLayout flexboxLayout3 = mainActivity4.f1388s0;
                                for (int i211 = 0; i211 < flexboxLayout3.getChildCount(); i211++) {
                                    ((MaterialSwitch) flexboxLayout3.getChildAt(i211)).setChecked(false);
                                }
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{68, 18, -70, 67, 56, 122, -80, 114}, new byte[]{55, 101, -27, 48, 76, 21, -36, 25}), false);
                            }
                            break;
                        case 4:
                            MainActivity mainActivity5 = this.f3299b;
                            String str7 = MainActivity.f1288e1;
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-50, -81, 29, 122, 103, 126, 25, 32, -46, -91, 17, 113, 103, 104, 3}, new byte[]{-121, -21, 66, 57, 38, 44, 70, 115});
                            C3277a c3277aM2745o = C1652b.m2745o();
                            StringBuilder sbM170u = AbstractC0074a.m170u(strM2421h);
                            sbM170u.append(mainActivity5.m1429A());
                            c3277aM2745o.saveBoolean(sbM170u.toString(), z9);
                            break;
                        case 5:
                            MainActivity mainActivity6 = this.f3299b;
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-97, -7, 52, -80, -63, 54, 57, -61, -75, -3, 39, -85, -50, 50, 19, -28, -79, -3, 37}, new byte[]{-48, -113, 81, -62, -83, 87, 64, -112}), z9);
                            if (z9) {
                                OverlayService.m1512c(mainActivity6);
                            } else {
                                OverlayService overlayService = OverlayService.f1499f;
                                mainActivity6.stopService(new Intent(mainActivity6.getApplicationContext(), (Class<?>) OverlayService.class));
                                boolean z11 = ServiceC1080Si.f1588d;
                                Context applicationContext = mainActivity6.getApplicationContext();
                                applicationContext.stopService(new Intent(applicationContext, (Class<?>) ServiceC1080Si.class));
                            }
                            break;
                        case 6:
                            MainActivity mainActivity7 = this.f3299b;
                            String str9 = MainActivity.f1288e1;
                            try {
                                C1652b.m2745o().saveBoolean(MockGpsService.f1423r, z9);
                                break;
                            } catch (Exception unused2) {
                            }
                            if (z9) {
                                MockGpsService.m1457m(mainActivity7);
                            } else {
                                MockGpsService.m1449b(mainActivity7);
                                mainActivity7.stopService(new Intent(mainActivity7, (Class<?>) MockGpsService.class));
                            }
                            break;
                        case 7:
                            MainActivity mainActivity8 = this.f3299b;
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(Notik.f1487m, z9);
                            if (z9) {
                                Notik.m1506g(mainActivity8);
                            } else {
                                mainActivity8.getApplicationContext().stopService(new Intent(mainActivity8.getApplicationContext(), (Class<?>) Notik.class));
                            }
                            break;
                        case 8:
                            MainActivity mainActivity9 = this.f3299b;
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(SpeedBoardService.f1614k, z9);
                            if (z9) {
                                SpeedBoardService.m1542b(mainActivity9.getApplicationContext());
                            } else {
                                Context applicationContext2 = mainActivity9.getApplicationContext();
                                applicationContext2.stopService(new Intent(applicationContext2.getApplicationContext(), (Class<?>) SpeedBoardService.class));
                            }
                            break;
                        case 9:
                            MainActivity mainActivity10 = this.f3299b;
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-41, -101, -118, -81, 87, -106, 41, 34, -9, -72, -86, -98, 87, -109, 37, 53, -10, -114, -65, -110, 123, -84, 46, 60, -28}, new byte[]{-127, -47, -55, -5, 8, -59, 76, 80}), z9);
                            if (z9) {
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-55, -94, Base64.padSymbol, -120, -39, 119, 3, 91, -42, -79, 54, -92, -11, 97, 5, 76, -51, -90}, new byte[]{-65, -46, 83, -41, -86, 18, 113, 45}), true);
                                TService.m1586c(mainActivity10.getApplicationContext());
                                TService.m1584a(Boolean.TRUE);
                            } else {
                                TService.m1584a(Boolean.FALSE);
                            }
                            break;
                        case 10:
                            MainActivity mainActivity11 = this.f3299b;
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{41, -104, -57, -91, 108, 113, -79, 0, 49, -121, -58, -80, 86, 118, -69, 44, 42, -108, -50}, new byte[]{94, -15, -93, -62, 9, 5, -62, 95}), z9);
                            new SystemMessageReceiver().onReceive(mainActivity11.getApplicationContext(), new Intent(AbstractC1387m.m2421h(new byte[]{42, 46, -109, -91, -102, 9, 5, -100, 34, 46, -125, -78, -101, 20, 79, -45, 40, 52, -98, -72, -101, 78, 35, -3, 4, 20, -88, -108, -70, 45, 49, -2, 14, 20, -78, -109}, new byte[]{75, 64, -9, -41, -11, 96, 97, -78})));
                            break;
                        case 11:
                            MainActivity mainActivity12 = this.f3299b;
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{114, 109, -96, 86, 11, 40, ByteCompanionObject.MAX_VALUE, -101, 71, 82, -87, 115, 20, 37, 123, -101, 64, 94, -97, 104, 12, 43, 116, -101, 100, 104, -94, 101, 13, 59, 71, -79, 93}, new byte[]{51, 1, -52, 1, 98, 76, 24, -2}), z9);
                            EnumC1362h enumC1362h = EnumC1362h.f3254i;
                            AllWidgetServices allWidgetServices = MainActivity.f1292i1;
                            if (allWidgetServices != null) {
                                allWidgetServices.m1388e(enumC1362h, z9);
                            }
                            if (z9 && MainActivity.f1292i1 == null) {
                                AllWidgetServices.m1384c(mainActivity12);
                                break;
                            }
                            break;
                        case 12:
                            MainActivity mainActivity13 = this.f3299b;
                            String str15 = MainActivity.f1288e1;
                            String str16 = AbstractC3134a1.f8964a;
                            mainActivity13.getPackageManager().setComponentEnabledSetting(new ComponentName(mainActivity13.getPackageName(), AbstractC3134a1.f8964a), z9 ? 1 : 2, 1);
                            break;
                        case 13:
                            MainActivity mainActivity14 = this.f3299b;
                            String str17 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{97, -20, 2, 79, 40, 84, -127, -32, 90, -28, 6, 105, 54, 113, -96, -59, 96, -34, 49, 66, 44, 114, -69, -42, 107, -40}, new byte[]{44, -115, 114, 16, 105, 55, -11, -119}), z9);
                            C1396n3.m2439a(mainActivity14);
                            break;
                        default:
                            MainActivity mainActivity15 = this.f3299b;
                            String str18 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{89, -93, 75, 63, 70, 93, -107, -66, 98, -85, 79, 25, 88, 115, -96, -113, 75, -110, 126, 50, 65, 113, -77, -102, 85, -116, 120, 37}, new byte[]{20, -62, 59, 96, 7, 62, -31, -41}), z9);
                            C1396n3.m2439a(mainActivity15);
                            break;
                    }
                }
            });
            final int i43 = 2;
            this.f1392u0.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: e0.l0

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ MainActivity f3299b;

                {
                    this.f3299b = this;
                }

                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                    RelativeLayout relativeLayout;
                    RelativeLayout relativeLayout2;
                    switch (i43) {
                        case 0:
                            MainActivity mainActivity = this.f3299b;
                            String str3 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-60, -53, 107, 79, -77, 24, -89, 15, -6, -47, 123}, new byte[]{-120, -92, 30, 33, -48, 112, -27, 91}), z9);
                            boolean zLoadBoolean3 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-19, -62, -4, -76, -87, -9, 82, 0, -63, -41, -42, -83, -88, -12, 72}, new byte[]{-98, -75, -93, -39, -36, -101, 38, 105}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity);
                                C3105c c3105c = LounchB.f1282h;
                                if (c3105c != null && (relativeLayout2 = ((LounchB) c3105c.f8867c).f1283b) != null) {
                                    relativeLayout2.setVisibility(0);
                                    break;
                                }
                            } else if (!zLoadBoolean3) {
                                WindowManager windowManager = LounchB.f1281g;
                                mainActivity.stopService(new Intent(mainActivity, (Class<?>) LounchB.class));
                                break;
                            } else {
                                C3105c c3105c2 = LounchB.f1282h;
                                if (c3105c2 != null && (relativeLayout = ((LounchB) c3105c2.f8867c).f1283b) != null) {
                                    relativeLayout.setVisibility(8);
                                    break;
                                }
                            }
                            break;
                        case 1:
                            MainActivity mainActivity2 = this.f3299b;
                            String str4 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{105, -56, -43, 92, 59, -26, -126, 121, 69, -35, -1, 69, 58, -27, -104}, new byte[]{26, -65, -118, 49, 78, -118, -10, 16}), z9);
                            boolean zLoadBoolean4 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{34, -97, -78, -81, 126, -63, 107, -8, 28, -123, -94}, new byte[]{110, -16, -57, -63, 29, -87, 41, -84}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity2);
                                C3105c c3105c3 = LounchB.f1282h;
                                if (c3105c3 != null) {
                                    ((LounchB) c3105c3.f8867c).m1421b(true);
                                }
                            } else if (zLoadBoolean4) {
                                C3105c c3105c4 = LounchB.f1282h;
                                if (c3105c4 != null) {
                                    ((LounchB) c3105c4.f8867c).m1421b(false);
                                }
                            } else {
                                WindowManager windowManager2 = LounchB.f1281g;
                                mainActivity2.stopService(new Intent(mainActivity2, (Class<?>) LounchB.class));
                            }
                            break;
                        case 2:
                            MainActivity mainActivity3 = this.f3299b;
                            String str5 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{22, 10, -105, -66, -75, -9, -93, 15, 4, 34, -65, -89, -66, -9, -109, 4, 11, 18, -82, -88}, new byte[]{101, 125, -56, -50, -38, -112, -52, 107}), z9);
                            if (z9) {
                                WeatherService.m2207e(mainActivity3);
                            } else {
                                boolean z10 = WeatherService.f2877f;
                                mainActivity3.stopService(new Intent(mainActivity3, (Class<?>) WeatherService.class));
                            }
                            break;
                        case 3:
                            MainActivity mainActivity4 = this.f3299b;
                            String str6 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-116, 46, -84, -101, 100, 117, -91, 13, -98, 42, -99, -106, 114, 123}, new byte[]{-1, 89, -13, -7, 1, 15, -54, 125}), z9);
                            FlexboxLayout flexboxLayout2 = mainActivity4.f1388s0;
                            for (int i210 = 0; i210 < flexboxLayout2.getChildCount(); i210++) {
                                flexboxLayout2.getChildAt(i210).setEnabled(z9);
                            }
                            if (!z9) {
                                FlexboxLayout flexboxLayout3 = mainActivity4.f1388s0;
                                for (int i211 = 0; i211 < flexboxLayout3.getChildCount(); i211++) {
                                    ((MaterialSwitch) flexboxLayout3.getChildAt(i211)).setChecked(false);
                                }
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{68, 18, -70, 67, 56, 122, -80, 114}, new byte[]{55, 101, -27, 48, 76, 21, -36, 25}), false);
                            }
                            break;
                        case 4:
                            MainActivity mainActivity5 = this.f3299b;
                            String str7 = MainActivity.f1288e1;
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-50, -81, 29, 122, 103, 126, 25, 32, -46, -91, 17, 113, 103, 104, 3}, new byte[]{-121, -21, 66, 57, 38, 44, 70, 115});
                            C3277a c3277aM2745o = C1652b.m2745o();
                            StringBuilder sbM170u = AbstractC0074a.m170u(strM2421h);
                            sbM170u.append(mainActivity5.m1429A());
                            c3277aM2745o.saveBoolean(sbM170u.toString(), z9);
                            break;
                        case 5:
                            MainActivity mainActivity6 = this.f3299b;
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-97, -7, 52, -80, -63, 54, 57, -61, -75, -3, 39, -85, -50, 50, 19, -28, -79, -3, 37}, new byte[]{-48, -113, 81, -62, -83, 87, 64, -112}), z9);
                            if (z9) {
                                OverlayService.m1512c(mainActivity6);
                            } else {
                                OverlayService overlayService = OverlayService.f1499f;
                                mainActivity6.stopService(new Intent(mainActivity6.getApplicationContext(), (Class<?>) OverlayService.class));
                                boolean z11 = ServiceC1080Si.f1588d;
                                Context applicationContext = mainActivity6.getApplicationContext();
                                applicationContext.stopService(new Intent(applicationContext, (Class<?>) ServiceC1080Si.class));
                            }
                            break;
                        case 6:
                            MainActivity mainActivity7 = this.f3299b;
                            String str9 = MainActivity.f1288e1;
                            try {
                                C1652b.m2745o().saveBoolean(MockGpsService.f1423r, z9);
                                break;
                            } catch (Exception unused2) {
                            }
                            if (z9) {
                                MockGpsService.m1457m(mainActivity7);
                            } else {
                                MockGpsService.m1449b(mainActivity7);
                                mainActivity7.stopService(new Intent(mainActivity7, (Class<?>) MockGpsService.class));
                            }
                            break;
                        case 7:
                            MainActivity mainActivity8 = this.f3299b;
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(Notik.f1487m, z9);
                            if (z9) {
                                Notik.m1506g(mainActivity8);
                            } else {
                                mainActivity8.getApplicationContext().stopService(new Intent(mainActivity8.getApplicationContext(), (Class<?>) Notik.class));
                            }
                            break;
                        case 8:
                            MainActivity mainActivity9 = this.f3299b;
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(SpeedBoardService.f1614k, z9);
                            if (z9) {
                                SpeedBoardService.m1542b(mainActivity9.getApplicationContext());
                            } else {
                                Context applicationContext2 = mainActivity9.getApplicationContext();
                                applicationContext2.stopService(new Intent(applicationContext2.getApplicationContext(), (Class<?>) SpeedBoardService.class));
                            }
                            break;
                        case 9:
                            MainActivity mainActivity10 = this.f3299b;
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-41, -101, -118, -81, 87, -106, 41, 34, -9, -72, -86, -98, 87, -109, 37, 53, -10, -114, -65, -110, 123, -84, 46, 60, -28}, new byte[]{-127, -47, -55, -5, 8, -59, 76, 80}), z9);
                            if (z9) {
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-55, -94, Base64.padSymbol, -120, -39, 119, 3, 91, -42, -79, 54, -92, -11, 97, 5, 76, -51, -90}, new byte[]{-65, -46, 83, -41, -86, 18, 113, 45}), true);
                                TService.m1586c(mainActivity10.getApplicationContext());
                                TService.m1584a(Boolean.TRUE);
                            } else {
                                TService.m1584a(Boolean.FALSE);
                            }
                            break;
                        case 10:
                            MainActivity mainActivity11 = this.f3299b;
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{41, -104, -57, -91, 108, 113, -79, 0, 49, -121, -58, -80, 86, 118, -69, 44, 42, -108, -50}, new byte[]{94, -15, -93, -62, 9, 5, -62, 95}), z9);
                            new SystemMessageReceiver().onReceive(mainActivity11.getApplicationContext(), new Intent(AbstractC1387m.m2421h(new byte[]{42, 46, -109, -91, -102, 9, 5, -100, 34, 46, -125, -78, -101, 20, 79, -45, 40, 52, -98, -72, -101, 78, 35, -3, 4, 20, -88, -108, -70, 45, 49, -2, 14, 20, -78, -109}, new byte[]{75, 64, -9, -41, -11, 96, 97, -78})));
                            break;
                        case 11:
                            MainActivity mainActivity12 = this.f3299b;
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{114, 109, -96, 86, 11, 40, ByteCompanionObject.MAX_VALUE, -101, 71, 82, -87, 115, 20, 37, 123, -101, 64, 94, -97, 104, 12, 43, 116, -101, 100, 104, -94, 101, 13, 59, 71, -79, 93}, new byte[]{51, 1, -52, 1, 98, 76, 24, -2}), z9);
                            EnumC1362h enumC1362h = EnumC1362h.f3254i;
                            AllWidgetServices allWidgetServices = MainActivity.f1292i1;
                            if (allWidgetServices != null) {
                                allWidgetServices.m1388e(enumC1362h, z9);
                            }
                            if (z9 && MainActivity.f1292i1 == null) {
                                AllWidgetServices.m1384c(mainActivity12);
                                break;
                            }
                            break;
                        case 12:
                            MainActivity mainActivity13 = this.f3299b;
                            String str15 = MainActivity.f1288e1;
                            String str16 = AbstractC3134a1.f8964a;
                            mainActivity13.getPackageManager().setComponentEnabledSetting(new ComponentName(mainActivity13.getPackageName(), AbstractC3134a1.f8964a), z9 ? 1 : 2, 1);
                            break;
                        case 13:
                            MainActivity mainActivity14 = this.f3299b;
                            String str17 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{97, -20, 2, 79, 40, 84, -127, -32, 90, -28, 6, 105, 54, 113, -96, -59, 96, -34, 49, 66, 44, 114, -69, -42, 107, -40}, new byte[]{44, -115, 114, 16, 105, 55, -11, -119}), z9);
                            C1396n3.m2439a(mainActivity14);
                            break;
                        default:
                            MainActivity mainActivity15 = this.f3299b;
                            String str18 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{89, -93, 75, 63, 70, 93, -107, -66, 98, -85, 79, 25, 88, 115, -96, -113, 75, -110, 126, 50, 65, 113, -77, -102, 85, -116, 120, 37}, new byte[]{20, -62, 59, 96, 7, 62, -31, -41}), z9);
                            C1396n3.m2439a(mainActivity15);
                            break;
                    }
                }
            });
            this.f1396w0.setOnCheckedChangeListener(new C1378k0(i43));
            final int i44 = 3;
            this.f1390t0.setOnCheckedChangeListener(new C1378k0(i44));
            this.f1384q0.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: e0.l0

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ MainActivity f3299b;

                {
                    this.f3299b = this;
                }

                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                    RelativeLayout relativeLayout;
                    RelativeLayout relativeLayout2;
                    switch (i44) {
                        case 0:
                            MainActivity mainActivity = this.f3299b;
                            String str3 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-60, -53, 107, 79, -77, 24, -89, 15, -6, -47, 123}, new byte[]{-120, -92, 30, 33, -48, 112, -27, 91}), z9);
                            boolean zLoadBoolean3 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-19, -62, -4, -76, -87, -9, 82, 0, -63, -41, -42, -83, -88, -12, 72}, new byte[]{-98, -75, -93, -39, -36, -101, 38, 105}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity);
                                C3105c c3105c = LounchB.f1282h;
                                if (c3105c != null && (relativeLayout2 = ((LounchB) c3105c.f8867c).f1283b) != null) {
                                    relativeLayout2.setVisibility(0);
                                    break;
                                }
                            } else if (!zLoadBoolean3) {
                                WindowManager windowManager = LounchB.f1281g;
                                mainActivity.stopService(new Intent(mainActivity, (Class<?>) LounchB.class));
                                break;
                            } else {
                                C3105c c3105c2 = LounchB.f1282h;
                                if (c3105c2 != null && (relativeLayout = ((LounchB) c3105c2.f8867c).f1283b) != null) {
                                    relativeLayout.setVisibility(8);
                                    break;
                                }
                            }
                            break;
                        case 1:
                            MainActivity mainActivity2 = this.f3299b;
                            String str4 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{105, -56, -43, 92, 59, -26, -126, 121, 69, -35, -1, 69, 58, -27, -104}, new byte[]{26, -65, -118, 49, 78, -118, -10, 16}), z9);
                            boolean zLoadBoolean4 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{34, -97, -78, -81, 126, -63, 107, -8, 28, -123, -94}, new byte[]{110, -16, -57, -63, 29, -87, 41, -84}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity2);
                                C3105c c3105c3 = LounchB.f1282h;
                                if (c3105c3 != null) {
                                    ((LounchB) c3105c3.f8867c).m1421b(true);
                                }
                            } else if (zLoadBoolean4) {
                                C3105c c3105c4 = LounchB.f1282h;
                                if (c3105c4 != null) {
                                    ((LounchB) c3105c4.f8867c).m1421b(false);
                                }
                            } else {
                                WindowManager windowManager2 = LounchB.f1281g;
                                mainActivity2.stopService(new Intent(mainActivity2, (Class<?>) LounchB.class));
                            }
                            break;
                        case 2:
                            MainActivity mainActivity3 = this.f3299b;
                            String str5 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{22, 10, -105, -66, -75, -9, -93, 15, 4, 34, -65, -89, -66, -9, -109, 4, 11, 18, -82, -88}, new byte[]{101, 125, -56, -50, -38, -112, -52, 107}), z9);
                            if (z9) {
                                WeatherService.m2207e(mainActivity3);
                            } else {
                                boolean z10 = WeatherService.f2877f;
                                mainActivity3.stopService(new Intent(mainActivity3, (Class<?>) WeatherService.class));
                            }
                            break;
                        case 3:
                            MainActivity mainActivity4 = this.f3299b;
                            String str6 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-116, 46, -84, -101, 100, 117, -91, 13, -98, 42, -99, -106, 114, 123}, new byte[]{-1, 89, -13, -7, 1, 15, -54, 125}), z9);
                            FlexboxLayout flexboxLayout2 = mainActivity4.f1388s0;
                            for (int i210 = 0; i210 < flexboxLayout2.getChildCount(); i210++) {
                                flexboxLayout2.getChildAt(i210).setEnabled(z9);
                            }
                            if (!z9) {
                                FlexboxLayout flexboxLayout3 = mainActivity4.f1388s0;
                                for (int i211 = 0; i211 < flexboxLayout3.getChildCount(); i211++) {
                                    ((MaterialSwitch) flexboxLayout3.getChildAt(i211)).setChecked(false);
                                }
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{68, 18, -70, 67, 56, 122, -80, 114}, new byte[]{55, 101, -27, 48, 76, 21, -36, 25}), false);
                            }
                            break;
                        case 4:
                            MainActivity mainActivity5 = this.f3299b;
                            String str7 = MainActivity.f1288e1;
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-50, -81, 29, 122, 103, 126, 25, 32, -46, -91, 17, 113, 103, 104, 3}, new byte[]{-121, -21, 66, 57, 38, 44, 70, 115});
                            C3277a c3277aM2745o = C1652b.m2745o();
                            StringBuilder sbM170u = AbstractC0074a.m170u(strM2421h);
                            sbM170u.append(mainActivity5.m1429A());
                            c3277aM2745o.saveBoolean(sbM170u.toString(), z9);
                            break;
                        case 5:
                            MainActivity mainActivity6 = this.f3299b;
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-97, -7, 52, -80, -63, 54, 57, -61, -75, -3, 39, -85, -50, 50, 19, -28, -79, -3, 37}, new byte[]{-48, -113, 81, -62, -83, 87, 64, -112}), z9);
                            if (z9) {
                                OverlayService.m1512c(mainActivity6);
                            } else {
                                OverlayService overlayService = OverlayService.f1499f;
                                mainActivity6.stopService(new Intent(mainActivity6.getApplicationContext(), (Class<?>) OverlayService.class));
                                boolean z11 = ServiceC1080Si.f1588d;
                                Context applicationContext = mainActivity6.getApplicationContext();
                                applicationContext.stopService(new Intent(applicationContext, (Class<?>) ServiceC1080Si.class));
                            }
                            break;
                        case 6:
                            MainActivity mainActivity7 = this.f3299b;
                            String str9 = MainActivity.f1288e1;
                            try {
                                C1652b.m2745o().saveBoolean(MockGpsService.f1423r, z9);
                                break;
                            } catch (Exception unused2) {
                            }
                            if (z9) {
                                MockGpsService.m1457m(mainActivity7);
                            } else {
                                MockGpsService.m1449b(mainActivity7);
                                mainActivity7.stopService(new Intent(mainActivity7, (Class<?>) MockGpsService.class));
                            }
                            break;
                        case 7:
                            MainActivity mainActivity8 = this.f3299b;
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(Notik.f1487m, z9);
                            if (z9) {
                                Notik.m1506g(mainActivity8);
                            } else {
                                mainActivity8.getApplicationContext().stopService(new Intent(mainActivity8.getApplicationContext(), (Class<?>) Notik.class));
                            }
                            break;
                        case 8:
                            MainActivity mainActivity9 = this.f3299b;
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(SpeedBoardService.f1614k, z9);
                            if (z9) {
                                SpeedBoardService.m1542b(mainActivity9.getApplicationContext());
                            } else {
                                Context applicationContext2 = mainActivity9.getApplicationContext();
                                applicationContext2.stopService(new Intent(applicationContext2.getApplicationContext(), (Class<?>) SpeedBoardService.class));
                            }
                            break;
                        case 9:
                            MainActivity mainActivity10 = this.f3299b;
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-41, -101, -118, -81, 87, -106, 41, 34, -9, -72, -86, -98, 87, -109, 37, 53, -10, -114, -65, -110, 123, -84, 46, 60, -28}, new byte[]{-127, -47, -55, -5, 8, -59, 76, 80}), z9);
                            if (z9) {
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-55, -94, Base64.padSymbol, -120, -39, 119, 3, 91, -42, -79, 54, -92, -11, 97, 5, 76, -51, -90}, new byte[]{-65, -46, 83, -41, -86, 18, 113, 45}), true);
                                TService.m1586c(mainActivity10.getApplicationContext());
                                TService.m1584a(Boolean.TRUE);
                            } else {
                                TService.m1584a(Boolean.FALSE);
                            }
                            break;
                        case 10:
                            MainActivity mainActivity11 = this.f3299b;
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{41, -104, -57, -91, 108, 113, -79, 0, 49, -121, -58, -80, 86, 118, -69, 44, 42, -108, -50}, new byte[]{94, -15, -93, -62, 9, 5, -62, 95}), z9);
                            new SystemMessageReceiver().onReceive(mainActivity11.getApplicationContext(), new Intent(AbstractC1387m.m2421h(new byte[]{42, 46, -109, -91, -102, 9, 5, -100, 34, 46, -125, -78, -101, 20, 79, -45, 40, 52, -98, -72, -101, 78, 35, -3, 4, 20, -88, -108, -70, 45, 49, -2, 14, 20, -78, -109}, new byte[]{75, 64, -9, -41, -11, 96, 97, -78})));
                            break;
                        case 11:
                            MainActivity mainActivity12 = this.f3299b;
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{114, 109, -96, 86, 11, 40, ByteCompanionObject.MAX_VALUE, -101, 71, 82, -87, 115, 20, 37, 123, -101, 64, 94, -97, 104, 12, 43, 116, -101, 100, 104, -94, 101, 13, 59, 71, -79, 93}, new byte[]{51, 1, -52, 1, 98, 76, 24, -2}), z9);
                            EnumC1362h enumC1362h = EnumC1362h.f3254i;
                            AllWidgetServices allWidgetServices = MainActivity.f1292i1;
                            if (allWidgetServices != null) {
                                allWidgetServices.m1388e(enumC1362h, z9);
                            }
                            if (z9 && MainActivity.f1292i1 == null) {
                                AllWidgetServices.m1384c(mainActivity12);
                                break;
                            }
                            break;
                        case 12:
                            MainActivity mainActivity13 = this.f3299b;
                            String str15 = MainActivity.f1288e1;
                            String str16 = AbstractC3134a1.f8964a;
                            mainActivity13.getPackageManager().setComponentEnabledSetting(new ComponentName(mainActivity13.getPackageName(), AbstractC3134a1.f8964a), z9 ? 1 : 2, 1);
                            break;
                        case 13:
                            MainActivity mainActivity14 = this.f3299b;
                            String str17 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{97, -20, 2, 79, 40, 84, -127, -32, 90, -28, 6, 105, 54, 113, -96, -59, 96, -34, 49, 66, 44, 114, -69, -42, 107, -40}, new byte[]{44, -115, 114, 16, 105, 55, -11, -119}), z9);
                            C1396n3.m2439a(mainActivity14);
                            break;
                        default:
                            MainActivity mainActivity15 = this.f3299b;
                            String str18 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{89, -93, 75, 63, 70, 93, -107, -66, 98, -85, 79, 25, 88, 115, -96, -113, 75, -110, 126, 50, 65, 113, -77, -102, 85, -116, 120, 37}, new byte[]{20, -62, 59, 96, 7, 62, -31, -41}), z9);
                            C1396n3.m2439a(mainActivity15);
                            break;
                    }
                }
            });
            final int i45 = 4;
            this.f1386r0.setOnCheckedChangeListener(new C1378k0(i45));
            this.f1360e0.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: e0.l0

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ MainActivity f3299b;

                {
                    this.f3299b = this;
                }

                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                    RelativeLayout relativeLayout;
                    RelativeLayout relativeLayout2;
                    switch (i45) {
                        case 0:
                            MainActivity mainActivity = this.f3299b;
                            String str3 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-60, -53, 107, 79, -77, 24, -89, 15, -6, -47, 123}, new byte[]{-120, -92, 30, 33, -48, 112, -27, 91}), z9);
                            boolean zLoadBoolean3 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-19, -62, -4, -76, -87, -9, 82, 0, -63, -41, -42, -83, -88, -12, 72}, new byte[]{-98, -75, -93, -39, -36, -101, 38, 105}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity);
                                C3105c c3105c = LounchB.f1282h;
                                if (c3105c != null && (relativeLayout2 = ((LounchB) c3105c.f8867c).f1283b) != null) {
                                    relativeLayout2.setVisibility(0);
                                    break;
                                }
                            } else if (!zLoadBoolean3) {
                                WindowManager windowManager = LounchB.f1281g;
                                mainActivity.stopService(new Intent(mainActivity, (Class<?>) LounchB.class));
                                break;
                            } else {
                                C3105c c3105c2 = LounchB.f1282h;
                                if (c3105c2 != null && (relativeLayout = ((LounchB) c3105c2.f8867c).f1283b) != null) {
                                    relativeLayout.setVisibility(8);
                                    break;
                                }
                            }
                            break;
                        case 1:
                            MainActivity mainActivity2 = this.f3299b;
                            String str4 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{105, -56, -43, 92, 59, -26, -126, 121, 69, -35, -1, 69, 58, -27, -104}, new byte[]{26, -65, -118, 49, 78, -118, -10, 16}), z9);
                            boolean zLoadBoolean4 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{34, -97, -78, -81, 126, -63, 107, -8, 28, -123, -94}, new byte[]{110, -16, -57, -63, 29, -87, 41, -84}), false);
                            if (z9) {
                                LounchB.m1419c(mainActivity2);
                                C3105c c3105c3 = LounchB.f1282h;
                                if (c3105c3 != null) {
                                    ((LounchB) c3105c3.f8867c).m1421b(true);
                                }
                            } else if (zLoadBoolean4) {
                                C3105c c3105c4 = LounchB.f1282h;
                                if (c3105c4 != null) {
                                    ((LounchB) c3105c4.f8867c).m1421b(false);
                                }
                            } else {
                                WindowManager windowManager2 = LounchB.f1281g;
                                mainActivity2.stopService(new Intent(mainActivity2, (Class<?>) LounchB.class));
                            }
                            break;
                        case 2:
                            MainActivity mainActivity3 = this.f3299b;
                            String str5 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{22, 10, -105, -66, -75, -9, -93, 15, 4, 34, -65, -89, -66, -9, -109, 4, 11, 18, -82, -88}, new byte[]{101, 125, -56, -50, -38, -112, -52, 107}), z9);
                            if (z9) {
                                WeatherService.m2207e(mainActivity3);
                            } else {
                                boolean z10 = WeatherService.f2877f;
                                mainActivity3.stopService(new Intent(mainActivity3, (Class<?>) WeatherService.class));
                            }
                            break;
                        case 3:
                            MainActivity mainActivity4 = this.f3299b;
                            String str6 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-116, 46, -84, -101, 100, 117, -91, 13, -98, 42, -99, -106, 114, 123}, new byte[]{-1, 89, -13, -7, 1, 15, -54, 125}), z9);
                            FlexboxLayout flexboxLayout2 = mainActivity4.f1388s0;
                            for (int i210 = 0; i210 < flexboxLayout2.getChildCount(); i210++) {
                                flexboxLayout2.getChildAt(i210).setEnabled(z9);
                            }
                            if (!z9) {
                                FlexboxLayout flexboxLayout3 = mainActivity4.f1388s0;
                                for (int i211 = 0; i211 < flexboxLayout3.getChildCount(); i211++) {
                                    ((MaterialSwitch) flexboxLayout3.getChildAt(i211)).setChecked(false);
                                }
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{68, 18, -70, 67, 56, 122, -80, 114}, new byte[]{55, 101, -27, 48, 76, 21, -36, 25}), false);
                            }
                            break;
                        case 4:
                            MainActivity mainActivity5 = this.f3299b;
                            String str7 = MainActivity.f1288e1;
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-50, -81, 29, 122, 103, 126, 25, 32, -46, -91, 17, 113, 103, 104, 3}, new byte[]{-121, -21, 66, 57, 38, 44, 70, 115});
                            C3277a c3277aM2745o = C1652b.m2745o();
                            StringBuilder sbM170u = AbstractC0074a.m170u(strM2421h);
                            sbM170u.append(mainActivity5.m1429A());
                            c3277aM2745o.saveBoolean(sbM170u.toString(), z9);
                            break;
                        case 5:
                            MainActivity mainActivity6 = this.f3299b;
                            String str8 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-97, -7, 52, -80, -63, 54, 57, -61, -75, -3, 39, -85, -50, 50, 19, -28, -79, -3, 37}, new byte[]{-48, -113, 81, -62, -83, 87, 64, -112}), z9);
                            if (z9) {
                                OverlayService.m1512c(mainActivity6);
                            } else {
                                OverlayService overlayService = OverlayService.f1499f;
                                mainActivity6.stopService(new Intent(mainActivity6.getApplicationContext(), (Class<?>) OverlayService.class));
                                boolean z11 = ServiceC1080Si.f1588d;
                                Context applicationContext = mainActivity6.getApplicationContext();
                                applicationContext.stopService(new Intent(applicationContext, (Class<?>) ServiceC1080Si.class));
                            }
                            break;
                        case 6:
                            MainActivity mainActivity7 = this.f3299b;
                            String str9 = MainActivity.f1288e1;
                            try {
                                C1652b.m2745o().saveBoolean(MockGpsService.f1423r, z9);
                                break;
                            } catch (Exception unused2) {
                            }
                            if (z9) {
                                MockGpsService.m1457m(mainActivity7);
                            } else {
                                MockGpsService.m1449b(mainActivity7);
                                mainActivity7.stopService(new Intent(mainActivity7, (Class<?>) MockGpsService.class));
                            }
                            break;
                        case 7:
                            MainActivity mainActivity8 = this.f3299b;
                            String str10 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(Notik.f1487m, z9);
                            if (z9) {
                                Notik.m1506g(mainActivity8);
                            } else {
                                mainActivity8.getApplicationContext().stopService(new Intent(mainActivity8.getApplicationContext(), (Class<?>) Notik.class));
                            }
                            break;
                        case 8:
                            MainActivity mainActivity9 = this.f3299b;
                            String str11 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(SpeedBoardService.f1614k, z9);
                            if (z9) {
                                SpeedBoardService.m1542b(mainActivity9.getApplicationContext());
                            } else {
                                Context applicationContext2 = mainActivity9.getApplicationContext();
                                applicationContext2.stopService(new Intent(applicationContext2.getApplicationContext(), (Class<?>) SpeedBoardService.class));
                            }
                            break;
                        case 9:
                            MainActivity mainActivity10 = this.f3299b;
                            String str12 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-41, -101, -118, -81, 87, -106, 41, 34, -9, -72, -86, -98, 87, -109, 37, 53, -10, -114, -65, -110, 123, -84, 46, 60, -28}, new byte[]{-127, -47, -55, -5, 8, -59, 76, 80}), z9);
                            if (z9) {
                                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-55, -94, Base64.padSymbol, -120, -39, 119, 3, 91, -42, -79, 54, -92, -11, 97, 5, 76, -51, -90}, new byte[]{-65, -46, 83, -41, -86, 18, 113, 45}), true);
                                TService.m1586c(mainActivity10.getApplicationContext());
                                TService.m1584a(Boolean.TRUE);
                            } else {
                                TService.m1584a(Boolean.FALSE);
                            }
                            break;
                        case 10:
                            MainActivity mainActivity11 = this.f3299b;
                            String str13 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{41, -104, -57, -91, 108, 113, -79, 0, 49, -121, -58, -80, 86, 118, -69, 44, 42, -108, -50}, new byte[]{94, -15, -93, -62, 9, 5, -62, 95}), z9);
                            new SystemMessageReceiver().onReceive(mainActivity11.getApplicationContext(), new Intent(AbstractC1387m.m2421h(new byte[]{42, 46, -109, -91, -102, 9, 5, -100, 34, 46, -125, -78, -101, 20, 79, -45, 40, 52, -98, -72, -101, 78, 35, -3, 4, 20, -88, -108, -70, 45, 49, -2, 14, 20, -78, -109}, new byte[]{75, 64, -9, -41, -11, 96, 97, -78})));
                            break;
                        case 11:
                            MainActivity mainActivity12 = this.f3299b;
                            String str14 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{114, 109, -96, 86, 11, 40, ByteCompanionObject.MAX_VALUE, -101, 71, 82, -87, 115, 20, 37, 123, -101, 64, 94, -97, 104, 12, 43, 116, -101, 100, 104, -94, 101, 13, 59, 71, -79, 93}, new byte[]{51, 1, -52, 1, 98, 76, 24, -2}), z9);
                            EnumC1362h enumC1362h = EnumC1362h.f3254i;
                            AllWidgetServices allWidgetServices = MainActivity.f1292i1;
                            if (allWidgetServices != null) {
                                allWidgetServices.m1388e(enumC1362h, z9);
                            }
                            if (z9 && MainActivity.f1292i1 == null) {
                                AllWidgetServices.m1384c(mainActivity12);
                                break;
                            }
                            break;
                        case 12:
                            MainActivity mainActivity13 = this.f3299b;
                            String str15 = MainActivity.f1288e1;
                            String str16 = AbstractC3134a1.f8964a;
                            mainActivity13.getPackageManager().setComponentEnabledSetting(new ComponentName(mainActivity13.getPackageName(), AbstractC3134a1.f8964a), z9 ? 1 : 2, 1);
                            break;
                        case 13:
                            MainActivity mainActivity14 = this.f3299b;
                            String str17 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{97, -20, 2, 79, 40, 84, -127, -32, 90, -28, 6, 105, 54, 113, -96, -59, 96, -34, 49, 66, 44, 114, -69, -42, 107, -40}, new byte[]{44, -115, 114, 16, 105, 55, -11, -119}), z9);
                            C1396n3.m2439a(mainActivity14);
                            break;
                        default:
                            MainActivity mainActivity15 = this.f3299b;
                            String str18 = MainActivity.f1288e1;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{89, -93, 75, 63, 70, 93, -107, -66, 98, -85, 79, 25, 88, 115, -96, -113, 75, -110, 126, 50, 65, 113, -77, -102, 85, -116, 120, 37}, new byte[]{20, -62, 59, 96, 7, 62, -31, -41}), z9);
                            C1396n3.m2439a(mainActivity15);
                            break;
                    }
                }
            });
            this.f1362f0.setOnCheckedChangeListener(new C1378k0(27));
            this.f1364g0.setOnCheckedChangeListener(new C1378k0(5));
            this.f1366h0.setOnCheckedChangeListener(new C1378k0(7));
            m1445t(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{110, 69, -96, 14, 62, -2, -12, 99, 65, 97}, new byte[]{45, 4, -14, 94, 76, -111, -110, 10}), null));
            m1444Q(this);
        } else {
            Intent intent = new Intent(getApplicationContext(), (Class<?>) punto.class);
            if (Build.VERSION.SDK_INT >= 34) {
                intent.addFlags(268435456);
            }
            AbstractC3656k.m5876v(this, intent);
            finish();
        }
        C1343d0.m2389d(this);
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        PackageInfo packageInfo;
        PackageInfo packageInfo2;
        int itemId = menuItem.getItemId();
        TextView textView = (TextView) findViewById(R.id.textView);
        int i10 = 10;
        if (itemId == R.id.menu_VDisplay) {
            Display[] displays = ((DisplayManager) getApplicationContext().getSystemService(AbstractC1387m.m2421h(new byte[]{29, 66, -20, ByteCompanionObject.MIN_VALUE, 98, -97, 18}, new byte[]{121, 43, -97, -16, 14, -2, 107, 36}))).getDisplays();
            StringBuilder sb = new StringBuilder();
            sb.append(AbstractC1387m.m2421h(new byte[]{-122, 10, 106, -30, -97, -89, 49, -59, -8, 67}, new byte[]{-62, 99, 25, -110, -13, -58, 72, -74}));
            String strM164o = AbstractC0074a.m164o(sb, " ", displays.length);
            String strM2075i = "";
            for (Display display : displays) {
                StringBuilder sbM170u = AbstractC0074a.m170u(strM2075i);
                sbM170u.append(display.toString());
                strM2075i = AbstractC1178q.m2075i(new byte[]{11}, new byte[]{39, -1, -37, 60, 15, -28, -6, 14}, sbM170u);
            }
            textView.setText(strM164o.concat(strM2075i));
            return true;
        }
        if (itemId == R.id.menu_about) {
            String str = getResources().getString(R.string.lorem_ipsum) + getResources().getString(R.string.lorem_ipsum_new);
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle(getResources().getString(R.string.app_name)).setMessage(str);
            builder.create().show();
            return true;
        }
        if (itemId == R.id.menu_broadcast) {
            C0862c c0862c = new C0862c();
            String strM2421h = AbstractC1387m.m2421h(new byte[]{37, -117, -88, 3, -36, 119, -97, 54, 45, -117, -72, 20, -35, 106, -43, 121, 39, -111, -91, 30, -35, 48, -104, 121, 54, -70, -65, 8, -64, 106, -98, 117, 27, -126, -87, 2, -57, 107, -119, 125, 27, -120, -93, 21, -42}, new byte[]{68, -27, -52, 113, -77, 30, -5, 24});
            if (Build.VERSION.SDK_INT >= 33) {
                registerReceiver(c0862c, new IntentFilter(strM2421h), 2);
                return true;
            }
            registerReceiver(c0862c, new IntentFilter(strM2421h));
            return true;
        }
        if (itemId == R.id.menu_update) {
            getPackageManager().getInstalledPackages(128);
            try {
                packageInfo = getApplicationContext().getPackageManager().getPackageInfo(getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException unused) {
                packageInfo = null;
            }
            if ((Build.VERSION.SDK_INT >= 28 ? PackageInfoCompat.getLongVersionCode(packageInfo) : packageInfo.versionCode) < Long.valueOf(AbstractAsyncTaskC1449z2.f3517a).longValue()) {
                new C1445y2(AbstractC1387m.m2421h(new byte[]{-4, -10}, new byte[]{-78, -91, -3, 80, -107, 15, -101, 87}), this);
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getResources().getString(R.string.not_update));
                getPackageManager().getInstalledPackages(128);
                try {
                    packageInfo2 = getApplicationContext().getPackageManager().getPackageInfo(getPackageName(), 0);
                } catch (PackageManager.NameNotFoundException unused2) {
                    packageInfo2 = null;
                }
                sb2.append(packageInfo2.versionName);
                String string = sb2.toString();
                AlertDialog.Builder builder2 = new AlertDialog.Builder(this);
                builder2.setTitle(getResources().getString(R.string.app_name)).setMessage(string);
                AlertDialog alertDialogCreate = builder2.create();
                alertDialogCreate.show();
                new Handler().postDelayed(new RunnableC0014g(i10, alertDialogCreate), 26000L);
            }
        }
        if (itemId == R.id.au) {
            AbstractC3656k.m5875u(this, new Intent(getApplicationContext(), (Class<?>) punto.class), null);
        }
        if (itemId == R.id.menu_perm) {
            AbstractC3656k.m5875u(this, new Intent(getApplicationContext(), (Class<?>) TestSpaceActivity.class).addFlags(268435456), null);
        }
        if (itemId == R.id.menu_wifi) {
            AbstractC3656k.m5875u(this, new Intent(this, (Class<?>) MainWifiManadger.class), null);
        }
        if (itemId == R.id.menu_arad) {
            AbstractC3656k.m5875u(this, new Intent(this, (Class<?>) RadarActivity.class), null);
        }
        if (itemId == R.id.aupdate) {
            AbstractC3656k.m5875u(this, new Intent(this, (Class<?>) UpdateActivity.class), null);
        }
        if (itemId == R.id.menu_vpn) {
            AbstractC3656k.m5875u(this, new Intent(this, (Class<?>) VJCT.class), null);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i10, strArr, iArr);
        if (i10 != 100 || iArr.length <= 0 || iArr[0] != 0 || Build.VERSION.SDK_INT < 29 || ContextCompat.checkSelfPermission(this, AbstractC1387m.m2421h(new byte[]{-105, -108, -63, -28, -54, -77, 33, -11, -122, -97, -41, -5, -52, -87, 54, -78, -103, -108, -117, -41, -26, -103, 0, -120, -91, -91, -25, -41, -26, -111, 2, -119, -71, -81, -21, -46, -6, -106, 10, -104, -73, -82, -20, -39, -21}, new byte[]{-10, -6, -91, -106, -91, -38, 69, -37})) == 0) {
            return;
        }
        ActivityCompat.requestPermissions(this, new String[]{AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, 48, -40, 29, -12, 58, 20, 3, 44, 59, -50, 2, -14, 32, 3, 68, 51, 48, -110, 46, -40, 16, 53, 126, 15, 1, -2, 46, -40, 24, 55, ByteCompanionObject.MAX_VALUE, 19, 11, -14, 43, -60, 31, 63, 110, 29, 10, -11, 32, -43}, new byte[]{92, 94, -68, 111, -101, 83, 112, 45})}, 100);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        String str = AbstractC1358g0.f3235a;
        C3277a c3277aM2745o = C1652b.m2745o();
        String str2 = AbstractC1358g0.f3235a;
        String str3 = AbstractC1358g0.f3236b;
        String strLoadString = c3277aM2745o.loadString(str2, str3);
        int i10 = 0;
        String language = ConfigurationCompat.getLocales(getResources().getConfiguration()).get(0).getLanguage();
        String language2 = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration()).get(0).getLanguage();
        if (strLoadString.equals(str3)) {
            if (!language.equals(language2)) {
                AbstractC1358g0.m2405c(this, str3);
                recreate();
            }
        } else if (!language.equals(strLoadString)) {
            AbstractC1358g0.m2405c(this, strLoadString);
            recreate();
        }
        AppCompatDelegate.setDefaultNightMode(1);
        String language3 = Locale.getDefault().getLanguage();
        TextView textView = (TextView) findViewById(R.id.Pay_text);
        ImageView imageView = (ImageView) findViewById(R.id.QRPAY);
        if (AbstractC1387m.m2421h(new byte[]{-7, -64}, new byte[]{-117, -75, -33, 22, -72, 106, -107, 46}).equals(language3)) {
            textView.setText(AbstractC1387m.m2421h(new byte[]{-22, 28, 126, -110, -69, -30, 56, -69, -21, 10, -108}, new byte[]{58, -120, -82, 44, 107, 95, -24, 11}));
            Bitmap bitmapM2510i = C1461d.m2510i(this);
            if (bitmapM2510i != null) {
                imageView.setImageBitmap(bitmapM2510i);
            }
        } else {
            textView.setText(AbstractC1387m.m2421h(new byte[]{16, -123, 94, -3, 12, 8, -125, 14, 51, -109, 11}, new byte[]{82, -22, 49, -114, 120, 113, -93, 94}));
            imageView.setImageResource(R.drawable.woha_donate);
        }
        C1343d0.m2389d(this);
        if (this.f1350b) {
            this.f1359e.post(new RunnableC1388m0(this, 18));
            this.f1350b = false;
        }
        if (!C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-39, 30}, new byte[]{-72, 107, 64, -127, -120, -118, 78, 40}), false)) {
            Intent intent = new Intent(getApplicationContext(), (Class<?>) punto.class);
            if (Build.VERSION.SDK_INT >= 34) {
                intent.addFlags(268435456);
            }
            AbstractC3656k.m5875u(this, intent, null);
            finish();
            return;
        }
        m1436I();
        AbstractC1434w.m2482c(-1, null).execute(new RunnableC1388m0(this, i10));
        AbstractC1387m.m2416c();
        m1446u();
        m1441N();
        Long l10 = f1293j1;
        String str4 = punto.f1867r;
        if (l10.longValue() < 0 || Long.valueOf((l10.longValue() - (System.currentTimeMillis() / 1000)) / 86400).intValue() >= 0) {
            return;
        }
        String string = getResources().getString(R.string.punto_lic_null);
        if (!AbstractC1387m.m2421h(new byte[]{105, 85}, new byte[]{27, 32, -91, -118, -127, -125, -45, -51}).equals(language3)) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle(getResources().getString(R.string.app_name)).setMessage(string);
            builder.create().show();
        } else {
            ImageView imageView2 = new ImageView(this);
            Bitmap bitmapM2510i2 = C1461d.m2510i(this);
            if (bitmapM2510i2 != null) {
                imageView2.setImageBitmap(bitmapM2510i2);
            }
            new AlertDialog.Builder(this).setTitle(getString(R.string.app_name)).setMessage(string).setView(imageView2).setPositiveButton(getString(R.string.ok), (DialogInterface.OnClickListener) null).show();
        }
    }

    /* JADX INFO: renamed from: t */
    public final void m1445t(String str) {
        TextView textView;
        String strName = (str == null || str.isEmpty() || AbstractC1031d.m1279i(EnumC2468c.class, str) == null) ? EnumC2468c.values()[0].name() : str;
        this.f1341W0 = (CardView) findViewById(R.id.blok_bez);
        EnumC2468c enumC2468c = (EnumC2468c) AbstractC1031d.m1279i(EnumC2468c.class, strName);
        Objects.requireNonNull(enumC2468c);
        C1396n3.m2439a(this);
        this.f1346Z.setVisibility(8);
        this.f1348a0.setVisibility(8);
        this.f1351b0.setVisibility(8);
        AbstractC1387m.m2436w(this);
        this.f1354c0.setVisibility(8);
        this.f1357d0.setVisibility(8);
        AbstractC1387m.m2434u(this, false);
        switch (enumC2468c.ordinal()) {
            case 0:
                AbstractC1387m.m2425l(this, false, false, false, false);
                AbstractC1387m.m2433t(this, false, false, false, false, false);
                AbstractC1387m.m2427n(this, false);
                AbstractC1387m.m2430q(this, false, false);
                AbstractC1387m.m2428o(this, false);
                AbstractC1387m.m2431r(this, false);
                AbstractC1387m.m2432s(this, false);
                AbstractC1387m.m2435v(this, false, false);
                this.f1345Y0.setVisibility(8);
                this.f1320M.setVisibility(8);
                this.f1322N.setVisibility(8);
                this.f1328Q.setVisibility(8);
                break;
            case 1:
                AbstractC1387m.m2429p(this);
                break;
            case 2:
                AbstractC1387m.m2429p(this);
                break;
            case 3:
                AbstractC1387m.m2429p(this);
                break;
            case 4:
                AbstractC1387m.m2429p(this);
                AbstractC1387m.m2427n(this, false);
                AbstractC1387m.m2434u(this, false);
                break;
            case 5:
                AbstractC1387m.m2429p(this);
                break;
            case 7:
                AbstractC1387m.m2425l(this, true, true, true, true);
                AbstractC1387m.m2433t(this, true, false, false, false, false);
                AbstractC1387m.m2430q(this, true, true);
                AbstractC1387m.m2427n(this, true);
                AbstractC1387m.m2426m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                AbstractC1387m.m2428o(this, false);
                AbstractC1387m.m2431r(this, true);
                AbstractC1387m.m2432s(this, true);
                this.f1345Y0.setVisibility(0);
                this.f1320M.setVisibility(0);
                this.f1322N.setVisibility(0);
                AbstractC1387m.m2435v(this, true, true);
                this.f1328Q.setVisibility(0);
                AbstractC1387m.m2434u(this, true);
                break;
            case 8:
                AbstractC1387m.m2425l(this, true, false, false, false);
                AbstractC1387m.m2433t(this, true, true, false, false, false);
                AbstractC1387m.m2427n(this, false);
                AbstractC1387m.m2426m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                AbstractC1387m.m2430q(this, false, false);
                AbstractC1387m.m2428o(this, false);
                this.f1345Y0.setVisibility(0);
                this.f1320M.setVisibility(0);
                AbstractC1387m.m2431r(this, true);
                AbstractC1387m.m2432s(this, true);
                this.f1322N.setVisibility(0);
                AbstractC1387m.m2435v(this, true, true);
                this.f1328Q.setVisibility(0);
                break;
            case 9:
            case 21:
                AbstractC1387m.m2425l(this, true, true, true, true);
                AbstractC1387m.m2433t(this, true, true, false, false, false);
                AbstractC1387m.m2427n(this, false);
                AbstractC1387m.m2426m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                AbstractC1387m.m2430q(this, true, true);
                AbstractC1387m.m2431r(this, true);
                AbstractC1387m.m2432s(this, true);
                AbstractC1387m.m2428o(this, false);
                this.f1320M.setVisibility(0);
                this.f1322N.setVisibility(8);
                AbstractC1387m.m2435v(this, true, true);
                this.f1328Q.setVisibility(0);
                this.f1345Y0.setVisibility(0);
                break;
            case 10:
                AbstractC1387m.m2425l(this, true, true, true, true);
                AbstractC1387m.m2433t(this, true, true, false, false, false);
                AbstractC1387m.m2427n(this, false);
                AbstractC1387m.m2426m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                AbstractC1387m.m2430q(this, true, true);
                AbstractC1387m.m2428o(this, true);
                AbstractC1387m.m2431r(this, true);
                AbstractC1387m.m2432s(this, true);
                this.f1320M.setVisibility(0);
                this.f1322N.setVisibility(8);
                AbstractC1387m.m2435v(this, true, true);
                this.f1328Q.setVisibility(0);
                this.f1345Y0.setVisibility(0);
                break;
            case 11:
                AbstractC1387m.m2425l(this, true, false, true, false);
                AbstractC1387m.m2433t(this, true, true, false, false, false);
                AbstractC1387m.m2427n(this, false);
                AbstractC1387m.m2426m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                AbstractC1387m.m2430q(this, true, true);
                AbstractC1387m.m2431r(this, true);
                AbstractC1387m.m2432s(this, true);
                AbstractC1387m.m2428o(this, false);
                this.f1345Y0.setVisibility(0);
                this.f1320M.setVisibility(0);
                this.f1322N.setVisibility(0);
                AbstractC1387m.m2435v(this, true, true);
                this.f1328Q.setVisibility(0);
                break;
            case 12:
                AbstractC1387m.m2425l(this, false, false, true, false);
                AbstractC1387m.m2433t(this, false, false, false, false, false);
                AbstractC1387m.m2427n(this, false);
                AbstractC1387m.m2426m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                AbstractC1387m.m2430q(this, false, false);
                AbstractC1387m.m2431r(this, false);
                AbstractC1387m.m2432s(this, false);
                AbstractC1387m.m2428o(this, false);
                this.f1345Y0.setVisibility(8);
                this.f1320M.setVisibility(0);
                this.f1322N.setVisibility(8);
                AbstractC1387m.m2435v(this, true, false);
                this.f1328Q.setVisibility(0);
                break;
            case 13:
                AbstractC1387m.m2425l(this, true, true, true, true);
                AbstractC1387m.m2433t(this, true, false, true, false, false);
                AbstractC1387m.m2427n(this, false);
                AbstractC1387m.m2426m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                AbstractC1387m.m2430q(this, false, false);
                AbstractC1387m.m2428o(this, false);
                this.f1345Y0.setVisibility(0);
                this.f1320M.setVisibility(0);
                this.f1322N.setVisibility(8);
                AbstractC1387m.m2435v(this, true, true);
                AbstractC1387m.m2431r(this, true);
                AbstractC1387m.m2432s(this, true);
                this.f1328Q.setVisibility(0);
                break;
            case 14:
                AbstractC1387m.m2425l(this, true, true, true, true);
                AbstractC1387m.m2433t(this, true, false, true, false, false);
                AbstractC1387m.m2427n(this, false);
                AbstractC1387m.m2426m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                AbstractC1387m.m2428o(this, false);
                AbstractC1387m.m2431r(this, true);
                AbstractC1387m.m2432s(this, true);
                AbstractC1387m.m2430q(this, false, false);
                this.f1345Y0.setVisibility(0);
                this.f1320M.setVisibility(0);
                this.f1322N.setVisibility(8);
                AbstractC1387m.m2435v(this, true, true);
                this.f1328Q.setVisibility(0);
                break;
            case 15:
                AbstractC1387m.m2425l(this, false, true, true, true);
                AbstractC1387m.m2433t(this, true, false, false, false, false);
                AbstractC1387m.m2427n(this, false);
                AbstractC1387m.m2426m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                AbstractC1387m.m2430q(this, false, false);
                AbstractC1387m.m2428o(this, false);
                this.f1345Y0.setVisibility(0);
                this.f1320M.setVisibility(0);
                this.f1322N.setVisibility(8);
                AbstractC1387m.m2435v(this, true, true);
                this.f1328Q.setVisibility(0);
                AbstractC1387m.m2431r(this, true);
                AbstractC1387m.m2432s(this, true);
                break;
            case 16:
                AbstractC1387m.m2425l(this, true, true, true, true);
                AbstractC1387m.m2433t(this, true, false, false, false, true);
                AbstractC1387m.m2427n(this, false);
                AbstractC1387m.m2426m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                AbstractC1387m.m2430q(this, false, false);
                AbstractC1387m.m2428o(this, false);
                AbstractC1387m.m2434u(this, false);
                AbstractC1387m.m2431r(this, true);
                AbstractC1387m.m2432s(this, true);
                this.f1345Y0.setVisibility(0);
                this.f1320M.setVisibility(0);
                this.f1322N.setVisibility(8);
                AbstractC1387m.m2435v(this, true, true);
                this.f1328Q.setVisibility(0);
                break;
            case 17:
                this.f1357d0.setVisibility(0);
                AbstractC1387m.m2425l(this, true, true, false, false);
                AbstractC1387m.m2433t(this, true, false, false, false, false);
                this.f1346Z.setVisibility(0);
                AbstractC1387m.m2427n(this, false);
                AbstractC1387m.m2430q(this, false, true);
                AbstractC1387m.m2428o(this, true);
                AbstractC1387m.m2431r(this, true);
                AbstractC1387m.m2432s(this, true);
                this.f1345Y0.setVisibility(0);
                this.f1320M.setVisibility(0);
                this.f1322N.setVisibility(8);
                this.f1326P.setVisibility(8);
                this.f1328Q.setVisibility(0);
                break;
            case 18:
                AbstractC1387m.m2425l(this, false, true, false, false);
                AbstractC1387m.m2433t(this, true, false, false, false, false);
                this.f1346Z.setVisibility(8);
                this.f1348a0.setVisibility(0);
                AbstractC1387m.m2427n(this, false);
                AbstractC1387m.m2430q(this, false, true);
                AbstractC1387m.m2428o(this, false);
                AbstractC1387m.m2431r(this, true);
                AbstractC1387m.m2432s(this, true);
                this.f1345Y0.setVisibility(0);
                this.f1320M.setVisibility(0);
                this.f1322N.setVisibility(8);
                this.f1326P.setVisibility(8);
                this.f1328Q.setVisibility(0);
                break;
            case 19:
                AbstractC1387m.m2425l(this, true, true, true, true);
                AbstractC1387m.m2433t(this, true, false, false, false, false);
                AbstractC1387m.m2427n(this, false);
                AbstractC1387m.m2426m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                AbstractC1387m.m2430q(this, false, false);
                AbstractC1387m.m2428o(this, false);
                AbstractC1387m.m2431r(this, true);
                AbstractC1387m.m2432s(this, true);
                this.f1345Y0.setVisibility(0);
                this.f1320M.setVisibility(0);
                this.f1322N.setVisibility(8);
                this.f1326P.setVisibility(8);
                this.f1328Q.setVisibility(0);
                break;
            case 20:
                AbstractC1387m.m2425l(this, true, false, false, false);
                AbstractC1387m.m2433t(this, false, false, false, false, false);
                AbstractC1387m.m2427n(this, false);
                AbstractC1387m.m2430q(this, false, false);
                AbstractC1387m.m2428o(this, false);
                AbstractC1387m.m2431r(this, true);
                AbstractC1387m.m2432s(this, true);
                this.f1345Y0.setVisibility(8);
                this.f1320M.setVisibility(8);
                this.f1322N.setVisibility(8);
                AbstractC1387m.m2435v(this, false, false);
                this.f1328Q.setVisibility(8);
                break;
        }
        View viewFindViewById = findViewById(R.id.MainStartProHUD);
        if (viewFindViewById != null && (textView = (TextView) viewFindViewById.findViewById(R.id.MainLabel)) != null) {
            boolean z9 = enumC2468c == EnumC2468c.f6681B || enumC2468c == EnumC2468c.f6700x || enumC2468c == EnumC2468c.f6701y || enumC2468c == EnumC2468c.f6691o;
            textView.setText(z9 ? R.string.item_hud : R.string.dashboard_widgets_title);
            MaterialSwitch materialSwitch = (MaterialSwitch) viewFindViewById.findViewById(R.id.sw_start_app_hud);
            if (materialSwitch != null) {
                materialSwitch.setText(z9 ? R.string.sw_HUD_Custom_On : R.string.dashboard_widgets_switch);
            }
        }
        mo1435H(enumC2468c);
    }

    /* JADX INFO: renamed from: u */
    public final void m1446u() {
        String strLoadString = C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-113, -80, -1, -33, -120, -45, 98, 10}, new byte[]{-51, -4, -86, ByteCompanionObject.MIN_VALUE, -58, -110, 47, 79}) + this.f1299B0.getSelectedItem(), null);
        int i10 = 0;
        String[] strArr = {getString(R.string.blu_vod_not_set)};
        String[] strArr2 = AbstractC1387m.f3315c;
        String[] strArr3 = AbstractC1406p3.f3368a;
        if (strArr2 != null) {
            String[] strArr4 = new String[strArr2.length + 1];
            System.arraycopy(strArr, 0, strArr4, 0, 1);
            System.arraycopy(strArr2, 0, strArr4, 1, strArr2.length);
            strArr = strArr4;
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, R.layout.spinner_text, strArr);
        arrayAdapter.setDropDownViewResource(R.layout.simple_spinner_dropdown);
        this.f1301C0.setAdapter((SpinnerAdapter) arrayAdapter);
        this.f1301C0.setPrompt(AbstractC1387m.m2421h(new byte[]{-28, -8, 26, -38, 3}, new byte[]{-80, -111, 110, -74, 102, -109, -43, -55}));
        if (strLoadString != null) {
            for (int i11 = 0; i11 < strArr.length; i11++) {
                if (strLoadString.equals(strArr[i11])) {
                    i10 = i11;
                    break;
                }
            }
        }
        this.f1301C0.setSelection(i10);
    }

    /* JADX INFO: renamed from: z */
    public int mo1447z() {
        return R.layout.activity_main2;
    }

    /* JADX INFO: renamed from: H */
    public void mo1435H(EnumC2468c enumC2468c) {
    }
}
