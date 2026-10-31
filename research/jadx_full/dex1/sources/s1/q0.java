package s1;

import android.R$color;
import android.R$drawable;
import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable$Orientation;
import android.hardware.display.VirtualDisplay;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.text.TextUtils$TruncateAt;
import android.view.View;
import android.view.Window;
import android.view.WindowManager$LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView$ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextClock;
import android.widget.TextView;
import androidx.core.location.LocationRequestCompat;
import androidx.core.widget.TextViewCompat;
import com.example.navistart.home.LauncherWindowService;
import com.example.navistart.home.WebLauncherActivity;
import e0.s1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class q0 extends FrameLayout {
    public static final String K = e0.m.h(new byte[]{-124, -111, 118, 109, 11, -10, -13, 33, -73, -98, 98, 119, 1, -24, -13, 12, -116, -107, 112, 104, 28, -15, -26, 12, -124, -111, 122, 108, 29, -22, -55, 37, -39}, new byte[]{-24, -16, 3, 3, 104, -98, -106, 83});
    public static final String L = e0.m.h(new byte[]{11, -98, 79, -83, 68, -100, 34, -117, 4, -118, 85, -89, 90, -100, 15, -72, 18, -98, 87, -88, 66, -104, 13, -126, 23, -47, 81, -76, 85}, new byte[]{101, -1, 59, -60, 50, -7, 125, -25});
    public static final String M = e0.m.h(new byte[]{7, -123, -102, -9, -13, -61, 113, 5, 52, -118, -114, -19, -7, -35, 113, 40, 28, -123, -125, -11, -32, -54, 100, 18, 25, -69, -126, -10, -12, -50, 75, 1, 90}, new byte[]{107, -28, -17, -103, -112, -85, 20, 119});
    public static final String N = e0.m.h(new byte[]{-35, 25, 124, 57, 51, -11}, new byte[]{-66, 108, 15, 77, 92, -104, 91, -127});
    public static final String O = e0.m.h(new byte[]{7, 24, -90, 73, -44, -68}, new byte[]{104, 118, -54, 32, -70, -39, -44, 31});
    public boolean A;
    public boolean B;
    public int C;
    public long D;
    public volatile boolean E;
    public int F;
    public int G;
    public int H;
    public int I;
    public final f0 J;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n.p f5170b;
    public final ImageView c;
    public final View d;
    public final o0 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinearLayout f5171f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Button f5172g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Button f5173h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Button f5174i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Button f5175j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ExecutorService f5176k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ExecutorService f5177l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ExecutorService f5178m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f5179n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f5180o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final f0 f5181p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final ArrayList f5182q;
    public final Handler r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f5183s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f5184u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f5185v;
    public String w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f5186x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public s0.a f5187y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f5188z;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public q0(WebLauncherActivity webLauncherActivity, n.p pVar) {
        super(webLauncherActivity);
        this.f5176k = Executors.newSingleThreadExecutor();
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        this.f5177l = executorServiceNewSingleThreadExecutor;
        this.f5178m = Executors.newSingleThreadExecutor();
        this.f5179n = true;
        this.f5180o = 15000L;
        this.f5181p = new f0(this, 0);
        this.f5182q = new ArrayList();
        Handler handler = new Handler(Looper.getMainLooper());
        this.r = handler;
        this.t = true;
        this.w = e0.m.h(new byte[]{-19, 86, -7, 23, 102}, new byte[]{15, -42, 109, -43, -42, -51, 32, -40});
        this.F = 1;
        this.G = 1;
        this.H = 1;
        this.I = 1;
        f0 f0Var = new f0(this, 1);
        this.J = f0Var;
        this.f5170b = pVar;
        setClipToPadding(false);
        setBackground(new GradientDrawable(GradientDrawable$Orientation.TL_BR, new int[]{-16314343, -15984606, -15656670}));
        ImageView imageView = new ImageView(webLauncherActivity);
        this.c = imageView;
        imageView.setScaleType(ImageView$ScaleType.CENTER_CROP);
        addView(imageView, new FrameLayout$LayoutParams(-1, -1));
        View view = new View(webLauncherActivity);
        this.d = view;
        view.setBackground(new GradientDrawable(GradientDrawable$Orientation.TOP_BOTTOM, new int[]{1929579024, -1727854064}));
        addView(view, new FrameLayout$LayoutParams(-1, -1));
        o0 o0Var = new o0(webLauncherActivity);
        this.e = o0Var;
        o0Var.setClipChildren(true);
        o0Var.setClipToPadding(false);
        o0Var.setOnLongClickListener(new d0(this, 0));
        o0Var.setLongClickable(true);
        o0Var.setOnClickListener(new a0(this, 2));
        addView(o0Var, new FrameLayout$LayoutParams(-1, -1));
        LinearLayout linearLayout = new LinearLayout(webLauncherActivity);
        this.f5171f = linearLayout;
        linearLayout.setGravity(17);
        linearLayout.setPadding(l(8), l(7), l(8), l(7));
        linearLayout.setBackground(G(-233167568, 18, -11749921));
        linearLayout.setElevation(l(30));
        Button buttonR = R(e0.m.h(new byte[]{-17, 106, -43, 83, 67, -15, -115, -102, -48, 103, -114, -61, 67, -41, -115, -100, -47, 84, -113, -1}, new byte[]{0, -42, 94, 115, -109, 101, 93, 36}), true);
        buttonR.setOnClickListener(new a0(this, 3));
        linearLayout.addView(buttonR, S(142));
        Button buttonR2 = R(e0.m.h(new byte[]{-76, 51, -3, 126, -124, -80, 6, 73, -47, 125, -81, 16, 30, -79, 50}, new byte[]{100, -84, 45, -64, -92, 97, -121, -103}), false);
        this.f5172g = buttonR2;
        buttonR2.setOnClickListener(new a0(this, 4));
        linearLayout.addView(buttonR2, S(132));
        Button buttonR3 = R(e0.m.h(new byte[]{113, -61, 103, -26, -91, -66, 93, -22, 67, -4, 37, 122, -91, -85, 92, -38}, new byte[]{-109, 75, -11, -58, 117, 30, -115, 90}), false);
        this.f5173h = buttonR3;
        buttonR3.setContentDescription(e0.m.h(new byte[]{-81, 24, 112, -16, -83, -86, -113, 0, -82, 55, 113, -60, -83, -89, -114, 63, -82, 55, ByteCompanionObject.MIN_VALUE, -100, -49, -50, -44, 109, -50, 106, 32, -100, -51, -49, -30, 109, -62, 106, 43, -100, -60, 63, -113, 15, -81, 3, 112, -8, -83, -87, -113, 8, -82, 57}, new byte[]{ByteCompanionObject.MAX_VALUE, -69, -96, 76, 125, 31, 95, -67}));
        buttonR3.setEnabled(false);
        buttonR3.setOnClickListener(new a0(this, 5));
        linearLayout.addView(buttonR3, S(92));
        Button buttonR4 = R(e0.m.h(new byte[]{74, -25, -17, 49, 52, 43, -2, 96, 117, -20, -76, -83, 52, 62, -1, 80}, new byte[]{-91, 91, 100, 17, -28, -117, 46, -48}), false);
        this.f5174i = buttonR4;
        buttonR4.setContentDescription(e0.m.h(new byte[]{-42, 29, -38, -44, 9, 91, 93, -92, -42, 6, -37, -31, 9, 86, 92, -99, -41, 50, 42, -74, 107, 63, 6, -49, -73, 111, -118, -74, 105, 62, 48, -49, -69, 111, -127, -74, 96, -50, 93, -83, -42, 6, -38, -46, 9, 88, 93, -86, -41, 60}, new byte[]{6, -66, 10, 102, -39, -18, -115, 31}));
        buttonR4.setEnabled(false);
        buttonR4.setOnClickListener(new a0(this, 6));
        linearLayout.addView(buttonR4, S(92));
        Button buttonR5 = R(e0.m.h(new byte[]{-114, 26, -93, -127, -101, -100, 30, -90, -114, 1, -94, -73, -102, -96}, new byte[]{94, -71, 115, 53, 75, 44, -50, 29}), false);
        this.f5175j = buttonR5;
        buttonR5.setEnabled(false);
        buttonR5.setOnClickListener(new a0(this, 7));
        linearLayout.addView(buttonR5, S(112));
        Button buttonR6 = R(e0.m.h(new byte[]{-46, 96, -89, -22, 5, 118, -98, 50, -46, 67, -90, -40}, new byte[]{2, -2, 118, 104, -43, -54, 78, -121}), false);
        buttonR6.setOnClickListener(new a0(this, 8));
        linearLayout.addView(buttonR6, S(LocationRequestCompat.QUALITY_LOW_POWER));
        Button buttonR7 = R(e0.m.h(new byte[]{-68, -3, 123, 124, -67, -120, 99, 32, -68, -20, 123, ByteCompanionObject.MAX_VALUE, -68, -75, 99, 34, -67, -48}, new byte[]{108, 92, -85, -62, 108, 13, -78, -96}), true);
        buttonR7.setOnClickListener(new a0(this, 0));
        linearLayout.addView(buttonR7, S(126));
        FrameLayout$LayoutParams frameLayout$LayoutParams = new FrameLayout$LayoutParams(-2, l(62), 49);
        frameLayout$LayoutParams.topMargin = l(10);
        addView(linearLayout, frameLayout$LayoutParams);
        linearLayout.setVisibility(8);
        u(h0.b.o().loadString(e0.m.h(new byte[]{-47, -88, 109, -91, -85, 19, -123, -31, -30, -89, 121, -65, -95, 13, -123, -52, -39, -84, 107, -96, -68, 20, -112, -52, -47, -88, 97, -92, -67, 15, -65, -27, -116}, new byte[]{-67, -55, 24, -53, -56, 123, -32, -109}), ""));
        executorServiceNewSingleThreadExecutor.execute(new c0(this, 1));
        E(false);
        handler.postDelayed(f0Var, 1200L);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void O(j0 j0Var) {
        j0Var.c = g(Math.round(j0Var.c * 24.0f) / 24.0f, 0.0f, 1.0f - j0Var.e);
        j0Var.d = g(Math.round(j0Var.d * 14.0f) / 14.0f, 0.0f, 1.0f - j0Var.f5101f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String b(j0.e eVar) {
        n0.d dVar;
        if (eVar.f2872a != j0.d.f2870b || (dVar = eVar.f2873b) == null) {
            return TextUtils.isEmpty(eVar.f2877i) ? e0.m.h(new byte[]{-8, 67, -80, -67, -9, 82, 68, -60, -7, 85, -80, -70, -9, 83, 69, -16}, new byte[]{40, -41, 96, 8, 39, -21, -107, 69}) : eVar.f2877i;
        }
        int iOrdinal = dVar.ordinal();
        if (iOrdinal == 7) {
            return e0.m.h(new byte[]{-1, -83, -14, -37, 52, -33, 32, -13, -1, -116, -13, -19, 52, -46, 32, -11, -1, -118, -14, -44}, new byte[]{47, 50, 35, 91, -28, 103, -16, 72});
        }
        if (iOrdinal == 55) {
            return e0.m.h(new byte[]{50, -110, -41, 124, 69, -43, -124, -7, 50, -121, -41, 119, 69, -41, -124, -16, 50, -118, -41, 121}, new byte[]{-30, 50, 7, -52, -107, 98, 84, 77});
        }
        if (iOrdinal == 74) {
            return e0.m.h(new byte[]{-26, 88, -39, -60, -22, 63, -46, -115, -26, 119, -39, -52, -22, 51, -46, -120}, new byte[]{54, -59, 9, 113, 58, -117, 2, Base64.padSymbol});
        }
        if (iOrdinal != 75) {
            return TextUtils.isEmpty(eVar.f2877i) ? e0.m.h(new byte[]{-107, -60, -59, 90, -30, -9, -73, -56, -108, -46, -59, 93, -30, -10, -74, -4}, new byte[]{69, 80, 21, -17, 50, 78, 102, 73}) : eVar.f2877i;
        }
        return e0.m.h(new byte[]{59, 0, 86, -57, 18, -80, -110, 116, 59, 38, 87, -12}, new byte[]{-21, -100, -121, 68, -62, 7, 67, -1});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float g(float f8, float f9, float f10) {
        return Math.max(f9, Math.min(f10, f8));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float[] i(m0 m0Var) {
        if (m0Var == m0.f5141h) {
            return new float[]{0.42f, 0.48f};
        }
        if (m0Var == m0.d) {
            return new float[]{0.38f, 0.19f};
        }
        if (r(m0Var)) {
            return new float[]{0.12f, 0.15f};
        }
        return (m0Var == m0.e || m0Var == m0.f5139f || m0Var == m0.f5140g) ? new float[]{0.1f, 0.14f} : new float[]{0.22f, 0.18f};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean q(m0 m0Var) {
        return m0Var == m0.f5142i || m0Var == m0.f5144k;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean r(m0 m0Var) {
        return m0Var == m0.f5142i || m0Var == m0.f5143j || m0Var == m0.f5144k || m0Var == m0.f5145l;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FrameLayout$LayoutParams v() {
        return new FrameLayout$LayoutParams(-1, -1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int w(int i9) {
        if (i9 < 1 || i9 > 4) {
            return 1;
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:111:0x06e3 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:113:0x005c */
    /* JADX DEBUG: Multi-variable search result rejected for r10v1, resolved type: s1.l0 */
    /* JADX DEBUG: Multi-variable search result rejected for r10v2, resolved type: s1.l0 */
    /* JADX DEBUG: Multi-variable search result rejected for r10v3, resolved type: s1.l0 */
    /* JADX DEBUG: Multi-variable search result rejected for r10v4, resolved type: s1.l0 */
    /* JADX DEBUG: Multi-variable search result rejected for r10v6, resolved type: s1.l0 */
    /* JADX DEBUG: Multi-variable search result rejected for r9v52, resolved type: android.widget.TextClock */
    /* JADX DEBUG: Multi-variable search result rejected for r9v53, resolved type: s1.n0 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void A() {
        l0 l0Var;
        int i9;
        String strH;
        o0 o0Var = this.e;
        ?? r9 = 1;
        for (int childCount = o0Var.getChildCount() - 1; childCount >= 0; childCount--) {
            l0 l0Var2 = (l0) o0Var.getChildAt(childCount);
            if (o(l0Var2.f5123b.f5099a) == null) {
                b bVar = l0Var2.f5124f;
                if (bVar != null) {
                    bVar.c();
                }
                o0Var.removeViewAt(childCount);
            }
        }
        ArrayList arrayList = this.f5182q;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            j0 j0Var = (j0) obj;
            String str = j0Var.f5099a;
            int i11 = 0;
            while (true) {
                if (i11 >= o0Var.getChildCount()) {
                    l0Var = 0;
                    break;
                }
                View childAt = o0Var.getChildAt(i11);
                if (childAt instanceof l0) {
                    l0Var = (l0) childAt;
                    if (l0Var.f5123b.f5099a.equals(str)) {
                        break;
                    }
                }
                i11++;
            }
            if (l0Var == 0) {
                l0Var = new l0(getContext());
                l0Var.f5123b = j0Var;
                l0Var.setTag(j0Var);
                l0Var.setClipToOutline(r9);
                j0 j0Var2 = l0Var.f5123b;
                m0 m0Var = j0Var2.f5100b;
                String str2 = j0Var2.f5102g;
                if (m0Var == m0.f5138b) {
                    LinearLayout linearLayoutV = V();
                    linearLayoutV.setGravity(16);
                    linearLayoutV.setPadding(l(16), l(10), l(16), l(10));
                    Context contextB = e0.g0.b(getContext());
                    TextClock textClock = new TextClock(contextB);
                    textClock.setFormat24Hour(e0.m.h(new byte[]{30, -66, -62, 126, -32}, new byte[]{86, -10, -8, 19, -115, -91, -54, -89}));
                    textClock.setFormat12Hour(e0.m.h(new byte[]{50, 44, 71, -90, -15}, new byte[]{122, 100, 125, -53, -100, 23, 122, -11}));
                    textClock.setTextSize(48.0f);
                    textClock.setTextColor(-1);
                    textClock.setTypeface(Typeface.DEFAULT_BOLD);
                    textClock.setMaxLines(r9);
                    textClock.setIncludeFontPadding(false);
                    TextViewCompat.setAutoSizeTextTypeUniformWithConfiguration(textClock, 18, 48, 2, 2);
                    linearLayoutV.addView(textClock);
                    n0 n0Var = new n0(contextB);
                    n0Var.setTextSize(17.0f);
                    n0Var.setTextColor(-6310972);
                    n0Var.setMaxLines(r9);
                    n0Var.setEllipsize(TextUtils$TruncateAt.END);
                    n0Var.setIncludeFontPadding(false);
                    linearLayoutV.addView(n0Var);
                    l0Var.addView(linearLayoutV, v());
                } else if (m0Var == m0.c) {
                    LinearLayout linearLayout = new LinearLayout(getContext());
                    int i12 = getResources().getConfiguration().screenWidthDp < getResources().getConfiguration().screenHeightDp ? 1 : 0;
                    linearLayout.setOrientation(i12);
                    linearLayout.setGravity(17);
                    linearLayout.setPadding(l(12), l(10), l(12), l(10));
                    ImageView imageView = new ImageView(getContext());
                    l0Var.f5126h = imageView;
                    imageView.setScaleType(ImageView$ScaleType.CENTER_INSIDE);
                    linearLayout.addView(imageView, new LinearLayout$LayoutParams(l(56), l(56)));
                    LinearLayout linearLayoutV2 = V();
                    linearLayoutV2.setGravity(17);
                    linearLayoutV2.setPadding(i12 != 0 ? 0 : l(9), i12 != 0 ? l(4) : 0, 0, 0);
                    TextView textViewP = P(this.w, 35, -1);
                    l0Var.f5127i = textViewP;
                    textViewP.setTypeface(Typeface.DEFAULT_BOLD);
                    linearLayoutV2.addView(textViewP);
                    TextView textViewP2 = P(e0.m.h(new byte[]{55, 88, -120, 32, 108, -83, 117, 19, 55, 115, -120, 46, -100, -49, 36, 125, 82, 23, -31, 79, 59, -50, 21, 124, 102}, new byte[]{-25, -57, 88, -98, -68, 30, -91, -83}), 14, -6310972);
                    textViewP2.setGravity(17);
                    textViewP2.setMaxLines(1);
                    textViewP2.setEllipsize(TextUtils$TruncateAt.END);
                    linearLayoutV2.addView(textViewP2);
                    linearLayout.addView(linearLayoutV2);
                    l0Var.addView(linearLayout, v());
                } else if (m0Var == m0.d) {
                    LinearLayout linearLayout2 = new LinearLayout(getContext());
                    linearLayout2.setGravity(16);
                    linearLayout2.setPadding(l(12), l(10), l(14), l(10));
                    ImageView imageView2 = new ImageView(getContext());
                    l0Var.f5128j = imageView2;
                    imageView2.setScaleType(ImageView$ScaleType.CENTER_CROP);
                    imageView2.setBackground(G(-14404543, 16, -13349794));
                    linearLayout2.addView(imageView2, new LinearLayout$LayoutParams(l(78), l(78)));
                    LinearLayout linearLayoutV3 = V();
                    linearLayoutV3.setGravity(16);
                    linearLayoutV3.setPadding(l(14), 0, 0, 0);
                    s0.a aVar = this.f5187y;
                    String strH2 = (aVar == null || TextUtils.isEmpty(aVar.f5042b)) ? e0.m.h(new byte[]{-72, 46, -28, -49, 52, 44, 96, -74, -72, 8, -27, -4, -60, 75, 12, -19, -35, -110, -27, -12, 52, 40, 96, -67, -72, 2, -27, -7, 53, 25}, new byte[]{104, -78, 53, 76, -28, -101, -79, Base64.padSymbol}) : this.f5187y.f5042b;
                    s0.a aVar2 = this.f5187y;
                    String strH3 = (aVar2 == null || TextUtils.isEmpty(aVar2.c)) ? e0.m.h(new byte[]{-7, -76, -65, -17, 57, 41, 71, 99, -8, -94, -66, -35, 57, 46, 71, 98, -7, -106, 79, -113, 86, 71, 22, 48, -105, -13, -41, -113, 90, 71, 22, 49, -94, -13, -35, -113, 89, 71, 20, 48, -100, -13, -44, -114, 101}, new byte[]{41, 35, 111, 95, -23, -106, -106, -32}) : this.f5187y.c;
                    TextView textViewP3 = P(strH2, 21, -1);
                    l0Var.f5129k = textViewP3;
                    textViewP3.setTypeface(Typeface.DEFAULT_BOLD);
                    textViewP3.setMaxLines(1);
                    TextUtils$TruncateAt textUtils$TruncateAt = TextUtils$TruncateAt.END;
                    textViewP3.setEllipsize(textUtils$TruncateAt);
                    linearLayoutV3.addView(textViewP3);
                    TextView textViewP4 = P(strH3, 15, -6310972);
                    l0Var.f5130l = textViewP4;
                    textViewP4.setMaxLines(1);
                    textViewP4.setEllipsize(textUtils$TruncateAt);
                    textViewP4.setPadding(0, l(6), 0, 0);
                    linearLayoutV3.addView(textViewP4);
                    linearLayout2.addView(linearLayoutV3, new LinearLayout$LayoutParams(0, -1, 1.0f));
                    l0Var.addView(linearLayout2, v());
                } else if (m0Var == m0.f5140g) {
                    LinearLayout linearLayoutV4 = V();
                    linearLayoutV4.setGravity(17);
                    linearLayoutV4.setPadding(l(8), l(8), l(8), l(8));
                    TextView textViewP5 = P(e0.m.h(new byte[]{-125, -105, 52}, new byte[]{97, 17, -113, -99, -66, -39, -28, -109}), 35, -9382222);
                    textViewP5.setGravity(17);
                    linearLayoutV4.addView(textViewP5, new LinearLayout$LayoutParams(l(48), l(48)));
                    TextView textViewP6 = P(e0.m.h(new byte[]{113, -100, 123, 54, Base64.padSymbol, -29, -30, 10, 113, -80, 123, 63, 60, -36, -29, 56, -127, -45, 47, 87, 83, -114, -113}, new byte[]{-95, 2, -85, -121, -19, 94, 50, -76}), 12, -1);
                    textViewP6.setTypeface(Typeface.DEFAULT_BOLD);
                    textViewP6.setGravity(17);
                    textViewP6.setMaxLines(2);
                    linearLayoutV4.addView(textViewP6, new LinearLayout$LayoutParams(-1, -2));
                    l0Var.addView(linearLayoutV4, v());
                } else if (r(m0Var)) {
                    boolean zQ = q(l0Var.f5123b.f5100b);
                    m0 m0Var2 = l0Var.f5123b.f5100b;
                    boolean z8 = m0Var2 == m0.f5142i || m0Var2 == m0.f5143j;
                    int i13 = zQ ? -35235 : -11155473;
                    LinearLayout linearLayoutV5 = V();
                    linearLayoutV5.setGravity(17);
                    linearLayoutV5.setPadding(l(6), l(7), l(6), l(7));
                    LinearLayout linearLayout3 = new LinearLayout(getContext());
                    linearLayout3.setGravity(17);
                    TextView textViewP7 = P(zQ ? e0.m.h(new byte[]{99, -114, 81}, new byte[]{-127, 23, -7, 29, 25, -108, 118, -25}) : e0.m.h(new byte[]{44, 51, 69}, new byte[]{-50, -82, -63, -116, -68, -41, 26, -54}), 23, i13);
                    textViewP7.setGravity(17);
                    linearLayout3.addView(textViewP7, new LinearLayout$LayoutParams(l(28), l(34)));
                    if (z8) {
                        i9 = 8;
                        strH = e0.m.h(new byte[]{-98, -67, -94, -112, -56, 82, 25, -46, -97, -83, -94, -101, -56, 93, 24, -26}, new byte[]{78, 47, 114, 46, 24, -26, -55, 106});
                    } else {
                        i9 = 8;
                        strH = e0.m.h(new byte[]{79, -16, 22, 42, ByteCompanionObject.MAX_VALUE, 14, -73, -117, 79, -33, 22, 44, 126, 55, -73, -118}, new byte[]{-97, 111, -58, -102, -82, -113, 102, 10});
                    }
                    TextView textViewP8 = P(strH, 11, -1);
                    textViewP8.setTypeface(Typeface.DEFAULT_BOLD);
                    textViewP8.setMaxLines(1);
                    linearLayout3.addView(textViewP8);
                    linearLayoutV5.addView(linearLayout3);
                    byte[] bArr = new byte[i9];
                    // fill-array-data instruction
                    bArr[0] = -101;
                    bArr[1] = -37;
                    bArr[2] = 8;
                    bArr[3] = 70;
                    bArr[4] = -105;
                    bArr[5] = 123;
                    bArr[6] = -87;
                    bArr[7] = 22;
                    byte[] bArr2 = new byte[i9];
                    // fill-array-data instruction
                    bArr2[0] = 75;
                    bArr2[1] = 73;
                    bArr2[2] = -39;
                    bArr2[3] = -51;
                    bArr2[4] = 71;
                    bArr2[5] = -63;
                    bArr2[6] = 121;
                    bArr2[7] = -83;
                    TextView textViewP9 = P(e0.m.h(bArr, bArr2), 12, -5653818);
                    l0Var.f5131m = textViewP9;
                    textViewP9.setGravity(17);
                    linearLayoutV5.addView(l0Var.f5131m);
                    LinearLayout linearLayout4 = new LinearLayout(getContext());
                    linearLayout4.setGravity(17);
                    int i14 = 0;
                    while (true) {
                        View[] viewArr = l0Var.f5135q;
                        if (i14 >= viewArr.length) {
                            break;
                        }
                        View view = new View(getContext());
                        viewArr[i14] = view;
                        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(l(24), l(7));
                        linearLayout$LayoutParams.setMargins(l(3), l(5), l(3), 0);
                        linearLayout4.addView(view, linearLayout$LayoutParams);
                        i14++;
                    }
                    linearLayoutV5.addView(linearLayout4);
                    l0Var.addView(linearLayoutV5, v());
                } else {
                    m0 m0Var3 = j0Var2.f5100b;
                    if (m0Var3 == m0.f5139f) {
                        LinearLayout linearLayoutV6 = V();
                        linearLayoutV6.setGravity(17);
                        linearLayoutV6.setPadding(l(7), l(5), l(7), l(5));
                        LinearLayout linearLayout5 = new LinearLayout(getContext());
                        linearLayout5.setGravity(17);
                        ImageView imageView3 = new ImageView(getContext());
                        l0Var.f5132n = imageView3;
                        imageView3.setScaleType(ImageView$ScaleType.CENTER_INSIDE);
                        linearLayout5.addView(imageView3, new LinearLayout$LayoutParams(l(34), l(34)));
                        TextView textViewP10 = P("", 9, -16314343);
                        l0Var.f5134p = textViewP10;
                        textViewP10.setGravity(17);
                        Typeface typeface = Typeface.DEFAULT_BOLD;
                        textViewP10.setTypeface(typeface);
                        textViewP10.setBackground(G(-9382222, 9, -6494003));
                        LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(l(30), l(20));
                        linearLayout$LayoutParams2.leftMargin = l(6);
                        linearLayout5.addView(textViewP10, linearLayout$LayoutParams2);
                        linearLayoutV6.addView(linearLayout5, new LinearLayout$LayoutParams(-2, l(36)));
                        TextView textViewP11 = P("", 10, -1);
                        l0Var.f5133o = textViewP11;
                        textViewP11.setGravity(17);
                        textViewP11.setTypeface(typeface);
                        textViewP11.setMaxLines(2);
                        textViewP11.setEllipsize(TextUtils$TruncateAt.END);
                        linearLayoutV6.addView(textViewP11, new LinearLayout$LayoutParams(-1, 0, 1.0f));
                        l0Var.addView(linearLayoutV6, v());
                    } else if (m0Var3 == m0.f5141h) {
                        b bVar2 = new b(getContext(), j0Var2.f5099a, str2);
                        l0Var.f5124f = bVar2;
                        l0Var.addView(bVar2, new FrameLayout$LayoutParams(-1, -1));
                    } else {
                        j0.e eVarB = j0.f.b(getContext(), str2);
                        LinearLayout linearLayoutV7 = V();
                        linearLayoutV7.setGravity(17);
                        linearLayoutV7.setPadding(l(8), l(8), l(8), l(8));
                        ImageView imageView4 = new ImageView(getContext());
                        imageView4.setImageDrawable(eVarB.f2878j);
                        imageView4.setScaleType(ImageView$ScaleType.CENTER_INSIDE);
                        linearLayoutV7.addView(imageView4, new LinearLayout$LayoutParams(l(42), l(42)));
                        TextView textViewP12 = P(b(eVarB), 12, -1);
                        textViewP12.setGravity(17);
                        textViewP12.setMaxLines(2);
                        textViewP12.setEllipsize(TextUtils$TruncateAt.END);
                        linearLayoutV7.addView(textViewP12, new LinearLayout$LayoutParams(-1, -2));
                        l0Var.addView(linearLayoutV7, v());
                    }
                }
                l0Var.c = l0Var.getChildCount() == 0 ? null : l0Var.getChildAt(0);
                TextView textViewP13 = P(e0.m.h(new byte[]{68, 10, 51}, new byte[]{-90, -106, -106, 116, -61, 8, 20, -86}), 20, -7414537);
                l0Var.d = textViewP13;
                textViewP13.setGravity(17);
                l0Var.addView(l0Var.d, new FrameLayout$LayoutParams(l(38), l(38), 53));
                if (l0Var.f5124f != null) {
                    l0Var.d.setOnTouchListener(new k0(this));
                    TextView textViewP14 = P(e0.m.h(new byte[]{-23, -113, 19}, new byte[]{11, 9, -117, 63, 112, 113, -33, 85}), 26, -7414537);
                    l0Var.e = textViewP14;
                    textViewP14.setGravity(17);
                    l0Var.e.setBackground(G(-300473554, 8, -11222036));
                    l0Var.e.setContentDescription(e0.m.h(new byte[]{-103, 54, -54, -106, 121, -28, 15, -62, -103, 19, -54, -103, 120, -38, 14, -5, 105, ByteCompanionObject.MAX_VALUE, -110, -15, 17, -119, 95, -89, -15, 126, -89, -16, 42, 120, 15, -49, 105, 126, -88, -16, 34, -119, 94, -89, -9, ByteCompanionObject.MAX_VALUE, -104, -16, 42, 120, 15, -55, -103, 20, -54, -100, 121, -24}, new byte[]{73, -82, 26, 33, -87, 88, -33, 119}));
                    l0Var.e.setOnTouchListener(new p0(this, l0Var));
                    l0Var.addView(l0Var.e, new FrameLayout$LayoutParams(l(44), l(44), 85));
                }
                T(l0Var);
                e(l0Var);
                l0Var.setOnLongClickListener(new d0(this, 1));
                l0Var.setOnTouchListener(new k0(this));
                l0Var.setOnClickListener(new a0(this, 1));
                o0Var.addView(l0Var);
            } else {
                l0Var.f5123b = j0Var;
                l0Var.setTag(j0Var);
                T(l0Var);
            }
            e(l0Var);
            r9 = 1;
        }
        requestLayout();
        o0Var.post(new c0(this, 0));
        U();
        this.f5171f.bringToFront();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void B(m0 m0Var) {
        o0 o0Var = this.e;
        if (o0Var.isInLayout()) {
            o0Var.post(new z(this, m0Var, 1));
            return;
        }
        for (int i9 = 0; i9 < o0Var.getChildCount(); i9++) {
            View childAt = o0Var.getChildAt(i9);
            Object tag = childAt.getTag();
            if ((tag instanceof j0) && ((j0) tag).f5100b == m0Var) {
                T((l0) childAt);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void C() {
        int i9 = 0;
        while (true) {
            o0 o0Var = this.e;
            if (i9 >= o0Var.getChildCount()) {
                return;
            }
            View childAt = o0Var.getChildAt(i9);
            if (childAt instanceof l0) {
                l0 l0Var = (l0) childAt;
                if (r(l0Var.f5123b.f5100b)) {
                    T(l0Var);
                }
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void D() {
        if (this.f5183s) {
            y();
        }
        F();
        this.E = true;
        for (int i9 = 0; i9 < this.e.getChildCount(); i9++) {
            b bVar = ((l0) this.e.getChildAt(i9)).f5124f;
            if (bVar != null) {
                bVar.c();
            }
        }
        this.f5176k.shutdownNow();
        this.f5177l.shutdownNow();
        this.f5178m.shutdownNow();
        this.r.removeCallbacksAndMessages(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void E(boolean z8) {
        if (this.E || this.B || this.f5177l.isShutdown()) {
            return;
        }
        if (z8 || !N.equals(h0.b.o().loadString(M, O))) {
            this.B = true;
            this.f5177l.execute(new s1(this, z8, Math.max(1280, getResources().getDisplayMetrics().widthPixels), Math.max(720, getResources().getDisplayMetrics().heightPixels), 2));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void F() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f5182q;
        int size = arrayList2.size();
        int i9 = 0;
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            j0 j0Var = (j0) obj;
            if (j0Var.f5100b == m0.f5141h) {
                arrayList.add(j0Var.f5099a);
            }
        }
        LauncherWindowService launcherWindowService = LauncherWindowService.e;
        if (launcherWindowService == null) {
            return;
        }
        launcherWindowService.d.clear();
        LauncherWindowService.e.d.addAll(arrayList);
        ArrayList arrayList3 = new ArrayList(LauncherWindowService.e.f909b.keySet());
        int size2 = arrayList3.size();
        while (i9 < size2) {
            Object obj2 = arrayList3.get(i9);
            i9++;
            String str = (String) obj2;
            if (!arrayList.contains(str)) {
                LauncherWindowService launcherWindowService2 = LauncherWindowService.e;
                HashMap map = launcherWindowService2.f909b;
                VirtualDisplay virtualDisplay = (VirtualDisplay) map.get(str);
                if (virtualDisplay != null) {
                    launcherWindowService2.c.add(str);
                    VirtualDisplay virtualDisplay2 = (VirtualDisplay) map.get(str);
                    if (virtualDisplay2 != null) {
                        virtualDisplay2.setSurface(null);
                    }
                    x xVarA = x.a(launcherWindowService2);
                    xVarA.d.execute(new b1.n(xVarA, e0.m.h(new byte[]{-22, -105, -90, 110, -111, -31}, new byte[]{-87, -37, -23, Base64.padSymbol, -44, -63, -116, 100}) + virtualDisplay.getDisplay().getDisplayId(), new androidx.transition.a(launcherWindowService2, str, virtualDisplay, 6), 12));
                }
            }
        }
        if (arrayList.isEmpty() && LauncherWindowService.e.f909b.isEmpty()) {
            LauncherWindowService.e.stopSelf();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final GradientDrawable G(int i9, int i10, int i11) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i9);
        gradientDrawable.setCornerRadius(l(i10));
        gradientDrawable.setStroke(l(1), i11);
        return gradientDrawable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void H(float f8) {
        m0 m0Var;
        j0 j0VarO = o(this.f5185v);
        if (j0VarO == null || (m0Var = j0VarO.f5100b) == m0.e) {
            return;
        }
        float[] fArrI = i(m0Var);
        float f9 = fArrI[0];
        float f10 = f9 * 0.55f;
        float f11 = fArrI[1] * 0.55f;
        float fMin = Math.min(0.92f, f9 * 2.35f);
        float fMin2 = Math.min(0.86f, fArrI[1] * 2.35f);
        float fG = g(j0VarO.e * f8, f10, fMin);
        float fG2 = g(j0VarO.f5101f * f8, f11, fMin2);
        if (Math.abs(fG - j0VarO.e) >= 1.0E-4f || Math.abs(fG2 - j0VarO.f5101f) >= 1.0E-4f) {
            float f12 = (j0VarO.e / 2.0f) + j0VarO.c;
            float f13 = (j0VarO.f5101f / 2.0f) + j0VarO.d;
            j0VarO.e = fG;
            j0VarO.f5101f = fG2;
            j0VarO.c = g(f12 - (fG / 2.0f), 0.0f, 1.0f - fG);
            j0VarO.d = g(f13 - (fG2 / 2.0f), 0.0f, 1.0f - fG2);
            if (this.t) {
                O(j0VarO);
            }
            y();
            A();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void I(m0 m0Var) {
        if (m0Var == m0.c) {
            if (this.f5188z) {
                return;
            } else {
                this.f5188z = true;
            }
        } else if (m0Var == m0.d) {
            if (this.A) {
                return;
            } else {
                this.A = true;
            }
        }
        this.e.post(new z(this, m0Var, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int J(m0 m0Var) {
        switch (m0Var.ordinal()) {
            case 7:
                return this.F;
            case 8:
                return this.G;
            case 9:
                return this.H;
            case 10:
                return this.I;
            default:
                return 1;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final TextView K(String str) {
        TextView textViewP = P(str, 12, -10040851);
        textViewP.setTypeface(Typeface.DEFAULT_BOLD);
        textViewP.setLetterSpacing(0.08f);
        textViewP.setPadding(l(2), l(8), 0, l(8));
        return textViewP;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String L() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(e0.m.h(new byte[]{-54, -124, 110, -120, -12, -119, -124}, new byte[]{-68, -31, 28, -5, -99, -26, -22, -13}), 4);
            jSONObject.put(e0.m.h(new byte[]{52, -100, -117, 85}, new byte[]{71, -14, -22, 37, 18, -25, 107, -60}), this.t);
            JSONArray jSONArray = new JSONArray();
            ArrayList arrayList = this.f5182q;
            int size = arrayList.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj = arrayList.get(i9);
                i9++;
                jSONArray.put(((j0) obj).b());
            }
            jSONObject.put(e0.m.h(new byte[]{122, 97, -99, 32, -88}, new byte[]{19, 21, -8, 77, -37, 107, -73, 124}), jSONArray);
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "";
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void M(ArrayList arrayList, boolean z8, j0.e eVar) {
        String strI;
        if (this.f5183s && isAttachedToWindow()) {
            if (arrayList.isEmpty()) {
                y5.k.x(getContext(), e0.m.h(new byte[]{-105, 67, -27, -59, -55, 13, 9, -3, -105, 92, -27, -64, 57, 101, 108, -84, -14, 50, -116, -85, -104, 100, 90, -84, -11, 50, -115, -86, -96, -107, 9, -3, -105, 87, -27, -61, -56, 50, 8, -52, -106, 99, 21, -86, -92, 101, 109, -84, -13, 50, -117, -85, -104, 100, 90, -83, -60, 50, -118, -86, -84, 101, 101}, new byte[]{71, -30, 53, 122, 25, -75, -40, 124}));
                return;
            }
            LinearLayout linearLayoutJ = j();
            TextView textViewP = P(z8 ? e0.m.h(new byte[]{-98, 48, 47, 1, -104, 29, 111, -29, -98, 21, 47, 15, -104, 19, 110, -47, -98, 31, 46, 54, -103, 40, 111, -19, -97, 35, -33, 100, -3, 77, 10, -122, -9, 126, 126, 101, -53, 77, 13, -122, -10, ByteCompanionObject.MAX_VALUE, 70}, new byte[]{78, -81, -1, -76, 73, -99, -65, 86}) : e0.m.h(new byte[]{-120, -40, -79, -48, -14, -86, 50, 122, -119, -50, -79, -41, -14, -85, 50, 116, 120, -100, -39, 69, -14, -84, 50, 123, -120, -12, -79, -34, -14, -83, 51, 77, -120, -7, -79, -40, -14, -85, 50, 116}, new byte[]{88, 76, 97, 101, 34, 19, -29, -5}), 25, -1);
            textViewP.setTypeface(Typeface.DEFAULT_BOLD);
            textViewP.setMaxLines(1);
            linearLayoutJ.addView(textViewP);
            if (!z8) {
                strI = e0.m.h(new byte[]{-9, -66, -4, 125, 75, -22, -33, -20, -9, -101, -3, 79, 75, -23, 47, ByteCompanionObject.MIN_VALUE, -102, -13, -100, -19, 74, -47, -33, -21, -9, -106, -4, 113, 75, -23, -33, -19, -10, -95, 12, 47, 27, -56, 47, ByteCompanionObject.MIN_VALUE, -99, -13, -111, 29, 37, -116, -80, ByteCompanionObject.MIN_VALUE, -99, -13, -100, -19, 74, -35, -34, -48, -9, -109, -4, 122, 74, -33, 47, ByteCompanionObject.MIN_VALUE, -104, -13, -110, 28, 20, -116, -67, ByteCompanionObject.MIN_VALUE, -97, -14, -82, 28, 26, -115, ByteCompanionObject.MIN_VALUE, 112, -9, -98, -4, 125, -69, -115, -113, ByteCompanionObject.MIN_VALUE, -105, -13, -99, 29, 37, -115, -120, ByteCompanionObject.MIN_VALUE, -110, -13, -112, -19, 74, -35, -34, -46, -9, -99, -4, 118, 75, -23}, new byte[]{39, 35, 44, -51, -101, 92, 15, 80});
            } else if (eVar == null) {
                strI = e0.m.h(new byte[]{-24, 126, -64, 37, 62, ByteCompanionObject.MAX_VALUE, -92, 97, -23, 108, -63, 22, 63, 76, -92, 97, 24, 60, -91, 126, 91, 30, -51, 5, -71, Base64.padSymbol, -109, 126, 92, 30, -52, 4, -115, -52, -63, 26, 62, 117, -91, 91, 24, 60, -82, 126, 91, 31, -12, 4, -118, 60, -81, 126, 93, 30, -54, -12, -24, 81, -63, 30, 62, 120, -92, 100, -23, 110, -63, 22, 63, 65}, new byte[]{56, -20, 17, -82, -18, -50, 116, -44});
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(e0.m.h(new byte[]{-82, 126, -83, 87, 119, 12, 42, 77, -82, 95, -83, 87, -100, -84}, new byte[]{126, -31, 125, -30, -90, -116, -6, -1}));
                sb.append(b(eVar));
                strI = com.google.protobuf.q.i(new byte[]{112, -80, -89, 9, 56, -79, -99, 28, -114, 37, -90, 43, 57, -120, 109, 115, -20, 65, -4, 123, 89, -44, -8, 114, -34, 64, -49, 122, 106, -44, -8, -125, -114, 36, -89, 30, 56, -67, -100, 34, -113, 18, -89, 25, 56, -68, -99, 22, 126, 64, -61, 123, 83, -43, -62, -125, -113, 17, -89, 16, 56, -79, -99, 23, -113, 19, -90, 37, 57, -115, -99, 22, -114, 35, -89, 21, -56, -44, -16, 115, -18, 64, -63, 123, 88, -43, -49, 115, -26, 65, -8}, new byte[]{94, -112, 119, -85, -24, 4, 77, -93}, sb);
            }
            linearLayoutJ.addView(k(strI));
            EditText editText = new EditText(getContext());
            editText.setSingleLine(true);
            editText.setTextSize(16.0f);
            editText.setTextColor(-1);
            editText.setHintTextColor(-8218712);
            editText.setHint(e0.m.h(new byte[]{28, -54, 78, 101, -62, -67, -47, -61, 28, -17, -66, 11, -83, -43, -66, 98, 28, -24, 78, 107, -62, -78, -48, -16, 28, -27, 78, 102, -62, -67, -47, -52}, new byte[]{-52, 85, -98, -37, 18, 5, 0, 66}));
            editText.setPadding(l(18), 0, l(18), 0);
            editText.setBackground(G(-15721692, 15, -13547174));
            LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, l(54));
            linearLayout$LayoutParams.topMargin = l(14);
            linearLayout$LayoutParams.bottomMargin = l(12);
            linearLayoutJ.addView(editText, linearLayout$LayoutParams);
            ListView listView = new ListView(getContext());
            listView.setDivider(null);
            listView.setDividerHeight(0);
            listView.setCacheColorHint(0);
            listView.setBackgroundColor(0);
            i0 i0Var = new i0(this, arrayList);
            if (i0Var.c.size() == 0) {
                y5.k.x(getContext(), e0.m.h(new byte[]{84, 10, -49, 84, -4, -120, -79, 114, 48, 71, -95, 48, -84, -37, 19, 115, 7, 71, -96, 49, -112, -37, 26, 115, 1, -73, -49, 85, -3, -79, 64, 45, -92, 71, -88, 49, -99, -38, 46, 115, 7, 70, -98, 49, -105, -38, 33, -126, 84, 35, -49, 84, -3, -77, 64, 35, 85, 21, -49, 83, -3, -78, 65, 27}, new byte[]{-124, -105, 31, -31, 45, 10, -111, -94}));
                return;
            }
            listView.setAdapter((ListAdapter) i0Var);
            linearLayoutJ.addView(listView, new LinearLayout$LayoutParams(-1, 0, 1.0f));
            Button buttonR = R(e0.m.h(new byte[]{121, -24, 0, -112, 68, 117, -76, 126, 120, -12, 1, -94, 69, 67}, new byte[]{-87, ByteCompanionObject.MAX_VALUE, -48, 32, -108, -49, 101, -2}), false);
            buttonR.setTextSize(16.0f);
            LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(l(170), l(50));
            linearLayout$LayoutParams2.gravity = 5;
            linearLayout$LayoutParams2.topMargin = l(12);
            linearLayoutJ.addView(buttonR, linearLayout$LayoutParams2);
            AlertDialog alertDialogCreate = new AlertDialog$Builder(getContext()).setView(linearLayoutJ).create();
            listView.setOnItemClickListener(new e0(this, i0Var, alertDialogCreate, z8, eVar, arrayList));
            editText.addTextChangedListener(new h0(i0Var, 1));
            buttonR.setOnClickListener(new r0.d(alertDialogCreate, 3));
            N(alertDialogCreate, 820);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void N(AlertDialog alertDialog, int i9) {
        alertDialog.setCanceledOnTouchOutside(true);
        alertDialog.show();
        Window window = alertDialog.getWindow();
        if (window == null) {
            return;
        }
        window.setBackgroundDrawableResource(R$color.transparent);
        WindowManager$LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = 0.72f;
        window.setAttributes(attributes);
        window.addFlags(2);
        window.setLayout(Math.min(l(i9), getResources().getDisplayMetrics().widthPixels - l(40)), Math.min(l(650), getResources().getDisplayMetrics().heightPixels - l(48)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final TextView P(String str, int i9, int i10) {
        TextView textView = new TextView(getContext());
        textView.setText(str);
        textView.setTextSize(i9);
        textView.setTextColor(i10);
        return textView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final LinearLayout Q() {
        return z(e0.m.h(new byte[]{51, -61, 68}, new byte[]{-47, 68, -64, -67, 41, -58, 16, -56}), -9382222, e0.m.h(new byte[]{-113, 19, Base64.padSymbol, -39, 12, -116, -24, -42, -113, 54, Base64.padSymbol, -41, 12, -126, -23, -28, -113, 60, 60, -18, 13, -71, -24, -40, -114, 0, -51, -68, 105, -36, -118, -78, -36, 93, 104, 76, 13, -72, -24, -42, -113, 53, 60, -19, 12, -114, -24, -47, -113, 52, Base64.padSymbol, -43}, new byte[]{95, -116, -19, 108, -35, 12, 56, 99}), e0.m.h(new byte[]{ByteCompanionObject.MAX_VALUE, 42, -22, -126, 3, 1, -87, 77, -113, 100, -121, -26, 99, 108, -49, 35, 31, 101, -72, -26, 107, 108, -52, -45, ByteCompanionObject.MAX_VALUE, 3, -22, -122, 3, 3, -88, 112, 126, 53, -22, -116, 3, 12, -87, 70, 126, 54, 26, -26, 108, 108, -52, 34, 47, 100, -120, -26, 109, 108, -52, -45, ByteCompanionObject.MAX_VALUE, 0, -22, -125, 3, 5, -88, 114, 126, 54, -22, -124, 3, 4, -87, 70, -125, -108, -21, -73, 3, 7, -87, 70, ByteCompanionObject.MAX_VALUE, 0, -21, -75, 2, 50, -88, 122, ByteCompanionObject.MAX_VALUE, 1, -22, -125, -13, 94, -7, 103, -113, 100, -120, -25, 81, 108, -57, 34, 47, 100, -124, -26, 102}, new byte[]{-81, -76, 58, 54, -45, -68, 121, -13}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Button R(String str, boolean z8) {
        Button button = new Button(getContext());
        button.setText(str);
        button.setTextSize(14.0f);
        button.setTextColor(-1);
        button.setAllCaps(false);
        button.setMinHeight(0);
        button.setMinimumHeight(0);
        button.setPadding(l(8), 0, l(8), 0);
        button.setBackground(G(z8 ? -14446919 : -14273213, 12, z8 ? -10959635 : -12889500));
        return button;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final LinearLayout$LayoutParams S(int i9) {
        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(l(i9), l(46));
        linearLayout$LayoutParams.setMargins(l(4), 0, l(4), 0);
        return linearLayout$LayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void T(l0 l0Var) {
        String strJ;
        m0 m0Var = l0Var.f5123b.f5100b;
        if (m0Var == m0.c) {
            l0Var.f5127i.setText(this.w);
            int i9 = this.f5186x;
            ImageView imageView = l0Var.f5126h;
            if (i9 == 0) {
                imageView.setImageDrawable(null);
                return;
            }
            try {
                imageView.setImageResource(i9);
                return;
            } catch (RuntimeException unused) {
                l0Var.f5126h.setImageDrawable(null);
                return;
            }
        }
        if (m0Var == m0.d) {
            s0.a aVar = this.f5187y;
            String strH = (aVar == null || TextUtils.isEmpty(aVar.f5042b)) ? e0.m.h(new byte[]{-48, 104, 79, -107, 120, 20, 52, -78, -48, 78, 78, -90, -120, 115, 88, -23, -75, -44, 78, -82, 120, 16, 52, -71, -48, 68, 78, -93, 121, 33}, new byte[]{0, -12, -98, 22, -88, -93, -27, 57}) : this.f5187y.f5042b;
            s0.a aVar2 = this.f5187y;
            String strH2 = (aVar2 == null || TextUtils.isEmpty(aVar2.c)) ? e0.m.h(new byte[]{42, 101, -20, -120, -9, -52, 94, -118, 43, 115, -19, -70, -9, -53, 94, -117, 42, 71, 28, -24, -104, -94, 15, -39, 68, 34, -124, -24, -108, -94, 15, -40, 113, 34, -114, -24, -105, -94, 13, -39, 79, 34, -121, -23, -85}, new byte[]{-6, -14, 60, 56, 39, 115, -113, 9}) : this.f5187y.c;
            l0Var.f5129k.setText(strH);
            l0Var.f5130l.setText(strH2);
            s0.a aVar3 = this.f5187y;
            if (aVar3 == null || aVar3.e == null) {
                l0Var.f5128j.setImageResource(R$drawable.ic_media_play);
                l0Var.f5128j.setPadding(l(18), l(18), l(18), l(18));
                return;
            } else {
                l0Var.f5128j.setPadding(0, 0, 0, 0);
                l0Var.f5128j.setImageBitmap(this.f5187y.e);
                return;
            }
        }
        boolean zR = r(m0Var);
        j0 j0Var = l0Var.f5123b;
        if (!zR) {
            if (j0Var.f5100b == m0.f5139f) {
                j0.e eVarB = j0.f.b(getContext(), j0Var.f5104i ? j0Var.f5103h : j0Var.f5102g);
                Drawable drawable = eVarB.f2878j;
                ImageView imageView2 = l0Var.f5132n;
                if (drawable != null) {
                    imageView2.setImageDrawable(drawable);
                } else {
                    imageView2.setImageResource(R$drawable.ic_menu_rotate);
                }
                l0Var.f5133o.setText(b(eVarB));
                l0Var.f5134p.setText(j0Var.f5104i ? e0.m.h(new byte[]{9, 71, 25, 9, -75}, new byte[]{59, 103, 54, 41, -121, -127, -18, 51}) : e0.m.h(new byte[]{-47, -99, ByteCompanionObject.MIN_VALUE, 108, 71}, new byte[]{-32, -67, -81, 76, 117, -38, 39, -54}));
                return;
            }
            return;
        }
        int iMax = Math.max(0, J(j0Var.f5100b) - 1);
        TextView textView = l0Var.f5131m;
        if (iMax == 0) {
            strJ = e0.m.h(new byte[]{-91, 31, 52, -58, 67, -42, -103, 22}, new byte[]{117, -115, -27, 77, -109, 108, 73, -83});
        } else {
            strJ = com.google.protobuf.q.j(new byte[]{104, -67, 104, -98, 34, -108, -36, 94, 104, -85, 105, -93, 35, -90, 44}, new byte[]{-72, 30, -71, 30, -14, 42, 12, -20}, new StringBuilder(), iMax);
        }
        textView.setText(strJ);
        int i10 = q(l0Var.f5123b.f5100b) ? -35235 : -11155473;
        int i11 = 0;
        while (true) {
            View[] viewArr = l0Var.f5135q;
            if (i11 >= viewArr.length) {
                return;
            }
            boolean z8 = i11 < iMax;
            viewArr[i11].setBackground(G(z8 ? i10 : -14272444, 5, z8 ? i10 : -12757658));
            i11++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void U() {
        j0 j0VarO = o(this.f5185v);
        boolean z8 = false;
        this.f5175j.setEnabled(j0VarO != null);
        if (j0VarO != null && j0VarO.f5100b != m0.e) {
            z8 = true;
        }
        this.f5173h.setEnabled(z8);
        this.f5174i.setEnabled(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final LinearLayout V() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        return linearLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final LinearLayout W(int i9, String str, String str2, String str3, boolean z8) {
        LinearLayout linearLayoutV = V();
        linearLayoutV.setGravity(1);
        linearLayoutV.setPadding(l(14), l(12), l(14), l(12));
        linearLayoutV.setBackground(G(-15194575, 18, z8 ? -11751549 : -13086364));
        linearLayoutV.setClickable(true);
        linearLayoutV.setFocusable(true);
        TextView textViewP = P(str, str.indexOf(58) >= 0 ? 28 : 34, i9);
        Typeface typeface = Typeface.DEFAULT_BOLD;
        textViewP.setTypeface(typeface);
        textViewP.setGravity(17);
        textViewP.setBackground(G(-15919329, 16, i9));
        linearLayoutV.addView(textViewP, new LinearLayout$LayoutParams(l(92), l(64)));
        TextView textViewP2 = P(str2, 17, -1);
        textViewP2.setTypeface(typeface);
        textViewP2.setGravity(17);
        textViewP2.setMaxLines(1);
        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -2);
        linearLayout$LayoutParams.topMargin = l(8);
        linearLayoutV.addView(textViewP2, linearLayout$LayoutParams);
        if (z8) {
            str3 = e0.m.h(new byte[]{-18, -72, 75, -27, -59, -80, 0, 53, -125, -53, 43, 115, -60, -120, -16, 95, -17, -101, 75, -29, -59, -72, -16, 80}, new byte[]{62, 27, -101, 83, 21, 5, 32, -27});
        }
        TextView textViewP3 = P(str3, 12, z8 ? -9250909 : -6376767);
        textViewP3.setGravity(17);
        textViewP3.setMaxLines(2);
        textViewP3.setEllipsize(TextUtils$TruncateAt.END);
        linearLayoutV.addView(textViewP3, new LinearLayout$LayoutParams(-1, -2));
        return linearLayoutV;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final LinearLayout a() {
        return z(e0.m.h(new byte[]{29, 121, -24}, new byte[]{-1, -17, 78, -69, 111, 121, -71, 70}), -10104077, e0.m.h(new byte[]{-108, -12, 14, 60, -56, -2, ByteCompanionObject.MAX_VALUE, -84, -107, -30, 14, 59, -56, -1, ByteCompanionObject.MAX_VALUE, -94, 100, -80, 102, -87, -56, -8, ByteCompanionObject.MAX_VALUE, -83, -108, -40, 14, 50, -56, -7, 126, -101, -108, -43, 14, 52, -56, -1, ByteCompanionObject.MAX_VALUE, -94}, new byte[]{68, 96, -34, -119, 24, 71, -82, 45}), e0.m.h(new byte[]{57, -38, 51, 43, 100, 103, -51, -46, 57, -5, 50, 29, 100, 106, -51, -44, 57, -3, 51, 36, -104, -1, -52, -23, 57, -11, 50, 28, 100, 107, -51, -36, 57, -2, 50, 30, 100, 98, -51, -47, 57, -16, -62, 122, 57, 15, -89, -72, 105, -107, 82, 123, 9, 15, -83, 69, -55, -108, 99, 123, 12, 14, -100, -72, 107, -107, 87, 123, 8, 15, -96, -72, 98, -107, 87, -117, 100, 103, Base64.padSymbol, -71, 86, -107, 92, 123, 15, 14, -111, -71, 94, -107, 92, 123, 6, 15, -83, -72, 107, -107, 87, 123, 15, 14, -111, -72, 104, -107, 88, 123, 12, 15, -88, 73, 57, -1, 50, 21, 100, 99, -51, -39, 57, -8, 50, 31, 101, 84}, new byte[]{-23, 69, -30, -85, -76, -33, 29, 105}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        m0 m0Var = m0.e;
        j0 j0Var = new j0(m0Var, 0.43f, 0.72f, 0.1f, 0.14f, e0.m.h(new byte[]{75, -84, -119, -73, 3, -59, 97, 75, 113, -111, -88, -101, 107, -61, 107, 68, 126, -110, -93, -105, 124, -39, 97}, new byte[]{46, -62, -4, -38, 57, -105, 52, 5}));
        ArrayList arrayList = this.f5182q;
        arrayList.add(j0Var);
        arrayList.add(new j0(m0Var, 0.535f, 0.72f, 0.1f, 0.14f, e0.m.h(new byte[]{-16, -83, -12, 23, -13, -97, 12, 88, -48, -115, -43, 37, -99, -116, 26, 80, -54, -114, -64, 52, -120, -118, 12, 73}, new byte[]{-107, -61, -127, 122, -55, -51, 73, 27})));
        arrayList.add(new j0(m0Var, 0.64f, 0.72f, 0.1f, 0.14f, e0.m.h(new byte[]{76, -39, -2, -117, 75, -27, 126, 102, 96, -29, -44, -76, 36, -8}, new byte[]{41, -73, -117, -26, 113, -74, 46, 42})));
        arrayList.add(new j0(m0Var, 0.745f, 0.72f, 0.1f, 0.14f, e0.m.h(new byte[]{-38, -60, 74, -38, 14, -5, 22, -126, -10, -21, 96, -25, 120, -9, 10, -103, -17, -21, 106, -28, 113}, new byte[]{-65, -86, 63, -73, 52, -74, 83, -58})));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(m0 m0Var) {
        ArrayList arrayList = this.f5182q;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            j0 j0Var = (j0) obj;
            if (j0Var.f5100b == m0Var) {
                this.f5185v = j0Var.f5099a;
                A();
                y5.k.x(getContext(), e0.m.h(new byte[]{120, -4, 66, 3, -25, -16, -24, -17, -120, -127, 33, 81, -113, -98, -115, -67, 30, -127, 38, 80, -75, 110, -24, -18, 120, -25, 67, 52, 23, -98, -115, -67, 22, -127, 34, 81, -121, -98, -117, -67, 19, -127, 38, 81, -118}, new byte[]{-88, 81, -109, -127, 55, 78, 57, 109}));
                return;
            }
        }
        float[] fArrI = i(m0Var);
        float[] fArrN = n(fArrI[0], fArrI[1]);
        j0 j0Var2 = new j0(m0Var, fArrN[0], fArrN[1], fArrI[0], fArrI[1], null);
        arrayList.add(j0Var2);
        this.f5185v = j0Var2.f5099a;
        y();
        A();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(l0 l0Var) {
        j0 j0Var = l0Var.f5123b;
        boolean z8 = this.f5183s && j0Var.f5099a.equals(this.f5185v);
        l0Var.setElevation(l(this.f5183s ? 16 : 7));
        l0Var.setBackground(G(z8 ? -232112560 : -602463442, j0Var.f5100b == m0.e ? 18 : 24, z8 ? -11222036 : -13547946));
        l0Var.d.setVisibility(this.f5183s ? 0 : 8);
        boolean z9 = this.f5183s;
        l0Var.f5125g = z9;
        b bVar = l0Var.f5124f;
        if (bVar != null) {
            bVar.f5059l = z9;
            if (z9 && bVar.f5060m && bVar.f5053f.f5228f) {
                bVar.f(e0.m.h(new byte[]{117, -10, -53, 40, 92, -103, 38, 35, -123, -72, -84, 66, 60, -12, 73, 76, 38, -71, -102, 67, 14, -12, 78, 76, 39, -71, -102, 67, 3, 4, 38, 34, 117, -42, -54, 19, 92, -97, 38, 40, -123, -71, -102, 66, 50, -11, 115, 76, 37, -72, -85, 66, 49, -12, 67, 77, 24, -72, -93, 67, 3}, new byte[]{-91, 104, 27, -110, -116, 36, -10, -99}));
            }
            if (!bVar.f5059l) {
                bVar.d();
            }
        }
        TextView textView = l0Var.e;
        if (textView != null) {
            textView.setVisibility(this.f5183s ? 0 : 8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final LinearLayout$LayoutParams f() {
        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(0, l(158), 1.0f);
        linearLayout$LayoutParams.setMargins(l(5), l(4), l(5), l(4));
        return linearLayout$LayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean h(m0 m0Var) {
        ArrayList arrayList = this.f5182q;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            if (((j0) obj).f5100b == m0Var) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final LinearLayout j() {
        LinearLayout linearLayoutV = V();
        linearLayoutV.setPadding(l(24), l(22), l(24), l(20));
        linearLayoutV.setBackground(G(-15721949, 24, -13217692));
        return linearLayoutV;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final TextView k(String str) {
        TextView textViewP = P(str, 14, -6376767);
        textViewP.setPadding(0, l(4), 0, l(12));
        textViewP.setMaxLines(2);
        return textViewP;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int l(int i9) {
        return Math.round(i9 * getResources().getDisplayMetrics().density);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m() {
        if (this.f5183s) {
            return;
        }
        this.f5183s = true;
        this.f5184u = L();
        y();
        this.f5185v = null;
        LinearLayout linearLayout = this.f5171f;
        linearLayout.setVisibility(0);
        linearLayout.bringToFront();
        A();
        WebLauncherActivity webLauncherActivity = (WebLauncherActivity) this.f5170b.c;
        webLauncherActivity.f917j = true;
        webLauncherActivity.t();
        y5.k.x(getContext(), e0.m.h(new byte[]{-19, 54, 123, -69, -64, 18, -52, 115, -20, 36, 122, -120, -63, 33, -52, 115, 29, 116, 24, -32, -88, 115, -88, 22, -117, 116, 31, -31, -110, -103, 60, 22, -120, 116, 25, -32, -82, -125, -52, 122, -19, 26, 122, -122, -64, 30, -52, 120, 29, 116, 21, -32, -91, 114, -100, 22, -120, 116, 22, -32, -91, 114, -99, 23, -65, 116, 18, -31, -110, 114, -112, -22, 29, 117, 41, -32, -84, 115, -87, 22, ByteCompanionObject.MIN_VALUE, 117, 38, -31, -104, 115, -92, 23, -65, 117, 38, 16, -64, 27, -52, 125, -19, 28, -118, -31, -109, 115, -82, 22, -120, 116, 17, -32, -88, 114, -101, 22, -123, 117, 40, -31, -100, -115}, new byte[]{Base64.padSymbol, -92, -86, 48, 16, -93, 28, -58}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:15:0x002a  */
    public final float[] n(float f8, float f9) {
        for (int i9 = this.f5183s ? 2 : 0; i9 < 14; i9++) {
            for (int i10 = 0; i10 < 24; i10++) {
                float f10 = i10 / 24.0f;
                float f11 = i9 / 14.0f;
                float f12 = f10 + f8;
                if (f12 <= 1.0f) {
                    float f13 = f11 + f9;
                    if (f13 <= 1.0f) {
                        ArrayList arrayList = this.f5182q;
                        int size = arrayList.size();
                        int i11 = 0;
                        while (i11 < size) {
                            Object obj = arrayList.get(i11);
                            i11++;
                            j0 j0Var = (j0) obj;
                            float f14 = j0Var.c;
                            if (f10 < j0Var.e + f14 && f12 > f14) {
                                float f15 = j0Var.d;
                                if (f11 >= j0Var.f5101f + f15 || f13 <= f15) {
                                }
                            }
                        }
                        return new float[]{f10, f11};
                    }
                }
            }
        }
        return new float[]{Math.max(0.0f, (1.0f - f8) / 2.0f), Math.max(0.0f, (1.0f - f9) / 2.0f)};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final j0 o(String str) {
        ArrayList arrayList = this.f5182q;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            j0 j0Var = (j0) obj;
            if (j0Var.f5099a.equals(str)) {
                return j0Var;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Handler handler = this.r;
        f0 f0Var = this.f5181p;
        handler.removeCallbacks(f0Var);
        handler.post(f0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.r.removeCallbacks(this.f5181p);
        super.onDetachedFromWindow();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        super.onLayout(z8, i9, i10, i11, i12);
        int i13 = i11 - i9;
        int i14 = i12 - i10;
        this.c.layout(0, 0, i13, i14);
        this.d.layout(0, 0, i13, i14);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        this.e.post(new c0(this, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int[] p(m0 m0Var, int i9, int i10, float f8) {
        if (m0Var == m0.f5141h) {
            return new int[]{i9, i10};
        }
        if (m0Var == m0.e) {
            return new int[]{i9, Math.min(i10, Math.max(l(64), Math.round(i9 / f8)))};
        }
        int iMin = Math.min(i9, Math.max(1, Math.round(i10 * f8)));
        return new int[]{iMin, Math.min(i10, Math.max(1, Math.round(iMin / f8)))};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s() {
        float f8;
        q0 q0Var = this;
        o0 o0Var = q0Var.e;
        int width = o0Var.getWidth();
        int height = o0Var.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        int i9 = 0;
        while (i9 < o0Var.getChildCount()) {
            View childAt = o0Var.getChildAt(i9);
            j0 j0Var = (j0) childAt.getTag();
            int iL = q0Var.l(72);
            float f9 = width;
            float f10 = j0Var.e;
            m0 m0Var = j0Var.f5100b;
            int iMax = Math.max(iL, Math.round(f10 * f9));
            float f11 = height;
            int iMax2 = Math.max(q0Var.l(64), Math.round(j0Var.f5101f * f11));
            if (m0Var == m0.d) {
                f8 = 3.6f;
            } else if (r(m0Var)) {
                f8 = 1.45f;
            } else {
                f8 = (m0Var == m0.e || m0Var == m0.f5139f || m0Var == m0.f5140g) ? 1.25f : 2.1f;
            }
            int[] iArrP = q0Var.p(m0Var, iMax, iMax2, f8);
            int i10 = iArrP[0];
            int i11 = iArrP[1];
            childAt.setLayoutParams(new FrameLayout$LayoutParams(i10, i11));
            View view = ((l0) childAt).c;
            o0 o0Var2 = o0Var;
            if (view != null) {
                if (m0Var == m0.f5141h) {
                    view.setLayoutParams(new FrameLayout$LayoutParams(i10, i11));
                } else {
                    float[] fArrI = i(m0Var);
                    int[] iArrP2 = q0Var.p(m0Var, Math.max(q0Var.l(72), Math.round(fArrI[0] * f9)), Math.max(q0Var.l(64), Math.round(fArrI[1] * f11)), f8);
                    int i12 = iArrP2[0];
                    int i13 = iArrP2[1];
                    float f12 = i10;
                    float f13 = i11;
                    float fG = g(Math.min(f12 / Math.max(1, i12), f13 / Math.max(1, i13)), 0.55f, 2.35f);
                    view.setLayoutParams(new FrameLayout$LayoutParams(i12, i13));
                    view.setPivotX(0.0f);
                    view.setPivotY(0.0f);
                    view.setScaleX(fG);
                    view.setScaleY(fG);
                    view.setTranslationX((f12 - (i12 * fG)) / 2.0f);
                    view.setTranslationY((f13 - (i13 * fG)) / 2.0f);
                }
            }
            float f14 = ((iMax - i10) / 2.0f) + (j0Var.c * f9);
            float f15 = ((iMax2 - i11) / 2.0f) + (j0Var.d * f11);
            childAt.setX(g(f14, 0.0f, width - i10));
            childAt.setY(g(f15, 0.0f, height - i11));
            i9++;
            q0Var = this;
            height = height;
            o0Var = o0Var2;
            width = width;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t(boolean z8) {
        y5.k.x(getContext(), e0.m.h(new byte[]{-33, 43, 47, -92, 36, -125, 100, 65, -34, 63, 47, -94, 36, ByteCompanionObject.MIN_VALUE, 100, 79, 47, 108, 75, -60, 65, -32, 12, 16, -114, 109, 125, -60, 70, -32, 13, 16, ByteCompanionObject.MIN_VALUE, 94, ByteCompanionObject.MAX_VALUE, -78}, new byte[]{15, -68, -1, 20, -12, 48, -75, -63}));
        this.f5176k.execute(new c7.e(this, z8, 8));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u(String str) {
        int iOptInt;
        Object obj;
        ArrayList arrayList = this.f5182q;
        arrayList.clear();
        this.t = true;
        if (TextUtils.isEmpty(str)) {
            iOptInt = 0;
        } else {
            try {
                JSONObject jSONObject = new JSONObject(str);
                iOptInt = jSONObject.optInt(e0.m.h(new byte[]{-11, 85, -94, 114, -44, 38, 3}, new byte[]{-125, 48, -48, 1, -67, 73, 109, -96}), 1);
                try {
                    this.t = jSONObject.optBoolean(e0.m.h(new byte[]{1, 32, 46, -11}, new byte[]{114, 78, 79, -123, -94, -80, -124, ByteCompanionObject.MAX_VALUE}), true);
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(e0.m.h(new byte[]{-6, -115, 37, -15, -45}, new byte[]{-109, -7, 64, -100, -96, 6, 83, -8}));
                    if (jSONArrayOptJSONArray != null) {
                        for (int i9 = 0; i9 < jSONArrayOptJSONArray.length(); i9++) {
                            j0 j0VarA = j0.a(jSONArrayOptJSONArray.getJSONObject(i9));
                            if (j0VarA != null) {
                                arrayList.add(j0VarA);
                            }
                        }
                    }
                } catch (IllegalArgumentException | JSONException unused) {
                    arrayList.clear();
                }
            } catch (IllegalArgumentException | JSONException unused2) {
                iOptInt = 0;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new j0(m0.f5138b, 0.03f, 0.06f, 0.22f, 0.18f, null));
            arrayList.add(new j0(m0.c, 0.75f, 0.06f, 0.22f, 0.18f, null));
            arrayList.add(new j0(m0.d, 0.03f, 0.7f, 0.38f, 0.19f, null));
            c();
        } else {
            if (iOptInt < 2) {
                int size = arrayList.size();
                int i10 = 0;
                do {
                    if (i10 >= size) {
                        c();
                        break;
                    } else {
                        obj = arrayList.get(i10);
                        i10++;
                    }
                } while (((j0) obj).f5100b != m0.e);
            }
            if (iOptInt < 3) {
                int size2 = arrayList.size();
                int i11 = 0;
                while (i11 < size2) {
                    Object obj2 = arrayList.get(i11);
                    i11++;
                    j0 j0Var = (j0) obj2;
                    float[] fArrI = i(j0Var.f5100b);
                    j0Var.e = Math.min(j0Var.e, fArrI[0]);
                    j0Var.f5101f = Math.min(j0Var.f5101f, fArrI[1]);
                    j0Var.c = g(j0Var.c, 0.0f, 1.0f - j0Var.e);
                    j0Var.d = g(j0Var.d, 0.0f, 1.0f - j0Var.f5101f);
                }
            }
        }
        this.f5172g.setText(this.t ? e0.m.h(new byte[]{57, -18, -116, 29, 126, 8, 124, -81, 92, -96, -34, 115, -28, 9, 72}, new byte[]{-23, 113, 92, -93, 94, -39, -3, ByteCompanionObject.MAX_VALUE}) : e0.m.h(new byte[]{-62, 12, 25, -5, 22, 7, 70, 123, -62, 19, 25, -3, 22, 4, 70, 116}, new byte[]{18, -83, -55, 73, -58, -71, -106, -54}));
        A();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void x(boolean z8) {
        this.f5179n = z8;
        this.r.removeCallbacks(this.f5181p);
        for (int i9 = 0; i9 < this.e.getChildCount(); i9++) {
            b bVar = ((l0) this.e.getChildAt(i9)).f5124f;
            if (bVar != null) {
                bVar.f5058k = z8;
                if (z8) {
                    bVar.f5060m = true;
                    bVar.e(bVar.f5053f.f5228f);
                } else {
                    LauncherWindowService launcherWindowService = bVar.f5054g;
                    if (launcherWindowService != null) {
                        VirtualDisplay virtualDisplay = (VirtualDisplay) launcherWindowService.f909b.get(bVar.f5052b);
                        if (virtualDisplay != null) {
                            virtualDisplay.setSurface(null);
                        }
                    }
                }
            }
        }
        if (z8) {
            this.r.post(this.f5181p);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y() {
        h0.b.o().saveString(K, L());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final LinearLayout z(String str, int i9, String str2, String str3) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setPadding(l(16), l(12), l(16), l(12));
        linearLayout.setBackground(G(-15194575, 18, -11831662));
        linearLayout.setClickable(true);
        linearLayout.setFocusable(true);
        TextView textViewP = P(str, 34, i9);
        textViewP.setGravity(17);
        textViewP.setBackground(G(-15919329, 15, -12349782));
        linearLayout.addView(textViewP, new LinearLayout$LayoutParams(l(68), l(64)));
        LinearLayout linearLayoutV = V();
        linearLayoutV.setGravity(16);
        linearLayoutV.setPadding(l(16), 0, l(8), 0);
        TextView textViewP2 = P(str2, 18, -1);
        textViewP2.setTypeface(Typeface.DEFAULT_BOLD);
        linearLayoutV.addView(textViewP2);
        TextView textViewP3 = P(str3, 13, -6376767);
        textViewP3.setMaxLines(2);
        linearLayoutV.addView(textViewP3);
        linearLayout.addView(linearLayoutV, new LinearLayout$LayoutParams(0, -1, 1.0f));
        TextView textViewP4 = P(e0.m.h(new byte[]{103, ByteCompanionObject.MAX_VALUE, 118}, new byte[]{-123, -1, -52, -48, -33, 74, -97, 52}), 34, i9);
        textViewP4.setGravity(17);
        linearLayout.addView(textViewP4, new LinearLayout$LayoutParams(l(38), -1));
        return linearLayout;
    }
}
