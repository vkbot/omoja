package com.example.navistart;

import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Display;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AlertDialog$Builder;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.cardview.widget.CardView;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.content.pm.PackageInfoCompat;
import androidx.core.os.ConfigurationCompat;
import androidx.core.view.ViewCompat;
import androidx.navigation.c;
import b1.u;
import c5.h;
import com.bumptech.glide.d;
import com.example.navistart.MockGPS.MockGpsService;
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
import com.google.protobuf.q;
import com.woha.atir.RadarActivity;
import com.woha.wifim.MainWifiManadger;
import e0.b1;
import e0.c1;
import e0.d0;
import e0.d1;
import e0.e1;
import e0.f1;
import e0.g;
import e0.g0;
import e0.i1;
import e0.j1;
import e0.k0;
import e0.l0;
import e0.m;
import e0.m0;
import e0.n0;
import e0.n3;
import e0.o0;
import e0.p0;
import e0.p3;
import e0.q0;
import e0.r0;
import e0.s0;
import e0.t0;
import e0.u0;
import e0.w;
import e0.w0;
import e0.x0;
import e0.y0;
import e0.y2;
import e0.z0;
import e0.z2;
import h0.b;
import j1.x;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import n0.f;
import s1.a1;
import u0.a;
import y5.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MainActivity extends AppCompatActivity {
    public static AllWidgetServices i1;
    public MaterialSwitch A;
    public Spinner A0;
    public MaterialSwitch B;
    public Spinner B0;
    public MaterialSwitch C;
    public Spinner C0;
    public HeatManSetView D;
    public Spinner D0;
    public HeatManSetView E;
    public Spinner E0;
    public HeatManSetView F;
    public Spinner F0;
    public HeatManSetView G;
    public Spinner G0;
    public HeatManSetView H;
    public Spinner H0;
    public HeatManSetView I;
    public Spinner I0;
    public HeatManSetView J;
    public Spinner J0;
    public HeatManSetView K;
    public Spinner K0;
    public CardView L;
    public Spinner L0;
    public CardView M;
    public Spinner M0;
    public CardView N;
    public Spinner N0;
    public CardView O;
    public Spinner O0;
    public CardView P;
    public Spinner P0;
    public CardView Q;
    public TextInputLayout Q0;
    public CardView R;
    public YMovLay R0;
    public CardView S;
    public YMovLay S0;
    public LinearLayout T;
    public YMovLay T0;
    public LinearLayout U;
    public YMovLay U0;
    public LinearLayout V;
    public YMovLay V0;
    public LinearLayout W;
    public CardView W0;
    public LinearLayout X;
    public ImageView X0;
    public LinearLayout Y;
    public CardView Y0;
    public LinearLayout Z;
    public LinearLayout Z0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public LinearLayout f695a0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public MainWidjet f696a1;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public View f698b0;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public Button f699b1;
    public TextView c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public View f700c0;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public MainView f701c1;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public View f702d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public MaterialSwitch f704e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public MaterialSwitch f706f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public MaterialSwitch f708g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public MaterialSwitch f710h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public MaterialSwitch f712i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public MaterialSwitch f714j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public MaterialSwitch f716k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public MaterialSwitch f718l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public MaterialSwitch f720m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public MaterialSwitch f722n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public MaterialSwitch f724o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public MaterialSwitch f726p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public MaterialSwitch f728q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public MaterialSwitch f729r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public FlexboxLayout f731s0;
    public String[] t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public MaterialSwitch f732t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String[] f733u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public MaterialSwitch f734u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String[] f735v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public MaterialSwitch f736v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public MaterialSwitch f737w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public TabLayout f738x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public MaterialSwitch f739x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public MaterialSwitch f740y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public MaterialSwitch f741y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public MaterialSwitch f742z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public Spinner f743z0;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public static final String f688e1 = m.h(new byte[]{-94, 118, -39, 111, 110, -2, -40, 49, -88, 45, -114, 119, 97, -12, -39, 44, -66, 98, -127, ByteCompanionObject.MAX_VALUE}, new byte[]{-48, 3, -9, 22, 15, -112, -68, 84});

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public static final String f689f1 = m.h(new byte[]{87, -59, -4}, new byte[]{39, -82, -101, 10, -44, 14, -67, -117});

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public static final String f690g1 = m.h(new byte[]{43, 108, -4, -30, 48, -96, -20, -44, 4, 89, -34, -30, 34, -91, -15, -43, 53, 79, -40, -36, 49, -92, -38, -35, 31}, new byte[]{106, 60, -84, -67, 67, -48, -123, -70});

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public static final String f691h1 = m.h(new byte[]{8, -65, -126, ByteCompanionObject.MIN_VALUE, -80, 43, 23, 70, 2, -73, -97, -115, -65, 19, 59, 95, 2, -74, -124, -123, -114, 23, 11, 92, 19, -96, -126, -120, -114, 16, 13, 65, 6, -80, -127, -127, -75}, new byte[]{103, -46, -19, -28, -47, 116, 100, 50});

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public static Long f692j1 = -1L;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public static final String[] f693k1 = {m.h(new byte[]{58, 118, 67, 99, -58, -90, -5}, new byte[]{99, 59, 28, 81, -10, -120, -55, -3}), m.h(new byte[]{46, 10, -62, 27, -42, -111}, new byte[]{119, 68, -99, 42, -8, -89, 121, 102}), m.h(new byte[]{-46, -44, 17, 45, 77, -13}, new byte[]{-117, -102, 78, 26, 99, -62, 24, -41}), m.h(new byte[]{13, 117, 24, -55}, new byte[]{122, 20, 98, -84, -78, 29, 34, -102}), m.h(new byte[]{113, 50, -58, -8, -32, 2, -109, 84, 92, 26, -22, -66}, new byte[]{40, ByteCompanionObject.MAX_VALUE, -103, -54, -48, 44, -95, 11})};

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public static Boolean f694l1 = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f697b = true;
    public int d = 0;
    public final Handler e = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f705f = p3.b(2) + p3.b(4) + p3.a(6) + p3.a(0) + m.h(new byte[]{29}, new byte[]{51, 24, 58, -13, 46, 124, Base64.padSymbol, -60}) + p3.c(5) + p3.c(7);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f707g = m.h(new byte[]{47, -89, -126, 20, -84, -118, 113, 102, 9, -122, -70, 17, -89}, new byte[]{104, -12, -35, 120, -55, -20, 5, 43});

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f709h = m.h(new byte[]{117, 59, -96, -30, -67, -116, -104, -104, 64, 15, -106, -8}, new byte[]{50, 104, -1, -106, -46, -4, -43, -7});

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f711i = m.h(new byte[]{-122, -97, 65, 92}, new byte[]{-73, -84, 116, 108, -30, -39, 87, 11});

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f713j = m.h(new byte[]{-106, -91, -54}, new byte[]{-94, -107, -6, -92, 19, -70, 87, 1});

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f715k = m.h(new byte[]{46, -90, 118, -38, -117, -111, -13, 28, 12, -103, 78, -33, ByteCompanionObject.MIN_VALUE}, new byte[]{109, -21, 41, -74, -18, -9, -121, 81});

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f717l = m.h(new byte[]{118, -109, 103, -29, 47, -91, -52, 114, 71, -71, 81, -7}, new byte[]{53, -34, 56, -105, 64, -43, -127, 19});

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f719m = m.h(new byte[]{52, 76, -21, -85}, new byte[]{5, 120, -37, -101, 1, 37, -13, -62});

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f721n = m.h(new byte[]{-16, -62, 106}, new byte[]{-62, -9, 90, 54, -68, -70, -53, -76});

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f723o = m.h(new byte[]{112, 98, 63, 54, 11, -90, -59, 18, 87, 83, 7, 51, 0}, new byte[]{54, 33, 96, 90, 110, -64, -79, 95});

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f725p = m.h(new byte[]{36, 69, 103, 15, -108, 97, -77, 92, 15, 75, 89, 31, -100, 124, -87}, new byte[]{98, 6, 56, 109, -5, 21, -57, 51});

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f727q = m.h(new byte[]{-106, -35, -126}, new byte[]{-95, -24, -78, 67, 43, 40, -3, -78});
    public final String r = m.h(new byte[]{-33, -33, -58}, new byte[]{-18, -22, -10, -15, 18, 111, 80, -86});

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final String f730s = m.h(new byte[]{-23, -123, -8}, new byte[]{-40, -77, -56, -25, -67, 29, -28, -44});
    public String w = "";

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public final HashMap f703d1 = new HashMap();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String B(String str) throws ClassNotFoundException {
        Class<?> cls = Class.forName(m.h(new byte[]{-16, 31, 20, 14, -3, 15, 93, 112, -2, 2, 94, 47, -21, 21, 77, 59, -4, 33, 2, 19, -30, 3, 75, 42, -8, 20, 3}, new byte[]{-111, 113, 112, 124, -110, 102, 57, 94}));
        return (String) cls.getMethod(m.h(new byte[]{ByteCompanionObject.MAX_VALUE, -97, 56}, new byte[]{24, -6, 76, -114, 9, 66, -21, 58}), String.class).invoke(cls, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void s(MainActivity mainActivity) {
        if (ContextCompat.checkSelfPermission(mainActivity, m.h(new byte[]{-7, -23, -80, 56, 15, -13, 6, 24, -24, -30, -90, 39, 9, -23, 17, 95, -9, -23, -6, 11, 35, -39, 39, 101, -53, -40, -110, 3, 46, -33, Base64.padSymbol, 122, -41, -60, -107, 30, 41, -43, 44}, new byte[]{-104, -121, -44, 74, 96, -102, 98, 54})) != 0) {
            ActivityCompat.requestPermissions(mainActivity, new String[]{m.h(new byte[]{ByteCompanionObject.MAX_VALUE, -68, -30, 120, 57, -47, -79, -127, 110, -73, -12, 103, 63, -53, -90, -58, 113, -68, -88, 75, 21, -5, -112, -4, 77, -115, -64, 67, 24, -3, -118, -29, 81, -111, -57, 94, 31, -9, -101}, new byte[]{30, -46, -122, 10, 86, -72, -43, -81})}, 100);
        } else {
            if (Build$VERSION.SDK_INT < 29 || ContextCompat.checkSelfPermission(mainActivity, m.h(new byte[]{100, 107, 76, 18, 84, 20, 77, 35, 117, 96, 90, 13, 82, 14, 90, 100, 106, 107, 6, 33, 120, 62, 108, 94, 86, 90, 106, 33, 120, 54, 110, 95, 74, 80, 102, 36, 100, 49, 102, 78, 68, 81, 97, 47, 117}, new byte[]{5, 5, 40, 96, 59, 125, 41, 13})) == 0) {
                return;
            }
            ActivityCompat.requestPermissions(mainActivity, new String[]{m.h(new byte[]{-7, 0, -82, 106, -35, 5, -87, -63, -24, 11, -72, 117, -37, 31, -66, -122, -9, 0, -28, 89, -15, 47, -120, -68, -53, 49, -120, 89, -15, 39, -118, -67, -41, 59, -124, 92, -19, 32, -126, -84, -39, 58, -125, 87, -4}, new byte[]{-104, 110, -54, 24, -78, 108, -51, -17})}, 100);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean v(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean w() {
        try {
            String[] strArr = p3.f1924a;
            String strB = B(u.g(strArr[0]));
            String strB2 = B(u.g(strArr[1]));
            String strB3 = B(u.g(strArr[2]));
            return (strB != null && (strB.contains(u.g(strArr[3])) || strB.contains(u.g(strArr[4])))) || (strB2 != null && strB2.equals(m.h(new byte[]{118}, new byte[]{71, 77, -16, 84, -89, -23, -54, 69}))) || (strB3 != null && (strB3.contains(u.g(strArr[5])) || strB3.contains(u.g(strArr[6])))) || x();
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean x() {
        Boolean bool = f694l1;
        if (bool != null) {
            return bool.booleanValue();
        }
        String[] strArr = p3.f1924a;
        String[] strArr2 = {u.g(strArr[7]), u.g(strArr[8]), u.g(strArr[9]), u.g(strArr[10])};
        for (int i9 = 0; i9 < 4; i9++) {
            if (new File(strArr2[i9]).exists()) {
                f694l1 = Boolean.TRUE;
                return true;
            }
        }
        f694l1 = Boolean.FALSE;
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int y(String str, ArrayList arrayList) {
        if (str == null || str.isEmpty()) {
            return 0;
        }
        for (int i9 = 1; i9 < arrayList.size(); i9++) {
            if (str.equals(((j1) arrayList.get(i9)).f1869a)) {
                return i9;
            }
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int A() {
        return this.f738x.getSelectedTabPosition() + 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void C() {
        RadioGroup radioGroup = (RadioGroup) findViewById(2131297314);
        int iLoadInt = b.o().loadInt(m.h(new byte[]{-101, 114, 20, 15, 72, 94, 96, -126, -101, 101, 34, 10, 72, 109, 104, -114, -117, 105, 18, 23}, new byte[]{-1, 0, 125, 121, 45, 1, 13, -19}), 0);
        if (iLoadInt == 1) {
            radioGroup.check(2131297251);
        } else if (iLoadInt == 2) {
            radioGroup.check(2131297252);
        } else if (iLoadInt == 3) {
            radioGroup.check(2131297254);
        } else {
            radioGroup.check(2131297253);
        }
        radioGroup.setOnCheckedChangeListener(new p0(this, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void D() {
        RadioGroup radioGroup = (RadioGroup) findViewById(2131297307);
        int[] iArr = {2131297238, 2131297236, 2131297235, 2131297239, 2131297237};
        int i9 = 0;
        int iLoadInt = b.o().loadInt(m.h(new byte[]{-48, 63, 77, 82, -101, 96, -88, -6, -22, 35, 83, 90, -125, 113, -98, -17, -38, 35, 68, 108, -122, 113, -83, -25, -42, 51, 72, 92, -101}, new byte[]{-75, 71, 33, 51, -11, 20, -63, -126}), 0);
        View viewFindViewById = findViewById(2131296905);
        viewFindViewById.setVisibility(iLoadInt == 4 ? 0 : 8);
        E(2131297309, new int[]{2131296752, 2131296749, 2131296751, 2131296750}, new int[]{0, 1, 2, 3}, m.h(new byte[]{66, -113, -121, 12, -99, 40, -18, 77, 120, -102, -118, 3, -122, Base64.padSymbol, -21, 106, 66, -103, -116, 4, -99, 57}, new byte[]{39, -9, -21, 109, -13, 92, -121, 53}), m.h(new byte[]{-16, 91, -22, 63, -66, -78}, new byte[]{-107, 53, -115, 86, -48, -41, 35, -83}));
        E(2131297310, new int[]{2131296755, 2131296753, 2131296754}, new int[]{0, 1, 2}, m.h(new byte[]{-89, 90, -37, 5, -125, 17, -93, -17, -99, 79, -42, 10, -104, 4, -90, -56, -79, 86, -46, 1, -97, 12, -92, -16}, new byte[]{-62, 34, -73, 100, -19, 101, -54, -105}), m.h(new byte[]{-115, -121, 76, 78, -45, -38, -20, 108}, new byte[]{-2, -13, 41, 43, -95, -77, -126, 11}));
        E(2131297308, new int[]{2131296748, 2131296747, 2131296746}, new int[]{0, 1, 3}, m.h(new byte[]{-45, -49, 53, 16, 78, -115, 82, -20, -23, -38, 56, 31, 85, -104, 87, -53, -59, -62, 42, 1, 69, -105, 72, -3, -39, -39, 6, 21, 65, -108, 75, -3, -40, -48}, new byte[]{-74, -73, 89, 113, 32, -7, 59, -108}), m.h(new byte[]{-23, -57, 110, 3, 82, -35, -37, 94, -11, -36, 66, 23, 86, -34, -40, 94, -12, -43}, new byte[]{-102, -78, 29, 115, 55, -77, -88, 55}));
        if (iLoadInt >= 0 && iLoadInt < 5) {
            i9 = iLoadInt;
        }
        radioGroup.check(iArr[i9]);
        radioGroup.setOnCheckedChangeListener(new r0(iArr, viewFindViewById));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void E(int i9, int[] iArr, int[] iArr2, String str, String str2) {
        RadioGroup radioGroup = (RadioGroup) findViewById(i9);
        int iLoadInt = b.o().loadInt(str, 0);
        int i10 = iArr[0];
        for (int i11 = 0; i11 < iArr2.length; i11++) {
            if (iArr2[i11] == iLoadInt) {
                i10 = iArr[i11];
            }
        }
        radioGroup.check(i10);
        radioGroup.setOnCheckedChangeListener(new u0(iArr, str, iArr2, str2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void F() {
        HFunEnum hFunEnum = HFunEnum.ID_VCU_DISCHARGE_SWITCH;
        MaterialSwitch materialSwitch = (MaterialSwitch) findViewById(2131297488);
        materialSwitch.setChecked(b.o().loadBoolean(hFunEnum.name(), false));
        materialSwitch.setOnCheckedChangeListener(new s0(this, hFunEnum));
        HFunEnum hFunEnum2 = HFunEnum.ID_VCU_ELECTRONIC_LOCKING_UNLOCKS;
        MaterialSwitch materialSwitch2 = (MaterialSwitch) findViewById(2131297487);
        materialSwitch2.setChecked(b.o().loadBoolean(hFunEnum2.name(), false));
        materialSwitch2.setOnCheckedChangeListener(new s0(this, hFunEnum2));
        RadioGroup radioGroup = (RadioGroup) findViewById(2131297313);
        int iLoadInt = b.o().loadInt(m.h(new byte[]{-23, -105, 66, 88, -32, 10, -7, 17, -20, -127, 66, 73, -48, 8, -55, 5, -26}, new byte[]{-125, -10, 39, 59, -113, 101, -90, 97}), 0);
        if (iLoadInt == 1) {
            radioGroup.check(2131297248);
        } else if (iLoadInt == 2) {
            radioGroup.check(2131297249);
        } else {
            radioGroup.check(2131297250);
        }
        radioGroup.setOnCheckedChangeListener(new p0(this, 1));
        RadioGroup radioGroup2 = (RadioGroup) findViewById(2131297312);
        int iLoadInt2 = b.o().loadInt(m.h(new byte[]{-6, 36, 21, -114, 115, 63, 107, -92, -2, 32, 2, -118, 101, 15, 70, -92, -13, 60, 19, -127, 121, 15, 88, -92, -26, 32, 28}, new byte[]{-112, 69, 112, -19, 28, 80, 52, -63}), 0);
        if (iLoadInt2 == 0) {
            radioGroup2.check(2131297247);
        } else if (iLoadInt2 == 1) {
            radioGroup2.check(2131297245);
        } else if (iLoadInt2 == 2) {
            radioGroup2.check(2131297246);
        } else if (iLoadInt2 == 3) {
            radioGroup2.check(2131297244);
        } else {
            radioGroup2.check(2131297247);
        }
        radioGroup2.setOnCheckedChangeListener(new p0(this, 2));
        RadioGroup radioGroup3 = (RadioGroup) findViewById(2131297311);
        int iLoadInt3 = b.o().loadInt(m.h(new byte[]{24, -97, 126, 70, -125, 87, 68, 24, 19, -118, 111, 64, -98, 65, 68, 10, 0, -111, 111, 64, -113, 76, 114, 21, 28, -95, 118, 74, -120, 93}, new byte[]{114, -2, 27, 37, -20, 56, 27, 122}), 0);
        if (iLoadInt3 == 0) {
            radioGroup3.check(2131297242);
        } else if (iLoadInt3 == 1) {
            radioGroup3.check(2131297241);
        } else if (iLoadInt3 == 2) {
            radioGroup3.check(2131297243);
        } else if (iLoadInt3 == 4) {
            radioGroup3.check(2131297240);
        } else {
            radioGroup3.check(2131297242);
        }
        radioGroup3.setOnCheckedChangeListener(new p0(this, 3));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void G(int i9, String str) {
        MaterialSwitch materialSwitch = (MaterialSwitch) findViewById(i9);
        materialSwitch.setChecked(b.o().loadBoolean(str, false));
        materialSwitch.setOnCheckedChangeListener(new t0(this, str, materialSwitch, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void I() {
        this.R0.setYLayMovX(b.o().loadString(this.f707g, this.f711i));
        this.R0.setYLayMovY(b.o().loadString(this.f709h, this.f713j));
        this.S0.setYLayMovX(b.o().loadString(this.f715k, this.f719m));
        this.S0.setYLayMovY(b.o().loadString(this.f717l, this.f721n));
        this.T0.setYLayMovX(b.o().loadString(this.f723o, this.f727q));
        this.T0.setYLayMovY(b.o().loadString(this.f725p, this.r));
        YMovLay yMovLay = this.U0;
        a aVarO = b.o();
        String strH = m.h(new byte[]{-30, 21, -1, -84, -26, -97, 84, -92, -39, 29, -5, -118, -8, -72, 112, -124}, new byte[]{-81, 116, -113, -13, -89, -4, 32, -51});
        String str = this.f730s;
        yMovLay.setYLayMovX(aVarO.loadString(strH, str));
        this.V0.setYLayMovX(b.o().loadString(m.h(new byte[]{-56, -101, 28, 88, 112, -69, 120, 81, -13, -109, 24, 126, 110, -100, 92, 113, -38, -67, 57}, new byte[]{-123, -6, 108, 7, 49, -40, 12, 56}), str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void J(boolean z8) {
        ColorMatrixColorFilter colorMatrixColorFilter;
        if (this.X0 != null) {
            if (z8) {
                colorMatrixColorFilter = null;
            } else {
                ColorMatrix colorMatrix = new ColorMatrix();
                colorMatrix.setSaturation(0.0f);
                colorMatrixColorFilter = new ColorMatrixColorFilter(colorMatrix);
            }
            new Handler(Looper.getMainLooper()).post(new a1.a(16, this, colorMatrixColorFilter));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void K(String str) {
        MaterialSwitch materialSwitch = (MaterialSwitch) findViewById(2131297499);
        materialSwitch.setChecked(b.o().loadBoolean(str, false));
        materialSwitch.setOnCheckedChangeListener(new s0(0, str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void L(boolean z8) {
        this.D.setTempSliderEnable(z8);
        this.E.setTempSliderEnable(z8);
        this.F.setTempSliderEnable(z8);
        this.G.setTempSliderEnable(z8);
        this.H.setTempSliderEnable(z8);
        this.I.setTempSliderEnable(z8);
        this.J.setTempSliderEnable(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void M(Spinner spinner, ArrayList arrayList, String str, boolean z8) {
        i1 i1Var = new i1(this, arrayList);
        spinner.setAdapter((SpinnerAdapter) i1Var);
        spinner.setPrompt(getString(2131952485));
        int iY = y(b.o().loadString(str, ""), arrayList);
        if (iY == 0) {
            iY = y(f688e1, arrayList);
        }
        String str2 = ((j1) arrayList.get(iY)).f1869a;
        b.o().saveString(str, str2);
        if (z8) {
            this.w = str2;
        }
        spinner.setSelection(iY, false);
        spinner.setOnItemSelectedListener(new z0(this, i1Var, str, z8));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void N() {
        this.F.setLevel(b.o().loadInt(q.k(new byte[]{23, -61, -102, 46, 85, -56, 34, 121, 12, -50, -109, 40, 70, -59, 46, 120, 31, -45, -102, 59, 81, -44, 41, 116, 18, -58, -111, 36, 91, -44, 34, 112, 17, -44, -115}, new byte[]{94, -121, -59, 109, 20, -102, 125, Base64.padSymbol}, new StringBuilder(), this), 0));
        this.D.setLevel(b.o().loadInt(q.k(new byte[]{-104, -44, -2, -55, -95, -35, -125, -23, -125, -39, -9, -49, -78, -48, -113, -24, -112, -60, -2, -62, -91, -50, -120, -14, -100, -33, -14, -62}, new byte[]{-47, -112, -95, -118, -32, -113, -36, -83}, new StringBuilder(), this), 0));
        this.E.setLevel(b.o().loadInt(q.k(new byte[]{-106, -73, 102, -2, 23, -107, ByteCompanionObject.MAX_VALUE, -122, -112, -93, 112, -15, 25, -109, ByteCompanionObject.MAX_VALUE, -106, -102, -78, 109, -30, 30, -126, 97, -111, ByteCompanionObject.MIN_VALUE, -66, 118, -18, 30}, new byte[]{-33, -13, 57, -67, 86, -57, 32, -59}, new StringBuilder(), this), 0));
        this.G.setLevel(b.o().loadInt(q.k(new byte[]{101, -117, 94, 78, 101, -32, -54, -55, 99, -97, 72, 65, 107, -26, -54, -39, 105, -114, 85, 82, 114, -9, -37, -34, 101, -125, 64, 89, 109, -3, -37, -43, 97, ByteCompanionObject.MIN_VALUE, 82, 69}, new byte[]{44, -49, 1, 13, 36, -78, -107, -118}, new StringBuilder(), this), 0));
        this.H.setisEnable(Boolean.valueOf(b.o().loadBoolean(q.k(new byte[]{50, 81, 88, -3, -31, 122, 33, -69, 47, 80, 66, -20, -1, ByteCompanionObject.MAX_VALUE, 54, -83, 62, 89, 88, -10, -27, 105, 42}, new byte[]{123, 21, 7, -66, -96, 40, 126, -24}, new StringBuilder(), this), false)));
        this.I.setisEnable(Boolean.valueOf(b.o().loadBoolean(q.k(new byte[]{72, 1, -89, 10, 17, -40, 79, 27, 78, 11, -84, 20, 21, -53, 72, 26, 82, 26, -80, 14, 19, -45}, new byte[]{1, 69, -8, 75, 82, -121, 9, 73}, new StringBuilder(), this), false)));
        this.J.setisEnable(Boolean.valueOf(b.o().loadBoolean(q.k(new byte[]{80, 70, -17, 14, -47, 22, -54, 25, 88, 80, -17, 11, -41, 15, -54, 19, 74, 86}, new byte[]{25, 2, -80, 79, -110, 73, -104, 92}, new StringBuilder(), this), false)));
        this.K.setisEnable(Boolean.valueOf(b.o().loadBoolean(q.k(new byte[]{-13, -35, 26, -72, -79, -36, 12, -122, -34, -4, 18, -68, -127, -30, 4, -122, -45, -41, 31, -76, -98, -45, 1, -107, -46, -45, 40, -110, -69}, new byte[]{-89, -76, 119, -35, -11, -67, 96, -25}, new StringBuilder(), this), true)));
        L(this.K.getisEnable().booleanValue());
        this.F.setTemperatureValue(b.o().loadInt(q.k(new byte[]{-100, 109, -71, -11, 114, -43, 3, -94, -121, 96, -80, -13, 97, -40, 15, -93, -108, 125, -71, -32, 118, -55, 8, -81, -103, 104, -78, -1, 124, -55, 3, -78, -112, 100, -74}, new byte[]{-43, 41, -26, -74, 51, -121, 92, -26}, new StringBuilder(), this), 20));
        this.D.setTemperatureValue(b.o().loadInt(q.k(new byte[]{-76, 106, 83, 4, -17, -81, -115, 24, -81, 103, 90, 2, -4, -94, -127, 25, -68, 122, 83, 15, -21, -68, -122, 3, -87, 107, 65, 23}, new byte[]{-3, 46, 12, 71, -82, -3, -46, 92}, new StringBuilder(), this), -5));
        this.E.setTemperatureValue(b.o().loadInt(q.k(new byte[]{81, 82, 58, -111, -55, 1, -61, 95, 87, 70, 44, -98, -57, 7, -61, 79, 93, 87, 49, -115, -64, 22, -35, 72, 71, 66, 32, -97, -40}, new byte[]{24, 22, 101, -46, -120, 83, -100, 28}, new StringBuilder(), this), -5));
        this.G.setTemperatureValue(b.o().loadInt(q.k(new byte[]{-92, 56, -126, 2, 11, -67, 112, -31, -94, 44, -108, 13, 5, -69, 112, -15, -88, Base64.padSymbol, -119, 30, 28, -86, 97, -10, -92, 48, -100, 21, 3, -96, 97, -3, -71, 57, -112, 17}, new byte[]{-19, 124, -35, 65, 74, -17, 47, -94}, new StringBuilder(), this), 20));
        this.H.setTemperatureValue(b.o().loadInt(q.k(new byte[]{-49, 105, 92, 78, 27, 17, -60, -91, -46, 104, 70, 95, 5, 20, -45, -77, -61, 97, 92, 69, 31, 2, -49, -87, -46, 104, 78, 93}, new byte[]{-122, 45, 3, 13, 90, 67, -101, -10}, new StringBuilder(), this), -5));
        this.I.setTemperatureValue(b.o().loadInt(q.k(new byte[]{81, -96, 55, 20, 35, -126, 49, -13, 87, -86, 60, 10, 39, -111, 54, -14, 75, -69, 32, 16, 33, -119, 40, -11, 93, -87, 56}, new byte[]{24, -28, 104, 85, 96, -35, 119, -95}, new StringBuilder(), this), -5));
        this.J.setTemperatureValue(b.o().loadInt(q.k(new byte[]{-99, 63, 118, -122, 76, -101, -5, 20, -107, 41, 118, -125, 74, -126, -5, 30, -121, 47, 118, -109, 74, -119, -7}, new byte[]{-44, 123, 41, -57, 15, -60, -87, 81}, new StringBuilder(), this), -5));
        this.K.setTemperatureValue(b.o().loadInt(q.k(new byte[]{57, -107, -39, -15, 79, 1, 51, -37, 20, -76, -47, -11, ByteCompanionObject.MAX_VALUE, 63, 48, -50, 50, -97, -43, -26, 120, 20, 62, -56, 25}, new byte[]{109, -4, -76, -108, 11, 96, 95, -70}, new StringBuilder(), this), 0));
        this.F.setTimeValue(b.o().loadInt(q.k(new byte[]{-33, 1, 84, 60, -127, -115, 37, 126, -60, 12, 93, 58, -110, ByteCompanionObject.MIN_VALUE, 41, ByteCompanionObject.MAX_VALUE, -41, 17, 84, 41, -123, -111, 46, 115, -38, 4, 95, 54, -113, -111, 37, 78, -1, 40, 110, 32, -92, -70, 22, 91, -17, 26, 68, 57, -122}, new byte[]{-106, 69, 11, ByteCompanionObject.MAX_VALUE, -64, -33, 122, 58}, new StringBuilder(), this), 0));
        this.D.setTimeValue(b.o().loadInt(q.k(new byte[]{9, 78, 24, 89, 120, -34, 43, 118, 18, 67, 17, 95, 107, -45, 39, 119, 1, 94, 24, 82, 124, -51, 32, 109, 52, 99, 42, ByteCompanionObject.MAX_VALUE, 102, -24, 17, 94, 33, 115, 24, 85, ByteCompanionObject.MAX_VALUE, -54}, new byte[]{64, 10, 71, 26, 57, -116, 116, 50}, new StringBuilder(), this), 0));
        this.E.setTimeValue(b.o().loadInt(q.k(new byte[]{-52, 74, -115, 64, -57, -62, 71, 120, -54, 94, -101, 79, -55, -60, 71, 104, -64, 79, -122, 92, -50, -43, 89, 111, -38, 122, -69, 110, -29, -49, 124, 94, -23, 111, -85, 92, -55, -42, 94}, new byte[]{-123, 14, -46, 3, -122, -112, 24, 59}, new StringBuilder(), this), 0));
        this.G.setTimeValue(b.o().loadInt(q.k(new byte[]{-59, -3, -118, -84, 19, 7, 0, 112, -61, -23, -100, -93, 29, 1, 0, 96, -55, -8, -127, -80, 4, 16, 17, 103, -59, -11, -108, -69, 27, 26, 17, 108, -8, -48, -72, -118, 13, 49, 58, 95, -19, -64, -118, -96, 20, 19}, new byte[]{-116, -71, -43, -17, 82, 85, 95, 51}, new StringBuilder(), this), 0));
        this.H.setTimeValue(b.o().loadInt(q.k(new byte[]{-78, 62, 45, -21, -77, -67, -16, -2, -81, 63, 55, -6, -83, -72, -25, -24, -66, 54, 45, -32, -73, -82, -5, -14, -113, 19, 31, -51, -83, -117, -54, -63, -102, 3, 45, -25, -76, -87}, new byte[]{-5, 122, 114, -88, -14, -17, -81, -83}, new StringBuilder(), this), 0));
        this.I.setTimeValue(b.o().loadInt(q.k(new byte[]{51, -79, 95, -11, 62, 18, 111, -96, 53, -69, 84, -21, 58, 1, 104, -95, 41, -86, 72, -15, 60, 25, 118, -122, 19, -104, 101, -21, 25, 40, 69, -109, 3, -86, 79, -14, 59}, new byte[]{122, -11, 0, -76, 125, 77, 41, -14}, new StringBuilder(), this), 0));
        this.J.setTimeValue(b.o().loadInt(q.k(new byte[]{0, -114, 63, 77, -85, -103, 3, -104, 8, -104, 63, 72, -83, ByteCompanionObject.MIN_VALUE, 3, -110, 26, -98, 63, 120, -127, -85, 52, -126, 45, -81, 12, 109, -111, -103, 30, -101, 15}, new byte[]{73, -54, 96, 12, -24, -58, 81, -35}, new StringBuilder(), this), 0));
        this.K.setTimeValue(b.o().loadInt(q.k(new byte[]{-63, -57, -46, 45, -101, -17, -117, -15, -20, -15, -16, 38, ByteCompanionObject.MIN_VALUE, -63, -127, -10, -54, -3, -4, 26, -102, -53, -87}, new byte[]{-107, -82, -65, 72, -33, -114, -25, -112}, new StringBuilder(), this), 0));
        this.f704e0.setChecked(b.o().loadBoolean(q.k(new byte[]{-106, -19, -15, 49, -73, 5, -64, -64, -118, -25, -3, 58, -73, 19, -38}, new byte[]{-33, -87, -82, 114, -10, 87, -97, -109}, new StringBuilder(), this), false));
        byte[] bArr = {-27, -65, -28, -87, 97, -52, -22, -69, -51, -90, -33, -96, 87};
        byte[] bArr2 = {-92, -54, -112, -58, 49, -66, -123, -35};
        q.v(bArr, bArr2, b.o(), false, this.f706f0);
        byte[] bArr3 = {115, -90, -74, -74, 58, -119, 37, 22, 109, -77, -86, -116, 59, -112, 48, 59};
        byte[] bArr4 = {0, -46, -60, -23, 78, -26, 85, 73};
        q.v(bArr3, bArr4, b.o(), true, this.f708g0);
        byte[] bArr5 = {112, -14, -93, -48, 20, -98, -124, -6, 126, -9, -85};
        byte[] bArr6 = {28, -101, -50, -113, 98, -9, -9, -109};
        q.v(bArr5, bArr6, b.o(), false, this.f710h0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void O(MaterialSwitch materialSwitch) {
        View viewInflate = getLayoutInflater().inflate(2131492935, (ViewGroup) null, false);
        AlertDialog alertDialogCreate = new AlertDialog$Builder(this).setView(viewInflate).create();
        viewInflate.findViewById(2131296580).setOnClickListener(new n0(this, alertDialogCreate, materialSwitch, 0));
        viewInflate.findViewById(2131296581).setOnClickListener(new c(5, alertDialogCreate));
        alertDialogCreate.setOnShowListener(new o0(this, alertDialogCreate));
        alertDialogCreate.show();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void P() {
        String str;
        Drawable defaultActivityIcon;
        this.f738x.a(new d4.m(1, this));
        this.F.setTempRun(new m0(this, 1));
        this.D.setTempRun(new m0(this, 8));
        this.E.setTempRun(new m0(this, 9));
        this.G.setTempRun(new m0(this, 10));
        this.H.setTempRun(new m0(this, 11));
        this.I.setTempRun(new m0(this, 12));
        this.J.setTempRun(new m0(this, 13));
        this.K.setTimeRun(new m0(this, 14));
        this.F.setTimeRun(new m0(this, 15));
        this.D.setTimeRun(new m0(this, 16));
        this.E.setTimeRun(new m0(this, 2));
        this.G.setTimeRun(new m0(this, 3));
        this.H.setTimeRun(new m0(this, 4));
        this.I.setTimeRun(new m0(this, 5));
        this.J.setTimeRun(new m0(this, 6));
        this.K.setTempRun(new m0(this, 7));
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, 2131493136, this.f733u);
        arrayAdapter.setDropDownViewResource(2131493129);
        Spinner spinner = (Spinner) findViewById(2131297410);
        this.L0 = spinner;
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        this.L0.setPrompt(m.h(new byte[]{44, -43, -4, 24, -49}, new byte[]{120, -68, -120, 116, -86, -30, 106, -3}));
        this.L0.setSelection(0);
        this.L0.setOnItemSelectedListener(new b1(this, 0));
        Spinner spinner2 = (Spinner) findViewById(2131297398);
        this.C0 = spinner2;
        spinner2.setOnItemSelectedListener(new b1(this, 1));
        ArrayAdapter arrayAdapter2 = new ArrayAdapter(this, 2131493136, this.t);
        arrayAdapter2.setDropDownViewResource(2131493129);
        Spinner spinner3 = (Spinner) findViewById(2131297397);
        this.B0 = spinner3;
        spinner3.setAdapter((SpinnerAdapter) arrayAdapter2);
        this.B0.setPrompt(m.h(new byte[]{94, 56, 12, -16, 14}, new byte[]{10, 81, 120, -100, 107, -8, 51, 100}));
        this.B0.setSelection(0);
        this.B0.setOnItemSelectedListener(new b1(this, 2));
        u();
        this.D0 = (Spinner) findViewById(2131297399);
        b.a();
        b.f().m(this.D0, m.h(new byte[]{-121, -84, 44, 109, -90, -95, -82, 71, -48, -124}, new byte[]{-75, -13, 72, 2, -47, -49, -15, 41}));
        this.E0 = (Spinner) findViewById(2131297400);
        b.a();
        b.f().m(this.E0, m.h(new byte[]{11, 69, -92, -82, 104, 43, 98, -13, 93, 109}, new byte[]{56, 26, -64, -63, 31, 69, Base64.padSymbol, -99}));
        this.F0 = (Spinner) findViewById(2131297401);
        b.a();
        b.f().m(this.F0, m.h(new byte[]{-57, 95, 25, -52, 29, Base64.padSymbol, -89, Base64.padSymbol, -112, 119}, new byte[]{-11, 0, 117, -87, 123, 73, -8, 83}));
        this.G0 = (Spinner) findViewById(2131297402);
        b.a();
        b.f().m(this.G0, m.h(new byte[]{-97, -13, -98, -68, 3, -5, -50, -66, -55, -37}, new byte[]{-84, -84, -14, -39, 101, -113, -111, -48}));
        this.H0 = (Spinner) findViewById(2131297403);
        b.a();
        b.f().m(this.H0, m.h(new byte[]{-70, -8, 33, -12, -84, -97, 96, -33, -26, -62, 36}, new byte[]{-120, -89, 83, -99, -53, -9, 20, ByteCompanionObject.MIN_VALUE}));
        this.I0 = (Spinner) findViewById(2131297405);
        b.a();
        b.f().m(this.I0, m.h(new byte[]{-41, -108, 84, -67, -29, -4, -49, -74, -118, -82, 81}, new byte[]{-28, -53, 38, -44, -124, -108, -69, -23}));
        this.J0 = (Spinner) findViewById(2131297406);
        b.a();
        b.f().m(this.J0, m.h(new byte[]{-52, 56, 8, 41, 120, 122, 85, -95}, new byte[]{-2, 103, 125, 89, 39, 20, 48, -42}));
        this.K0 = (Spinner) findViewById(2131297407);
        b.a();
        b.f().m(this.K0, m.h(new byte[]{-2, -49, -100, 14, 66, -4, 97, -95}, new byte[]{-51, -112, -23, 126, 29, -110, 4, -42}));
        ArrayAdapter arrayAdapter3 = new ArrayAdapter(this, 2131493136, this.f735v);
        arrayAdapter3.setDropDownViewResource(2131493129);
        Spinner spinner4 = (Spinner) findViewById(2131297418);
        this.A0 = spinner4;
        spinner4.setAdapter((SpinnerAdapter) arrayAdapter3);
        this.A0.setPrompt(m.h(new byte[]{2, 79, -44, 101, -47}, new byte[]{86, 38, -96, 9, -76, -40, 31, 13}));
        this.A0.setSelection(this.f735v.length - 1 < b.o().loadInt(m.h(new byte[]{70, 110, -81, -125, 36, -55, 28, Base64.padSymbol, 107}, new byte[]{31, 35, -50, -13, 87, -123, 117, 78}), 0) ? 0 : b.o().loadInt(m.h(new byte[]{29, 85, 21, 108, 77, 3, -32, -77, 48}, new byte[]{68, 24, 116, 28, 62, 79, -119, -64}), 0));
        this.A0.setOnItemSelectedListener(new c1());
        String[] strArrH = d.h(n0.c.class);
        String[] strArrJ = d.j(n0.c.class);
        ArrayAdapter arrayAdapter4 = new ArrayAdapter(this, 2131493136, strArrH);
        arrayAdapter4.setDropDownViewResource(2131493129);
        Spinner spinner5 = (Spinner) findViewById(2131297411);
        this.M0 = spinner5;
        spinner5.setAdapter((SpinnerAdapter) arrayAdapter4);
        this.M0.setPrompt(m.h(new byte[]{101, 126, -18, -16, -124}, new byte[]{49, 23, -102, -100, -31, 63, -7, 71}));
        String strLoadString = b.o().loadString(m.h(new byte[]{-94, 104, -60, 66, -12, 120, -104, 115, -115, 76}, new byte[]{-31, 41, -106, 18, -122, 23, -2, 26}), null);
        if (strLoadString == null || strLoadString.isEmpty()) {
            strLoadString = n0.c.values()[0].name();
        }
        int iIndexOf = Arrays.asList(strArrJ).indexOf(strLoadString);
        this.M0.setSelection(iIndexOf != -1 ? iIndexOf : 0);
        this.M0.setSelection(iIndexOf);
        this.M0.setOnItemSelectedListener(new d1(0, this, strArrJ));
        this.N0 = (Spinner) findViewById(2131297412);
        b.a();
        b.f().m(this.N0, m.h(new byte[]{42, 88, 21, -126, 41, 50, -92, 34, 21, 82, 20, -77, 36, 63, -111}, new byte[]{102, 55, 96, -20, 74, 90, -26, 125}));
        View viewFindViewById = findViewById(2131296585);
        viewFindViewById.setOnClickListener(new q0(this, 0));
        String strH = m.h(new byte[]{-91, -31, 39, -84, -7, -51, -29, 15, -73, -29, 47, -90, -10, -38, -50, 32, -92, -2}, new byte[]{-42, -111, 78, -62, -105, -88, -111, 80});
        androidx.core.view.inputmethod.a aVar = new androidx.core.view.inputmethod.a(viewFindViewById);
        String[] strArrH2 = d.h(n0.a.class);
        String[] strArrJ2 = d.j(n0.a.class);
        ArrayAdapter arrayAdapter5 = new ArrayAdapter(this, 2131493136, strArrH2);
        arrayAdapter5.setDropDownViewResource(2131493129);
        Spinner spinner6 = (Spinner) findViewById(2131297429);
        spinner6.setAdapter((SpinnerAdapter) arrayAdapter5);
        spinner6.setPrompt(m.h(new byte[]{84, -13, -95, -31, -7}, new byte[]{0, -102, -43, -115, -100, 10, 27, -33}));
        String strLoadString2 = b.o().loadString(strH, null);
        if (strLoadString2 == null || strLoadString2.isEmpty()) {
            strLoadString2 = ((Enum[]) n0.a.class.getEnumConstants())[0].name();
        }
        int iIndexOf2 = Arrays.asList(strArrJ2).indexOf(strLoadString2);
        if (iIndexOf2 == -1) {
            iIndexOf2 = 0;
        }
        spinner6.setSelection(iIndexOf2);
        spinner6.setOnItemSelectedListener(new f1(strArrJ2, strH, aVar));
        String[] strArrH3 = d.h(f.class);
        String[] strArrJ3 = d.j(f.class);
        ArrayAdapter arrayAdapter6 = new ArrayAdapter(this, 2131493136, strArrH3);
        arrayAdapter6.setDropDownViewResource(2131493129);
        Spinner spinner7 = (Spinner) findViewById(2131297431);
        this.O0 = spinner7;
        spinner7.setAdapter((SpinnerAdapter) arrayAdapter6);
        this.O0.setPrompt(m.h(new byte[]{-74, -14, 17, 6, 35}, new byte[]{-30, -101, 101, 106, 70, 8, -70, 122}));
        String strLoadString3 = b.o().loadString(m.h(new byte[]{114, 102, -33, -89, 115, 38, -118, 34, 113, 121, -47, -90, 121, 34, -89, 10, 104, 114, -47, -106, 109, 49, -105}, new byte[]{1, 22, -74, -55, 29, 67, -8, 125}), null);
        if (strLoadString3 == null || strLoadString3.isEmpty()) {
            strLoadString3 = f.values()[0].name();
        }
        int iIndexOf3 = Arrays.asList(strArrJ3).indexOf(strLoadString3);
        Spinner spinner8 = this.O0;
        if (iIndexOf3 == -1) {
            iIndexOf3 = 0;
        }
        spinner8.setSelection(iIndexOf3);
        this.O0.setOnItemSelectedListener(new e1(0, strArrJ3));
        this.f743z0 = (Spinner) findViewById(2131297415);
        this.P0 = (Spinner) findViewById(2131297430);
        PackageManager packageManager = getPackageManager();
        Intent intent = new Intent(m.h(new byte[]{-45, -122, 2, -123, -105, 42, -48, -10, -37, -122, 18, -110, -106, 55, -102, -71, -47, -100, 15, -104, -106, 109, -7, -103, -5, -90}, new byte[]{-78, -24, 102, -9, -8, 67, -76, -40}));
        intent.addCategory(m.h(new byte[]{-20, 116, 42, -80, 56, 112, -99, 33, -28, 116, 58, -89, 57, 109, -41, 108, -20, 110, 43, -91, 56, 107, ByteCompanionObject.MIN_VALUE, 33, -63, 91, 27, -116, 20, 81, -68, 93}, new byte[]{-115, 26, 78, -62, 87, 25, -7, 15}));
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
                map.put(str, new j1(str, string, defaultActivityIcon));
            }
        }
        ArrayList arrayList = new ArrayList(map.values());
        arrayList.sort(new androidx.constraintlayout.core.utils.a(1));
        arrayList.add(0, new j1("", getString(2131952485), packageManager.getDefaultActivityIcon()));
        M(this.f743z0, arrayList, f689f1, true);
        M(this.P0, arrayList, f690g1, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void Q(MainActivity mainActivity) {
        Intent intent = new Intent(mainActivity.getApplicationContext(), (Class<?>) boot.class);
        intent.putExtra(m.h(new byte[]{-7}, new byte[]{-99, 79, 77, 106, -62, -121, 24, -103}), -1);
        startService(intent);
    }

    public native boolean isEmulator();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        boolean zLoadBoolean;
        super.onCreate(bundle);
        this.t = new String[]{getResources().getString(2131952761), getResources().getString(2131952762), getResources().getString(2131952763)};
        this.f733u = new String[]{getResources().getString(2131952740), m.h(new byte[]{66, 123, 76, -83, 51, -92, -70, 42, 63}, new byte[]{8, 26, 41, -50, 92, -53, -102, 96}), m.h(new byte[]{12, 52, -40, 64, -37, 96, -8, 72, 126, 122, -8, 91, -47, 106, -68, 34, 20, 13}, new byte[]{70, 85, -67, 35, -76, 15, -40, 2}), m.h(new byte[]{-18, -81, -38, 123, 72, 13, -110, -94, -102, -2}, new byte[]{-70, -58, -67, 28, 39, 45, -91, -114}), m.h(new byte[]{-44, -85, 108, -24, 50, 2, 73, -95, -84}, new byte[]{-98, -50, 24, -121, 71, 112, 105, -11})};
        this.f735v = new String[]{getResources().getString(2131952419), getResources().getString(2131952420), getResources().getString(2131952421), m.h(new byte[]{-66, 76, 75, 105}, new byte[]{-23, 45, 49, 12, -96, -122, 122, 103})};
        AppCompatDelegate.setDefaultNightMode(1);
        byte[] bArr = punto.f1004v;
        String str = z2.f2015a;
        punto.f1003u = new String(bArr);
        d0.d(this);
        this.f705f = new String(punto.w);
        setContentView(z());
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(2131296944), new g(5));
        new HashMap();
        boolean zLoadBoolean2 = b.o().loadBoolean(m.h(new byte[]{-108, 64}, new byte[]{-11, 53, -104, 86, 97, -114, 90, -51}), false);
        if (zLoadBoolean2) {
            this.e.post(new m0(this, 18));
        }
        d0.d(this);
        if (zLoadBoolean2) {
            m.c();
            setSupportActionBar((Toolbar) findViewById(2131297660));
            if (getSupportActionBar() != null) {
                getSupportActionBar().setDisplayShowTitleEnabled(false);
            }
            isEmulator();
            d0.d(this);
            this.f740y = (MaterialSwitch) findViewById(2131297501);
            this.f742z = (MaterialSwitch) findViewById(2131297512);
            this.A = (MaterialSwitch) findViewById(2131297518);
            this.B = (MaterialSwitch) findViewById(2131297520);
            this.f704e0 = (MaterialSwitch) findViewById(2131297524);
            this.f706f0 = (MaterialSwitch) findViewById(2131297525);
            this.f708g0 = (MaterialSwitch) findViewById(2131297502);
            this.f710h0 = (MaterialSwitch) findViewById(2131297503);
            this.f724o0 = (MaterialSwitch) findViewById(2131297507);
            this.Z0 = (LinearLayout) findViewById(2131296282);
            this.f696a1 = (MainWidjet) findViewById(2131296324);
            this.f701c1 = (MainView) findViewById(2131296952);
            this.c = (TextView) findViewById(2131297651);
            this.V = (LinearLayout) findViewById(2131296914);
            this.W = (LinearLayout) findViewById(2131296913);
            this.X = (LinearLayout) findViewById(2131296907);
            this.Z = (LinearLayout) findViewById(2131296906);
            this.f695a0 = (LinearLayout) findViewById(2131296911);
            this.f698b0 = findViewById(2131296908);
            this.f700c0 = findViewById(2131296912);
            this.f702d0 = findViewById(2131296904);
            MaterialSwitch materialSwitch = (MaterialSwitch) findViewById(2131297491);
            materialSwitch.setChecked(b.o().loadBoolean(f691h1, true));
            materialSwitch.setOnCheckedChangeListener(new k0(11));
            MaterialSwitch materialSwitch2 = (MaterialSwitch) findViewById(2131297497);
            this.f739x0 = materialSwitch2;
            q.v(new byte[]{119, -31, 41, -32, -71, 3, 9, -74, 91, -27, 2, -4, -67, Base64.padSymbol, 20, -92, 98}, new byte[]{4, -106, 118, -109, -51, 98, 123, -62}, b.o(), false, materialSwitch2);
            this.f739x0.setOnCheckedChangeListener(new k0(17));
            MaterialSwitch materialSwitch3 = (MaterialSwitch) findViewById(2131297495);
            this.f741y0 = materialSwitch3;
            q.v(new byte[]{112, -9, 60, 118, 85, -42, -61, -53, 92, -20, 10, 104, 76, -57, -7, -50, 111, -31, 17, 104, 122, -36, -64, -55}, new byte[]{3, ByteCompanionObject.MIN_VALUE, 99, 5, 37, -77, -90, -81}, b.o(), false, materialSwitch3);
            this.f741y0.setOnCheckedChangeListener(new k0(19));
            MaterialSwitch materialSwitch4 = (MaterialSwitch) findViewById(2131296291);
            this.f712i0 = materialSwitch4;
            q.v(new byte[]{-40, -102, 108, 88, 91, -125, 25, -58, -2, ByteCompanionObject.MIN_VALUE, 78, 112}, new byte[]{-112, -49, 40, 22, 58, -11, 112, -119}, b.o(), true, materialSwitch4);
            this.f712i0.setOnCheckedChangeListener(new k0(22));
            MaterialSwitch materialSwitch5 = (MaterialSwitch) findViewById(2131297527);
            this.f720m0 = materialSwitch5;
            q.v(new byte[]{-119, 79, -68, 44, 12, 95, 9, 96, -78, 71, -72, 10, 18, 122, 40, 69, -120, 125, -113, 33, 8, 121, 51, 86, -125, 123}, new byte[]{-60, 46, -52, 115, 77, 60, 125, 9}, b.o(), true, materialSwitch5);
            this.f720m0.setOnCheckedChangeListener(new l0(this, 13));
            MaterialSwitch materialSwitch6 = (MaterialSwitch) findViewById(2131297528);
            this.f722n0 = materialSwitch6;
            q.v(new byte[]{109, 67, 123, 1, 40, -75, 6, -58, 86, 75, ByteCompanionObject.MAX_VALUE, 39, 54, -101, 51, -9, ByteCompanionObject.MAX_VALUE, 114, 78, 12, 47, -103, 32, -30, 97, 108, 72, 27}, new byte[]{32, 34, 11, 94, 105, -42, 114, -81}, b.o(), false, materialSwitch6);
            this.f722n0.setOnCheckedChangeListener(new l0(this, 14));
            MaterialSwitch materialSwitch7 = (MaterialSwitch) findViewById(2131297477);
            this.f714j0 = materialSwitch7;
            q.v(new byte[]{8, -123, 98, -8, -43, 62, 100, -8, 22, -94, 109, -24, -44, 44, 98, -29}, new byte[]{123, -14, Base64.padSymbol, -69, -96, 77, 16, -105}, b.o(), false, materialSwitch7);
            this.f714j0.setOnCheckedChangeListener(new k0(26));
            MaterialSwitch materialSwitch8 = (MaterialSwitch) findViewById(2131297475);
            this.f716k0 = materialSwitch8;
            q.v(new byte[]{-61, 15, -39, 115, -91, -42, 83, 40, -10, 13, -22, 94, -90, -59, 113, 29, -43, 22}, new byte[]{-80, 120, -122, 50, -43, -90, 3, 120}, b.o(), false, materialSwitch8);
            this.f716k0.setOnCheckedChangeListener(new k0(6));
            MaterialSwitch materialSwitch9 = (MaterialSwitch) findViewById(2131297476);
            this.f718l0 = materialSwitch9;
            q.v(new byte[]{-21, -72, -56, -91, 92, 122, -56, 108, -11, -97, -57, -96, 92, 101, -48, 112, -5, -67, -14, -125, 71}, new byte[]{-104, -49, -105, -26, 41, 9, -68, 3}, b.o(), false, materialSwitch9);
            this.f718l0.setOnCheckedChangeListener(new k0(8));
            Button button = (Button) findViewById(2131296474);
            this.f699b1 = button;
            button.setOnClickListener(new q0(this, 1));
            findViewById(2131296591).setOnClickListener(new q0(this, 2));
            MaterialSwitch materialSwitch10 = (MaterialSwitch) findViewById(2131297494);
            materialSwitch10.setChecked(b.o().loadBoolean(m.h(new byte[]{67, 54, 67, 52, 81, 31, -7, -42, 105, 50, 80, 47, 94, 27, -45, -15, 109, 50, 82}, new byte[]{12, 64, 38, 70, Base64.padSymbol, 126, ByteCompanionObject.MIN_VALUE, -123}), false));
            materialSwitch10.setOnCheckedChangeListener(new l0(this, 5));
            MaterialSwitch materialSwitch11 = (MaterialSwitch) findViewById(2131297486);
            this.f736v0 = materialSwitch11;
            q.v(new byte[]{-49, -65, 33, -79, -47, 45, 125, 27, -41, -105, 17, -71, -25, 41, 104, 20}, new byte[]{-68, -56, 126, -41, -72, 70, 14, 114}, b.o(), false, materialSwitch11);
            this.f736v0.setOnCheckedChangeListener(new k0(9));
            ((Button) findViewById(2131296472)).setOnClickListener(new q0(this, 3));
            ((Button) findViewById(2131296471)).setOnClickListener(new q0(this, 4));
            this.Y = (LinearLayout) findViewById(2131296902);
            MaterialSwitch materialSwitch12 = (MaterialSwitch) findViewById(2131297482);
            materialSwitch12.setChecked(b.o().loadBoolean(x.d, false));
            materialSwitch12.setOnCheckedChangeListener(new k0(10));
            K(m.h(new byte[]{-28, -28, 24, -92, -20, 53, -84, 13, -47, -21, 12, -72, -42, 15, -102, Base64.padSymbol, -26}, new byte[]{-93, -76, 75, -9, -119, 91, -56, 104}));
            C();
            D();
            F();
            ((Button) findViewById(2131296477)).setOnClickListener(new q0(this, 5));
            MaterialSwitch materialSwitch13 = (MaterialSwitch) findViewById(2131297489);
            try {
                zLoadBoolean = b.o().loadBoolean(MockGpsService.r, false);
            } catch (Exception unused) {
                zLoadBoolean = false;
            }
            materialSwitch13.setChecked(zLoadBoolean);
            materialSwitch13.setOnCheckedChangeListener(new l0(this, 6));
            ((Button) findViewById(2131296473)).setOnClickListener(new q0(this, 6));
            findViewById(2131296307).setOnClickListener(new q0(this, 7));
            findViewById(2131296309).setOnClickListener(new q0(this, 8));
            findViewById(2131296306).setOnClickListener(new q0(this, 9));
            findViewById(2131296308).setOnClickListener(new q0(this, 10));
            this.L = (CardView) findViewById(2131296322);
            this.M = (CardView) findViewById(2131296945);
            this.N = (CardView) findViewById(2131296948);
            this.O = (CardView) findViewById(2131296947);
            this.P = (CardView) findViewById(2131296946);
            this.Q = (CardView) findViewById(2131296951);
            this.R = (CardView) findViewById(2131296953);
            this.S = (CardView) findViewById(2131296950);
            MaterialSwitch materialSwitch14 = (MaterialSwitch) findViewById(2131296345);
            materialSwitch14.setChecked(b.o().loadBoolean(Notik.f794m, false));
            materialSwitch14.setOnCheckedChangeListener(new l0(this, 7));
            ((Button) findViewById(2131296346)).setOnClickListener(new q0(this, 11));
            ((Button) findViewById(2131296575)).setOnClickListener(new q0(this, 12));
            MaterialSwitch materialSwitch15 = (MaterialSwitch) findViewById(2131297496);
            materialSwitch15.setChecked(b.o().loadBoolean(SpeedBoardService.f828k, false));
            materialSwitch15.setOnCheckedChangeListener(new l0(this, 8));
            this.F = (HeatManSetView) findViewById(2131296285);
            this.D = (HeatManSetView) findViewById(2131296284);
            this.E = (HeatManSetView) findViewById(2131296347);
            this.G = (HeatManSetView) findViewById(2131296348);
            this.H = (HeatManSetView) findViewById(2131296294);
            this.I = (HeatManSetView) findViewById(2131296295);
            this.J = (HeatManSetView) findViewById(2131296293);
            this.K = (HeatManSetView) findViewById(2131296357);
            ((Button) findViewById(2131297500)).setOnClickListener(new q0(this, 13));
            MaterialSwitch materialSwitch16 = (MaterialSwitch) findViewById(2131296360);
            this.C = materialSwitch16;
            q.v(new byte[]{-17, -27, 45, 34, 3, 39, 67, -21, -49, -58, 13, 19, 3, 34, 79, -4, -50, -16, 24, 31, 47, 29, 68, -11, -36}, new byte[]{-71, -81, 110, 118, 92, 116, 38, -103}, b.o(), false, materialSwitch16);
            this.C.setOnCheckedChangeListener(new l0(this, 9));
            ((Button) findViewById(2131296361)).setOnClickListener(new q0(this, 14));
            MaterialSwitch materialSwitch17 = (MaterialSwitch) findViewById(2131297770);
            materialSwitch17.setChecked(b.o().loadBoolean(m.h(new byte[]{-42, -78, -82, -112, 46, -17, -71, 25, -50, -83, -81, -123, 20, -24, -77, 53, -43, -66, -89}, new byte[]{-95, -37, -54, -9, 75, -101, -54, 70}), false));
            materialSwitch17.setOnCheckedChangeListener(new l0(this, 10));
            MaterialSwitch materialSwitch18 = (MaterialSwitch) findViewById(2131296262);
            materialSwitch18.setChecked(b.o().loadBoolean(m.h(new byte[]{121, 42, -120, 58, -59, -101, -81, -15, 76, 21, -127, 31, -38, -106, -85, -15, 75, 25, ByteCompanionObject.MIN_VALUE, 46, -64, -112, -85, -1, 103, 9, -118}, new byte[]{56, 70, -28, 109, -84, -1, -56, -108}), false));
            materialSwitch18.setOnCheckedChangeListener(new k0(12));
            MaterialSwitch materialSwitch19 = (MaterialSwitch) findViewById(2131296261);
            materialSwitch19.setChecked(b.o().loadBoolean(m.h(new byte[]{-71, -65, 80, -2, -50, -119, 38, -113, -116, ByteCompanionObject.MIN_VALUE, 89, -37, -47, -124, 34, -113, -117, -116, 104, -52, -54, -99, 36, -104, -103, -89, 73, -37, -58, -96, 32, -103, -112, -123, 85, -52, -48, -78, 14, -124}, new byte[]{-8, -45, 60, -87, -89, -19, 65, -22}), false));
            materialSwitch19.setOnCheckedChangeListener(new k0(13));
            MaterialSwitch materialSwitch20 = (MaterialSwitch) findViewById(2131296257);
            materialSwitch20.setChecked(b.o().loadBoolean(m.h(new byte[]{122, 18, -72, -98, 21, -122, -102, 28, 79, 45, -79, -69, 10, -117, -98, 28, 72, 33, -110, -68, 25, -114, -81, 28, 86, 31, -67, -89, 21, -116, -102, 47, 82, 27, -93, -106, 51, -116}, new byte[]{59, 126, -44, -55, 124, -30, -3, 121}), false));
            materialSwitch20.setOnCheckedChangeListener(new k0(14));
            findViewById(2131296786).setOnClickListener(new q0(this, 15));
            MaterialSwitch materialSwitch21 = (MaterialSwitch) findViewById(2131296260);
            materialSwitch21.setChecked(b.o().loadBoolean(m.h(new byte[]{18, 37, 101, 107, 45, 44, -20, -91, 39, 26, 108, 78, 50, 33, -24, -91, 32, 22, 90, 72, 43, 58, -22, -89, 54, 15, 123, 89, 33, 30, -30, -91, 36, 22, 70, 82}, new byte[]{83, 73, 9, 60, 68, 72, -117, -64}), false));
            materialSwitch21.setOnCheckedChangeListener(new k0(15));
            MaterialSwitch materialSwitch22 = (MaterialSwitch) findViewById(2131296259);
            materialSwitch22.setChecked(b.o().loadBoolean(m.h(new byte[]{73, 2, 65, -44, 14, 113, 67, 19, 124, Base64.padSymbol, 72, -15, 17, 124, 71, 19, 123, 49, 126, -22, 9, 114, 72, 19, 95, 7, 67, -25, 8, 98, 123, 57, 102}, new byte[]{8, 110, 45, -125, 103, 21, 36, 118}), false));
            materialSwitch22.setOnCheckedChangeListener(new l0(this, 11));
            MaterialSwitch materialSwitch23 = (MaterialSwitch) findViewById(2131296258);
            materialSwitch23.setChecked(b.o().loadBoolean(m.h(new byte[]{88, 84, -29, 118, ByteCompanionObject.MIN_VALUE, 87, -96, -3, 109, 107, -22, 83, -97, 90, -92, -3, 106, 103, -30, 68, -115, 90, -90, -37, 118, 86, -5, 83, -122, 95, -111, -15, 124, 79, -48, 110, -121}, new byte[]{25, 56, -113, 33, -23, 51, -57, -104}), false));
            materialSwitch23.setOnCheckedChangeListener(new k0(16));
            ((Button) findViewById(2131296874)).setOnClickListener(new q0(this, 16));
            ((Button) findViewById(2131296875)).setOnClickListener(new q0(this, 17));
            ((Button) findViewById(2131296873)).setOnClickListener(new q0(this, 18));
            ((Button) findViewById(2131296876)).setOnClickListener(new q0(this, 19));
            this.f738x = (TabLayout) findViewById(2131297534);
            N();
            P();
            MaterialSwitch materialSwitch24 = (MaterialSwitch) findViewById(2131297492);
            this.f734u0 = materialSwitch24;
            q.v(new byte[]{82, 71, 18, 58, -122, -70, 6, 17, 64, 111, 58, 35, -115, -70, 54, 26, 79, 95, 43, 44}, new byte[]{33, 48, 77, 74, -23, -35, 105, 117}, b.o(), false, materialSwitch24);
            MaterialSwitch materialSwitch25 = (MaterialSwitch) findViewById(2131297526);
            this.f737w0 = materialSwitch25;
            q.v(new byte[]{-28, -68, -33, 5, -60, 65, -53, -67, -30, -74, -31, 16, -18, 65, -53, -67, -21, -90, -12, 11, -18, 70, -48, -125, -8, -89, -33, 1, -33, 82, -51, -116, -17}, new byte[]{-118, -45, ByteCompanionObject.MIN_VALUE, 100, -79, 53, -92, -30}, b.o(), true, materialSwitch25);
            m.h(new byte[]{8, 124, 102, 17, 125, 122, -75, -67, 0, 118}, new byte[]{105, 18, 2, 99, 18, 19, -47, -30});
            q.v(new byte[]{96, -102, -92, -42}, new byte[]{2, -11, -53, -94, 1, -113, -37, 93}, b.o(), false, this.f740y);
            MaterialSwitch materialSwitch26 = (MaterialSwitch) findViewById(2131297479);
            materialSwitch26.setChecked(b.o().loadBoolean(m.h(new byte[]{8, -38, 23, 28, -97, -75, 69, 88, 36, -35, 58, 0, -76, -77, 66}, new byte[]{123, -83, 72, 111, -21, -44, 55, 44}), false));
            materialSwitch26.setOnCheckedChangeListener(new k0(18));
            MaterialSwitch materialSwitch27 = (MaterialSwitch) findViewById(2131297485);
            String str2 = a1.f5051a;
            materialSwitch27.setChecked(getPackageManager().getComponentEnabledSetting(new ComponentName(getPackageName(), a1.f5051a)) == 1);
            materialSwitch27.setOnCheckedChangeListener(new l0(this, 12));
            ((Button) findViewById(2131296594)).setOnClickListener(new q0(this, 20));
            ((Button) findViewById(2131296584)).setOnClickListener(new androidx.navigation.ui.a(1, this, materialSwitch27));
            MaterialSwitch materialSwitch28 = (MaterialSwitch) findViewById(2131297481);
            MaterialSwitch materialSwitch29 = (MaterialSwitch) findViewById(2131297480);
            materialSwitch28.setChecked(b.o().loadBoolean(m.h(new byte[]{57, -52, 84, 82, 8, 112, -84, -61, 57, -49, 106, 65, 9, 91, -76, -7, 40, -28, 103, 82, 8, 106, -96, -12, 47, -55}, new byte[]{74, -69, 11, 51, 125, 4, -61, -100}), false));
            materialSwitch29.setChecked(b.o().loadBoolean(m.h(new byte[]{-60, -18, -97, -67, 84, -88, -125, -11, -60, -19, -95, -82, 85, -125, -114, -58, -42, -6, -85}, new byte[]{-73, -103, -64, -36, 33, -36, -20, -86}), false));
            materialSwitch28.setOnCheckedChangeListener(new w0(materialSwitch29, 0));
            materialSwitch29.setOnCheckedChangeListener(new w0(materialSwitch28, 1));
            ((Button) findViewById(2131296593)).setOnClickListener(new q0(this, 21));
            MaterialSwitch materialSwitch30 = (MaterialSwitch) findViewById(2131297493);
            materialSwitch30.setChecked(b.o().loadBoolean(m.h(new byte[]{-44, -97, 67, 78, -94, -33, 48, 102, -41, -104, 67, 81, -72, -61, 10}, new byte[]{-89, -24, 28, 60, -41, -79, 111, 7}), false));
            materialSwitch30.setOnCheckedChangeListener(new k0(20));
            ((Button) findViewById(2131296588)).setOnClickListener(new q0(this, 22));
            ((Button) findViewById(2131296577)).setOnClickListener(new q0(this, 23));
            ((Button) findViewById(2131296583)).setOnClickListener(new q0(this, 24));
            MaterialSwitch materialSwitch31 = (MaterialSwitch) findViewById(2131297484);
            materialSwitch31.setChecked(b.o().loadBoolean(m.h(new byte[]{-118, -107, -122, -52, -76, -42, 126, -53, -104, -90, -114, -63, -84, -3, 107, -56, -124, -90, -112, -58, -79, -42, 105, -56, -127, -102, -116}, new byte[]{-24, -7, -25, -81, -33, -119, 10, -92}), true));
            materialSwitch31.setOnCheckedChangeListener(new k0(21));
            this.X0 = (ImageView) findViewById(2131296868);
            ((v1.b) v1.d.a().f5516a.get(v1.b.class)).b().observe(this, new x0(this, 0));
            ((v1.b) v1.d.a().f5516a.get(v1.b.class)).a().observe(this, new x0(this, 1));
            q.v(new byte[]{-120, -121, 15, -35, -64, 86, 102}, new byte[]{-5, -13, 125, -72, -84, Base64.padSymbol, 7, 64}, b.o(), true, this.f742z);
            d0.d(this);
            q.v(new byte[]{-116, -89, -32, 116, 84, 82, 95, 109, -98, -65, -2}, new byte[]{-1, -45, -110, 17, 56, 57, 62, 50}, b.o(), false, this.A);
            q.v(new byte[]{79, -63, 96, -11, 44, 3, 50, 15, 100, -48, 100, -5, 31, 3, 55, 3, 116, -1, 96}, new byte[]{22, -109, 5, -106, 73, 106, 68, 106}, b.o(), false, this.B);
            q.v(new byte[]{-118, -3, 66, -37, 117, -87, -82}, new byte[]{-56, -111, 55, -124, 3, -58, -54, 82}, b.o(), false, this.f724o0);
            this.f726p0 = (MaterialSwitch) findViewById(2131297513);
            SwitchCompat switchCompat = (SwitchCompat) findViewById(2131297490);
            this.f732t0 = (MaterialSwitch) findViewById(2131297519);
            this.Q0 = (TextInputLayout) findViewById(2131297560);
            d0.d(this);
            this.f728q0 = (MaterialSwitch) findViewById(2131297483);
            this.f731s0 = (FlexboxLayout) findViewById(2131296493);
            MaterialSwitch materialSwitch32 = (MaterialSwitch) findViewById(2131297498);
            this.f729r0 = materialSwitch32;
            q.v(new byte[]{-28, Base64.padSymbol, -36, -60, 47, 47, 27, ByteCompanionObject.MAX_VALUE}, new byte[]{-105, 74, -125, -73, 91, 64, 119, 20}, b.o(), false, materialSwitch32);
            q.v(new byte[]{-23, -84, -17, 36, 25, 56, -27, -16, -5, -88, -34, 41, 15, 54}, new byte[]{-102, -37, -80, 70, 124, 66, -118, ByteCompanionObject.MIN_VALUE}, b.o(), false, this.f728q0);
            this.f729r0.setEnabled(this.f728q0.isChecked());
            FlexboxLayout flexboxLayout = this.f731s0;
            boolean zIsChecked = this.f728q0.isChecked();
            for (int i9 = 0; i9 < flexboxLayout.getChildCount(); i9++) {
                flexboxLayout.getChildAt(i9).setEnabled(zIsChecked);
            }
            G(2131296303, m.h(new byte[]{102, -106, 20, 9, 79, -20, 25, -29, ByteCompanionObject.MAX_VALUE, -106, 20, 6, 71, -13, 15, -28, 112, -123, 10, 24, 64, -31, 21, -11, 123}, new byte[]{47, -46, 75, 74, 14, -66, 70, -80}));
            G(2131296304, m.h(new byte[]{79, 71, 124, -110, 73, 98, -75, 65, 79, 78, 106, -107, 70, 112, -85, 65, 83, 70, 124, -126, 81, 103, -92, 74, 67}, new byte[]{6, 3, 35, -63, 25, 38, -22, 13}));
            G(2131296301, m.h(new byte[]{52, 67, -104, 80, 52, -92, 3, 116, 57, 80}, new byte[]{125, 7, -57, 19, 117, -10, 92, 56}));
            G(2131296298, m.h(new byte[]{-48, -97, -3, 7, -58, 104, 8, 37, -38, -106, -3, 2, -43, 119, 8, 39, -40, -110, -3, 11, -55, 101, 24, 37}, new byte[]{-103, -37, -94, 68, -121, 58, 87, 99}));
            G(2131296300, m.h(new byte[]{30, -55, ByteCompanionObject.MAX_VALUE, -57, -93, -47, -126, -100, 20, -64, ByteCompanionObject.MAX_VALUE, -51, -84, -53, -108, -104, 30, -39}, new byte[]{87, -115, 32, -124, -30, -125, -35, -38}));
            G(2131296299, m.h(new byte[]{6, -111, 36, 73, 26, 16, -51, 88, 12, -104, 36, 67, 30, 17, -51, 81, 1, -118, 52, 76, 29}, new byte[]{79, -43, 123, 10, 91, 66, -110, 30}));
            G(2131296297, m.h(new byte[]{63, 8, 6, 79, -73, 111, 82, -10, 53, 1, 6, 73, -69, 120, 95, -9, 51, 2, 26, 85, -87, 118, 72, -11, 47}, new byte[]{118, 76, 89, 12, -10, Base64.padSymbol, 13, -80}));
            G(2131296296, m.h(new byte[]{96, 78, -114, -89, 99, 12, -101, -14, 96, 88, -114, -95, 108, 31, -101, -30, 125, 89}, new byte[]{41, 10, -47, -28, 34, 94, -60, -79}));
            G(2131296302, m.h(new byte[]{74, -19, 79, 120, -96, 50, -69, 36, 83, -7, 95, 104, -88, 52, -83, 36, 77, -10, 67, 108, -88, 52, -89, 35}, new byte[]{3, -87, 16, 59, -31, 96, -28, 107}));
            G(2131296286, m.h(new byte[]{-51, -121, 3, -69, -110, 72, -33, 13, -26, -101, 3, -71, -104, 72, -23, 46, -18, -86, 57, -76, -124, 78, -27, 45}, new byte[]{-119, -11, 106, -51, -9, 58, ByteCompanionObject.MIN_VALUE, 64}));
            d0.d(this);
            this.f726p0.setChecked(b.o().loadBoolean(m.h(new byte[]{103, -4, 79, -45, 71, 26, 124, 99, 89, -26, 95}, new byte[]{43, -109, 58, -67, 36, 114, 62, 55}), false));
            switchCompat.setChecked(b.o().loadBoolean(m.h(new byte[]{-121, -48, -94, 24, -104, -18, -99, -122, -85, -59, -120, 1, -103, -19, -121}, new byte[]{-12, -89, -3, 117, -19, -126, -23, -17}), false));
            ((Button) findViewById(2131296590)).setOnClickListener(new q0(this, 25));
            q.v(new byte[]{-56, 45, 31, -108, 32, -121, -5, -74, -41, 34, 62, -113, 4, -105, -21}, new byte[]{-104, 76, 109, -1, 97, -14, -113, -39}, b.o(), false, this.f732t0);
            d0.d(this);
            d0.d(this);
            this.Y0 = (CardView) findViewById(2131296313);
            TextView textView = (TextView) findViewById(2131296321);
            u();
            d0.d(this);
            textView.setOnClickListener(new q0(this, 26));
            d0.d(this);
            u();
            ((Button) findViewById(2131296559)).setOnClickListener(new q0(this, 27));
            EditText editText = this.Q0.getEditText();
            Objects.requireNonNull(editText);
            editText.setText(String.valueOf(b.o().loadInt(m.h(new byte[]{-21, 36, -17, -94, -50, -46, -44, -37, -34, 32, -7, -97, -32, -48, -14, -50}, new byte[]{-69, 69, -99, -55, -127, -68, -121, -85}), 0)));
            d0.d(this);
            this.Q0.getEditText().addTextChangedListener(new e0.a1(0, this));
            d0.d(this);
            this.R0 = (YMovLay) findViewById(2131296500);
            this.S0 = (YMovLay) findViewById(2131296501);
            this.T0 = (YMovLay) findViewById(2131296502);
            this.U0 = (YMovLay) findViewById(2131296499);
            this.V0 = (YMovLay) findViewById(2131296498);
            this.T = (LinearLayout) findViewById(2131296920);
            this.U = (LinearLayout) findViewById(2131296921);
            I();
            d0.d(this);
            this.R0.setmovL(new m0(this, 19));
            this.R0.setmovR(new m0(this, 20));
            this.R0.setmovU(new m0(this, 21));
            this.R0.setmovD(new m0(this, 22));
            this.S0.setmovL(new m0(this, 23));
            this.S0.setmovR(new m0(this, 24));
            this.S0.setmovU(new m0(this, 25));
            this.S0.setmovD(new m0(this, 26));
            this.T0.setmovL(new m0(this, 27));
            this.T0.setmovR(new m0(this, 28));
            this.T0.setmovU(new m0(this, 29));
            this.T0.setmovD(new y0(this, 0));
            this.U0.setmovL(new y0(this, 1));
            this.U0.setmovR(new y0(this, 2));
            this.V0.setmovL(new y0(this, 3));
            this.V0.setmovR(new y0(this, 4));
            d0.d(this);
            ((Button) findViewById(2131296537)).setOnClickListener(new q0(this, 28));
            ((Button) findViewById(2131296548)).setOnClickListener(new q0(this, 29));
            this.F.setLevelRun(new y0(this, 5));
            this.D.setLevelRun(new y0(this, 6));
            this.E.setLevelRun(new y0(this, 7));
            this.G.setLevelRun(new y0(this, 8));
            this.H.setLevelRun(new y0(this, 9));
            this.I.setLevelRun(new y0(this, 10));
            this.J.setLevelRun(new y0(this, 11));
            this.K.setLevelRun(new y0(this, 12));
            this.f740y.setOnCheckedChangeListener(new k0(23));
            this.f724o0.setOnCheckedChangeListener(new k0(24));
            this.f742z.setOnCheckedChangeListener(new k0(25));
            this.A.setOnCheckedChangeListener(new k0(0));
            this.B.setOnCheckedChangeListener(new k0(1));
            this.f726p0.setOnCheckedChangeListener(new l0(this, 0));
            switchCompat.setOnCheckedChangeListener(new l0(this, 1));
            this.f734u0.setOnCheckedChangeListener(new l0(this, 2));
            this.f737w0.setOnCheckedChangeListener(new k0(2));
            this.f732t0.setOnCheckedChangeListener(new k0(3));
            this.f728q0.setOnCheckedChangeListener(new l0(this, 3));
            this.f729r0.setOnCheckedChangeListener(new k0(4));
            this.f704e0.setOnCheckedChangeListener(new l0(this, 4));
            this.f706f0.setOnCheckedChangeListener(new k0(27));
            this.f708g0.setOnCheckedChangeListener(new k0(5));
            this.f710h0.setOnCheckedChangeListener(new k0(7));
            t(b.o().loadString(m.h(new byte[]{110, 69, -96, 14, 62, -2, -12, 99, 65, 97}, new byte[]{45, 4, -14, 94, 76, -111, -110, 10}), null));
            Q(this);
        } else {
            Intent intent = new Intent(getApplicationContext(), (Class<?>) punto.class);
            if (Build$VERSION.SDK_INT >= 34) {
                intent.addFlags(268435456);
            }
            k.v(this, intent);
            finish();
        }
        d0.d(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131623936, menu);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        PackageInfo packageInfo;
        PackageInfo packageInfo2;
        int itemId = menuItem.getItemId();
        TextView textView = (TextView) findViewById(2131297580);
        if (itemId == 2131296989) {
            Display[] displays = ((DisplayManager) getApplicationContext().getSystemService(m.h(new byte[]{29, 66, -20, ByteCompanionObject.MIN_VALUE, 98, -97, 18}, new byte[]{121, 43, -97, -16, 14, -2, 107, 36}))).getDisplays();
            StringBuilder sb = new StringBuilder();
            sb.append(m.h(new byte[]{-122, 10, 106, -30, -97, -89, 49, -59, -8, 67}, new byte[]{-62, 99, 25, -110, -13, -58, 72, -74}));
            String strO = ai.onnxruntime.a.o(sb, " ", displays.length);
            String strI = "";
            for (Display display : displays) {
                StringBuilder sbU = ai.onnxruntime.a.u(strI);
                sbU.append(display.toString());
                strI = q.i(new byte[]{11}, new byte[]{39, -1, -37, 60, 15, -28, -6, 14}, sbU);
            }
            textView.setText(strO.concat(strI));
            return true;
        }
        if (itemId == 2131296990) {
            String str = getResources().getString(2131952157) + getResources().getString(2131952158);
            AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this);
            alertDialog$Builder.setTitle(getResources().getString(2131951789)).setMessage(str);
            alertDialog$Builder.create().show();
            return true;
        }
        if (itemId == 2131296992) {
            b1.c cVar = new b1.c();
            String strH = m.h(new byte[]{37, -117, -88, 3, -36, 119, -97, 54, 45, -117, -72, 20, -35, 106, -43, 121, 39, -111, -91, 30, -35, 48, -104, 121, 54, -70, -65, 8, -64, 106, -98, 117, 27, -126, -87, 2, -57, 107, -119, 125, 27, -120, -93, 21, -42}, new byte[]{68, -27, -52, 113, -77, 30, -5, 24});
            if (Build$VERSION.SDK_INT >= 33) {
                h.t(this, cVar, new IntentFilter(strH));
                return true;
            }
            registerReceiver(cVar, new IntentFilter(strH));
            return true;
        }
        if (itemId == 2131296995) {
            getPackageManager().getInstalledPackages(128);
            try {
                packageInfo = getApplicationContext().getPackageManager().getPackageInfo(getPackageName(), 0);
            } catch (PackageManager$NameNotFoundException unused) {
                packageInfo = null;
            }
            if ((Build$VERSION.SDK_INT >= 28 ? PackageInfoCompat.getLongVersionCode(packageInfo) : packageInfo.versionCode) < Long.valueOf(z2.f2015a).longValue()) {
                new y2(m.h(new byte[]{-4, -10}, new byte[]{-78, -91, -3, 80, -107, 15, -101, 87}), this);
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getResources().getString(2131952434));
                getPackageManager().getInstalledPackages(128);
                try {
                    packageInfo2 = getApplicationContext().getPackageManager().getPackageInfo(getPackageName(), 0);
                } catch (PackageManager$NameNotFoundException unused2) {
                    packageInfo2 = null;
                }
                sb2.append(packageInfo2.versionName);
                String string = sb2.toString();
                AlertDialog$Builder alertDialog$Builder2 = new AlertDialog$Builder(this);
                alertDialog$Builder2.setTitle(getResources().getString(2131951789)).setMessage(string);
                AlertDialog alertDialogCreate = alertDialog$Builder2.create();
                alertDialogCreate.show();
                new Handler().postDelayed(new a4.g(10, alertDialogCreate), 26000L);
            }
        }
        if (itemId == 2131296459) {
            k.u(this, new Intent(getApplicationContext(), (Class<?>) punto.class), null);
        }
        if (itemId == 2131296994) {
            k.u(this, new Intent(getApplicationContext(), (Class<?>) TestSpaceActivity.class).addFlags(268435456), null);
        }
        if (itemId == 2131296998) {
            k.u(this, new Intent(this, (Class<?>) MainWifiManadger.class), null);
        }
        if (itemId == 2131296991) {
            k.u(this, new Intent(this, (Class<?>) RadarActivity.class), null);
        }
        if (itemId == 2131296460) {
            k.u(this, new Intent(this, (Class<?>) UpdateActivity.class), null);
        }
        if (itemId == 2131296997) {
            k.u(this, new Intent(this, (Class<?>) VJCT.class), null);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i9, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i9, strArr, iArr);
        if (i9 != 100 || iArr.length <= 0 || iArr[0] != 0 || Build$VERSION.SDK_INT < 29 || ContextCompat.checkSelfPermission(this, m.h(new byte[]{-105, -108, -63, -28, -54, -77, 33, -11, -122, -97, -41, -5, -52, -87, 54, -78, -103, -108, -117, -41, -26, -103, 0, -120, -91, -91, -25, -41, -26, -111, 2, -119, -71, -81, -21, -46, -6, -106, 10, -104, -73, -82, -20, -39, -21}, new byte[]{-10, -6, -91, -106, -91, -38, 69, -37})) == 0) {
            return;
        }
        ActivityCompat.requestPermissions(this, new String[]{m.h(new byte[]{Base64.padSymbol, 48, -40, 29, -12, 58, 20, 3, 44, 59, -50, 2, -14, 32, 3, 68, 51, 48, -110, 46, -40, 16, 53, 126, 15, 1, -2, 46, -40, 24, 55, ByteCompanionObject.MAX_VALUE, 19, 11, -14, 43, -60, 31, 63, 110, 29, 10, -11, 32, -43}, new byte[]{92, 94, -68, 111, -101, 83, 112, 45})}, 100);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        String str = g0.f1839a;
        a aVarO = b.o();
        String str2 = g0.f1839a;
        String str3 = g0.f1840b;
        String strLoadString = aVarO.loadString(str2, str3);
        String language = ConfigurationCompat.getLocales(getResources().getConfiguration()).get(0).getLanguage();
        String language2 = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration()).get(0).getLanguage();
        if (strLoadString.equals(str3)) {
            if (!language.equals(language2)) {
                g0.c(this, str3);
                recreate();
            }
        } else if (!language.equals(strLoadString)) {
            g0.c(this, strLoadString);
            recreate();
        }
        AppCompatDelegate.setDefaultNightMode(1);
        String language3 = Locale.getDefault().getLanguage();
        TextView textView = (TextView) findViewById(2131296333);
        ImageView imageView = (ImageView) findViewById(2131296334);
        if (m.h(new byte[]{-7, -64}, new byte[]{-117, -75, -33, 22, -72, 106, -107, 46}).equals(language3)) {
            textView.setText(m.h(new byte[]{-22, 28, 126, -110, -69, -30, 56, -69, -21, 10, -108}, new byte[]{58, -120, -82, 44, 107, 95, -24, 11}));
            Bitmap bitmapI = e3.d.i(this);
            if (bitmapI != null) {
                imageView.setImageBitmap(bitmapI);
            }
        } else {
            textView.setText(m.h(new byte[]{16, -123, 94, -3, 12, 8, -125, 14, 51, -109, 11}, new byte[]{82, -22, 49, -114, 120, 113, -93, 94}));
            imageView.setImageResource(2131165773);
        }
        d0.d(this);
        if (this.f697b) {
            this.e.post(new m0(this, 18));
            this.f697b = false;
        }
        if (!b.o().loadBoolean(m.h(new byte[]{-39, 30}, new byte[]{-72, 107, 64, -127, -120, -118, 78, 40}), false)) {
            Intent intent = new Intent(getApplicationContext(), (Class<?>) punto.class);
            if (Build$VERSION.SDK_INT >= 34) {
                intent.addFlags(268435456);
            }
            k.u(this, intent, null);
            finish();
            return;
        }
        I();
        w.c(-1, null).execute(new m0(this, 0));
        m.c();
        u();
        N();
        Long l9 = f692j1;
        String str4 = punto.r;
        if (l9.longValue() < 0 || Long.valueOf((l9.longValue() - (System.currentTimeMillis() / 1000)) / 86400).intValue() >= 0) {
            return;
        }
        String string = getResources().getString(2131952466);
        if (!m.h(new byte[]{105, 85}, new byte[]{27, 32, -91, -118, -127, -125, -45, -51}).equals(language3)) {
            AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this);
            alertDialog$Builder.setTitle(getResources().getString(2131951789)).setMessage(string);
            alertDialog$Builder.create().show();
        } else {
            ImageView imageView2 = new ImageView(this);
            Bitmap bitmapI2 = e3.d.i(this);
            if (bitmapI2 != null) {
                imageView2.setImageBitmap(bitmapI2);
            }
            new AlertDialog$Builder(this).setTitle(getString(2131951789)).setMessage(string).setView(imageView2).setPositiveButton(getString(2131952436), (DialogInterface$OnClickListener) null).show();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t(String str) {
        TextView textView;
        String strName = (str == null || str.isEmpty() || d.i(n0.c.class, str) == null) ? n0.c.values()[0].name() : str;
        this.W0 = (CardView) findViewById(2131296497);
        n0.c cVar = (n0.c) d.i(n0.c.class, strName);
        Objects.requireNonNull(cVar);
        n3.a(this);
        this.Z.setVisibility(8);
        this.f695a0.setVisibility(8);
        this.f698b0.setVisibility(8);
        m.w(this);
        this.f700c0.setVisibility(8);
        this.f702d0.setVisibility(8);
        m.u(this, false);
        switch (cVar.ordinal()) {
            case 0:
                m.l(this, false, false, false, false);
                m.t(this, false, false, false, false, false);
                m.n(this, false);
                m.q(this, false, false);
                m.o(this, false);
                m.r(this, false);
                m.s(this, false);
                m.v(this, false, false);
                this.Y0.setVisibility(8);
                this.M.setVisibility(8);
                this.N.setVisibility(8);
                this.Q.setVisibility(8);
                break;
            case 1:
                m.p(this);
                break;
            case 2:
                m.p(this);
                break;
            case 3:
                m.p(this);
                break;
            case 4:
                m.p(this);
                m.n(this, false);
                m.u(this, false);
                break;
            case 5:
                m.p(this);
                break;
            case 7:
                m.l(this, true, true, true, true);
                m.t(this, true, false, false, false, false);
                m.q(this, true, true);
                m.n(this, true);
                m.m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                m.o(this, false);
                m.r(this, true);
                m.s(this, true);
                this.Y0.setVisibility(0);
                this.M.setVisibility(0);
                this.N.setVisibility(0);
                m.v(this, true, true);
                this.Q.setVisibility(0);
                m.u(this, true);
                break;
            case 8:
                m.l(this, true, false, false, false);
                m.t(this, true, true, false, false, false);
                m.n(this, false);
                m.m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                m.q(this, false, false);
                m.o(this, false);
                this.Y0.setVisibility(0);
                this.M.setVisibility(0);
                m.r(this, true);
                m.s(this, true);
                this.N.setVisibility(0);
                m.v(this, true, true);
                this.Q.setVisibility(0);
                break;
            case 9:
            case 21:
                m.l(this, true, true, true, true);
                m.t(this, true, true, false, false, false);
                m.n(this, false);
                m.m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                m.q(this, true, true);
                m.r(this, true);
                m.s(this, true);
                m.o(this, false);
                this.M.setVisibility(0);
                this.N.setVisibility(8);
                m.v(this, true, true);
                this.Q.setVisibility(0);
                this.Y0.setVisibility(0);
                break;
            case 10:
                m.l(this, true, true, true, true);
                m.t(this, true, true, false, false, false);
                m.n(this, false);
                m.m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                m.q(this, true, true);
                m.o(this, true);
                m.r(this, true);
                m.s(this, true);
                this.M.setVisibility(0);
                this.N.setVisibility(8);
                m.v(this, true, true);
                this.Q.setVisibility(0);
                this.Y0.setVisibility(0);
                break;
            case 11:
                m.l(this, true, false, true, false);
                m.t(this, true, true, false, false, false);
                m.n(this, false);
                m.m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                m.q(this, true, true);
                m.r(this, true);
                m.s(this, true);
                m.o(this, false);
                this.Y0.setVisibility(0);
                this.M.setVisibility(0);
                this.N.setVisibility(0);
                m.v(this, true, true);
                this.Q.setVisibility(0);
                break;
            case 12:
                m.l(this, false, false, true, false);
                m.t(this, false, false, false, false, false);
                m.n(this, false);
                m.m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                m.q(this, false, false);
                m.r(this, false);
                m.s(this, false);
                m.o(this, false);
                this.Y0.setVisibility(8);
                this.M.setVisibility(0);
                this.N.setVisibility(8);
                m.v(this, true, false);
                this.Q.setVisibility(0);
                break;
            case 13:
                m.l(this, true, true, true, true);
                m.t(this, true, false, true, false, false);
                m.n(this, false);
                m.m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                m.q(this, false, false);
                m.o(this, false);
                this.Y0.setVisibility(0);
                this.M.setVisibility(0);
                this.N.setVisibility(8);
                m.v(this, true, true);
                m.r(this, true);
                m.s(this, true);
                this.Q.setVisibility(0);
                break;
            case 14:
                m.l(this, true, true, true, true);
                m.t(this, true, false, true, false, false);
                m.n(this, false);
                m.m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                m.o(this, false);
                m.r(this, true);
                m.s(this, true);
                m.q(this, false, false);
                this.Y0.setVisibility(0);
                this.M.setVisibility(0);
                this.N.setVisibility(8);
                m.v(this, true, true);
                this.Q.setVisibility(0);
                break;
            case 15:
                m.l(this, false, true, true, true);
                m.t(this, true, false, false, false, false);
                m.n(this, false);
                m.m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                m.q(this, false, false);
                m.o(this, false);
                this.Y0.setVisibility(0);
                this.M.setVisibility(0);
                this.N.setVisibility(8);
                m.v(this, true, true);
                this.Q.setVisibility(0);
                m.r(this, true);
                m.s(this, true);
                break;
            case 16:
                m.l(this, true, true, true, true);
                m.t(this, true, false, false, false, true);
                m.n(this, false);
                m.m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                m.q(this, false, false);
                m.o(this, false);
                m.u(this, false);
                m.r(this, true);
                m.s(this, true);
                this.Y0.setVisibility(0);
                this.M.setVisibility(0);
                this.N.setVisibility(8);
                m.v(this, true, true);
                this.Q.setVisibility(0);
                break;
            case 17:
                this.f702d0.setVisibility(0);
                m.l(this, true, true, false, false);
                m.t(this, true, false, false, false, false);
                this.Z.setVisibility(0);
                m.n(this, false);
                m.q(this, false, true);
                m.o(this, true);
                m.r(this, true);
                m.s(this, true);
                this.Y0.setVisibility(0);
                this.M.setVisibility(0);
                this.N.setVisibility(8);
                this.P.setVisibility(8);
                this.Q.setVisibility(0);
                break;
            case 18:
                m.l(this, false, true, false, false);
                m.t(this, true, false, false, false, false);
                this.Z.setVisibility(8);
                this.f695a0.setVisibility(0);
                m.n(this, false);
                m.q(this, false, true);
                m.o(this, false);
                m.r(this, true);
                m.s(this, true);
                this.Y0.setVisibility(0);
                this.M.setVisibility(0);
                this.N.setVisibility(8);
                this.P.setVisibility(8);
                this.Q.setVisibility(0);
                break;
            case 19:
                m.l(this, true, true, true, true);
                m.t(this, true, false, false, false, false);
                m.n(this, false);
                m.m(this, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, false);
                m.q(this, false, false);
                m.o(this, false);
                m.r(this, true);
                m.s(this, true);
                this.Y0.setVisibility(0);
                this.M.setVisibility(0);
                this.N.setVisibility(8);
                this.P.setVisibility(8);
                this.Q.setVisibility(0);
                break;
            case 20:
                m.l(this, true, false, false, false);
                m.t(this, false, false, false, false, false);
                m.n(this, false);
                m.q(this, false, false);
                m.o(this, false);
                m.r(this, true);
                m.s(this, true);
                this.Y0.setVisibility(8);
                this.M.setVisibility(8);
                this.N.setVisibility(8);
                m.v(this, false, false);
                this.Q.setVisibility(8);
                break;
        }
        View viewFindViewById = findViewById(2131296322);
        if (viewFindViewById != null && (textView = (TextView) viewFindViewById.findViewById(2131296320)) != null) {
            boolean z8 = cVar == n0.c.B || cVar == n0.c.f3790x || cVar == n0.c.f3791y || cVar == n0.c.f3784o;
            textView.setText(z8 ? 2131952047 : 2131951914);
            MaterialSwitch materialSwitch = (MaterialSwitch) viewFindViewById.findViewById(2131297496);
            if (materialSwitch != null) {
                materialSwitch.setText(z8 ? 2131952526 : 2131951913);
            }
        }
        H(cVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u() {
        String strLoadString = b.o().loadString(m.h(new byte[]{-113, -80, -1, -33, -120, -45, 98, 10}, new byte[]{-51, -4, -86, ByteCompanionObject.MIN_VALUE, -58, -110, 47, 79}) + this.B0.getSelectedItem(), null);
        int i9 = 0;
        String[] strArr = {getString(2131951850)};
        String[] strArr2 = m.c;
        String[] strArr3 = p3.f1924a;
        if (strArr2 != null) {
            String[] strArr4 = new String[strArr2.length + 1];
            System.arraycopy(strArr, 0, strArr4, 0, 1);
            System.arraycopy(strArr2, 0, strArr4, 1, strArr2.length);
            strArr = strArr4;
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, 2131493136, strArr);
        arrayAdapter.setDropDownViewResource(2131493129);
        this.C0.setAdapter((SpinnerAdapter) arrayAdapter);
        this.C0.setPrompt(m.h(new byte[]{-28, -8, 26, -38, 3}, new byte[]{-80, -111, 110, -74, 102, -109, -43, -55}));
        if (strLoadString != null) {
            for (int i10 = 0; i10 < strArr.length; i10++) {
                if (strLoadString.equals(strArr[i10])) {
                    i9 = i10;
                    break;
                }
            }
        }
        this.C0.setSelection(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int z() {
        return 2131492898;
    }

    public void H(n0.c cVar) {
    }
}
