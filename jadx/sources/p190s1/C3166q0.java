package p190s1;

import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.hardware.display.VirtualDisplay;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextClock;
import android.widget.TextView;
import androidx.core.location.LocationRequestCompat;
import androidx.core.widget.TextViewCompat;
import androidx.transition.C0802a;
import com.example.navistart.home.LauncherWindowService;
import com.example.navistart.home.WebLauncherActivity;
import com.google.protobuf.AbstractC1178q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import okhttp3.internal.p160ws.WebSocketProtocol;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p016b1.RunnableC0873n;
import p032c7.RunnableC1001e;
import p047e0.AbstractC1358g0;
import p047e0.AbstractC1387m;
import p047e0.RunnableC1419s1;
import p078h0.C1652b;
import p098j0.AbstractC1920f;
import p098j0.C1919e;
import p098j0.EnumC1918d;
import p141n.C2455p;
import p142n0.EnumC2469d;
import p180r0.ViewOnClickListenerC3091d;
import p189s0.C3129a;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: s1.q0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3166q0 extends FrameLayout {

    /* JADX INFO: renamed from: K */
    public static final String f9151K = AbstractC1387m.m2421h(new byte[]{-124, -111, 118, 109, 11, -10, -13, 33, -73, -98, 98, 119, 1, -24, -13, 12, -116, -107, 112, 104, 28, -15, -26, 12, -124, -111, 122, 108, 29, -22, -55, 37, -39}, new byte[]{-24, -16, 3, 3, 104, -98, -106, 83});

    /* JADX INFO: renamed from: L */
    public static final String f9152L = AbstractC1387m.m2421h(new byte[]{11, -98, 79, -83, 68, -100, 34, -117, 4, -118, 85, -89, 90, -100, 15, -72, 18, -98, 87, -88, 66, -104, 13, -126, 23, -47, 81, -76, 85}, new byte[]{101, -1, 59, -60, 50, -7, 125, -25});

    /* JADX INFO: renamed from: M */
    public static final String f9153M = AbstractC1387m.m2421h(new byte[]{7, -123, -102, -9, -13, -61, 113, 5, 52, -118, -114, -19, -7, -35, 113, 40, 28, -123, -125, -11, -32, -54, 100, 18, 25, -69, -126, -10, -12, -50, 75, 1, 90}, new byte[]{107, -28, -17, -103, -112, -85, 20, 119});

    /* JADX INFO: renamed from: N */
    public static final String f9154N = AbstractC1387m.m2421h(new byte[]{-35, 25, 124, 57, 51, -11}, new byte[]{-66, 108, 15, 77, 92, -104, 91, -127});

    /* JADX INFO: renamed from: O */
    public static final String f9155O = AbstractC1387m.m2421h(new byte[]{7, 24, -90, 73, -44, -68}, new byte[]{104, 118, -54, 32, -70, -39, -44, 31});

    /* JADX INFO: renamed from: A */
    public boolean f9156A;

    /* JADX INFO: renamed from: B */
    public boolean f9157B;

    /* JADX INFO: renamed from: C */
    public int f9158C;

    /* JADX INFO: renamed from: D */
    public long f9159D;

    /* JADX INFO: renamed from: E */
    public volatile boolean f9160E;

    /* JADX INFO: renamed from: F */
    public int f9161F;

    /* JADX INFO: renamed from: G */
    public int f9162G;

    /* JADX INFO: renamed from: H */
    public int f9163H;

    /* JADX INFO: renamed from: I */
    public int f9164I;

    /* JADX INFO: renamed from: J */
    public final RunnableC3144f0 f9165J;

    /* JADX INFO: renamed from: b */
    public final C2455p f9166b;

    /* JADX INFO: renamed from: c */
    public final ImageView f9167c;

    /* JADX INFO: renamed from: d */
    public final View f9168d;

    /* JADX INFO: renamed from: e */
    public final C3162o0 f9169e;

    /* JADX INFO: renamed from: f */
    public final LinearLayout f9170f;

    /* JADX INFO: renamed from: g */
    public final Button f9171g;

    /* JADX INFO: renamed from: h */
    public final Button f9172h;

    /* JADX INFO: renamed from: i */
    public final Button f9173i;

    /* JADX INFO: renamed from: j */
    public final Button f9174j;

    /* JADX INFO: renamed from: k */
    public final ExecutorService f9175k;

    /* JADX INFO: renamed from: l */
    public final ExecutorService f9176l;

    /* JADX INFO: renamed from: m */
    public final ExecutorService f9177m;

    /* JADX INFO: renamed from: n */
    public boolean f9178n;

    /* JADX INFO: renamed from: o */
    public long f9179o;

    /* JADX INFO: renamed from: p */
    public final RunnableC3144f0 f9180p;

    /* JADX INFO: renamed from: q */
    public final ArrayList f9181q;

    /* JADX INFO: renamed from: r */
    public final Handler f9182r;

    /* JADX INFO: renamed from: s */
    public boolean f9183s;

    /* JADX INFO: renamed from: t */
    public boolean f9184t;

    /* JADX INFO: renamed from: u */
    public String f9185u;

    /* JADX INFO: renamed from: v */
    public String f9186v;

    /* JADX INFO: renamed from: w */
    public String f9187w;

    /* JADX INFO: renamed from: x */
    public int f9188x;

    /* JADX INFO: renamed from: y */
    public C3129a f9189y;

    /* JADX INFO: renamed from: z */
    public boolean f9190z;

    public C3166q0(WebLauncherActivity webLauncherActivity, C2455p c2455p) {
        super(webLauncherActivity);
        this.f9175k = Executors.newSingleThreadExecutor();
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        this.f9176l = executorServiceNewSingleThreadExecutor;
        this.f9177m = Executors.newSingleThreadExecutor();
        int i10 = 1;
        this.f9178n = true;
        this.f9179o = 15000L;
        int i11 = 0;
        this.f9180p = new RunnableC3144f0(this, i11);
        this.f9181q = new ArrayList();
        Handler handler = new Handler(Looper.getMainLooper());
        this.f9182r = handler;
        this.f9184t = true;
        this.f9187w = AbstractC1387m.m2421h(new byte[]{-19, 86, -7, 23, 102}, new byte[]{15, -42, 109, -43, -42, -51, 32, -40});
        this.f9161F = 1;
        this.f9162G = 1;
        this.f9163H = 1;
        this.f9164I = 1;
        RunnableC3144f0 runnableC3144f0 = new RunnableC3144f0(this, i10);
        this.f9165J = runnableC3144f0;
        this.f9166b = c2455p;
        setClipToPadding(false);
        setBackground(new GradientDrawable(GradientDrawable.Orientation.TL_BR, new int[]{-16314343, -15984606, -15656670}));
        ImageView imageView = new ImageView(webLauncherActivity);
        this.f9167c = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        addView(imageView, new FrameLayout.LayoutParams(-1, -1));
        View view = new View(webLauncherActivity);
        this.f9168d = view;
        view.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{1929579024, -1727854064}));
        addView(view, new FrameLayout.LayoutParams(-1, -1));
        C3162o0 c3162o0 = new C3162o0(webLauncherActivity);
        this.f9169e = c3162o0;
        c3162o0.setClipChildren(true);
        c3162o0.setClipToPadding(false);
        c3162o0.setOnLongClickListener(new ViewOnLongClickListenerC3140d0(this, i11));
        c3162o0.setLongClickable(true);
        c3162o0.setOnClickListener(new ViewOnClickListenerC3133a0(this, 2));
        addView(c3162o0, new FrameLayout.LayoutParams(-1, -1));
        LinearLayout linearLayout = new LinearLayout(webLauncherActivity);
        this.f9170f = linearLayout;
        linearLayout.setGravity(17);
        linearLayout.setPadding(m5067l(8), m5067l(7), m5067l(8), m5067l(7));
        linearLayout.setBackground(m5043G(-233167568, 18, -11749921));
        linearLayout.setElevation(m5067l(30));
        Button buttonM5053R = m5053R(AbstractC1387m.m2421h(new byte[]{-17, 106, -43, 83, 67, -15, -115, -102, -48, 103, -114, -61, 67, -41, -115, -100, -47, 84, -113, -1}, new byte[]{0, -42, 94, 115, -109, 101, 93, 36}), true);
        buttonM5053R.setOnClickListener(new ViewOnClickListenerC3133a0(this, 3));
        linearLayout.addView(buttonM5053R, m5054S(142));
        Button buttonM5053R2 = m5053R(AbstractC1387m.m2421h(new byte[]{-76, 51, -3, 126, -124, -80, 6, 73, -47, 125, -81, 16, 30, -79, 50}, new byte[]{100, -84, 45, -64, -92, 97, -121, -103}), false);
        this.f9171g = buttonM5053R2;
        buttonM5053R2.setOnClickListener(new ViewOnClickListenerC3133a0(this, 4));
        linearLayout.addView(buttonM5053R2, m5054S(132));
        Button buttonM5053R3 = m5053R(AbstractC1387m.m2421h(new byte[]{113, -61, 103, -26, -91, -66, 93, -22, 67, -4, 37, 122, -91, -85, 92, -38}, new byte[]{-109, 75, -11, -58, 117, 30, -115, 90}), false);
        this.f9172h = buttonM5053R3;
        buttonM5053R3.setContentDescription(AbstractC1387m.m2421h(new byte[]{-81, 24, 112, -16, -83, -86, -113, 0, -82, 55, 113, -60, -83, -89, -114, 63, -82, 55, ByteCompanionObject.MIN_VALUE, -100, -49, -50, -44, 109, -50, 106, 32, -100, -51, -49, -30, 109, -62, 106, 43, -100, -60, 63, -113, 15, -81, 3, 112, -8, -83, -87, -113, 8, -82, 57}, new byte[]{ByteCompanionObject.MAX_VALUE, -69, -96, 76, 125, 31, 95, -67}));
        buttonM5053R3.setEnabled(false);
        buttonM5053R3.setOnClickListener(new ViewOnClickListenerC3133a0(this, 5));
        linearLayout.addView(buttonM5053R3, m5054S(92));
        Button buttonM5053R4 = m5053R(AbstractC1387m.m2421h(new byte[]{74, -25, -17, 49, 52, 43, -2, 96, 117, -20, -76, -83, 52, 62, -1, 80}, new byte[]{-91, 91, 100, 17, -28, -117, 46, -48}), false);
        this.f9173i = buttonM5053R4;
        buttonM5053R4.setContentDescription(AbstractC1387m.m2421h(new byte[]{-42, 29, -38, -44, 9, 91, 93, -92, -42, 6, -37, -31, 9, 86, 92, -99, -41, 50, 42, -74, 107, 63, 6, -49, -73, 111, -118, -74, 105, 62, 48, -49, -69, 111, -127, -74, 96, -50, 93, -83, -42, 6, -38, -46, 9, 88, 93, -86, -41, 60}, new byte[]{6, -66, 10, 102, -39, -18, -115, 31}));
        buttonM5053R4.setEnabled(false);
        buttonM5053R4.setOnClickListener(new ViewOnClickListenerC3133a0(this, 6));
        linearLayout.addView(buttonM5053R4, m5054S(92));
        Button buttonM5053R5 = m5053R(AbstractC1387m.m2421h(new byte[]{-114, 26, -93, -127, -101, -100, 30, -90, -114, 1, -94, -73, -102, -96}, new byte[]{94, -71, 115, 53, 75, 44, -50, 29}), false);
        this.f9174j = buttonM5053R5;
        buttonM5053R5.setEnabled(false);
        buttonM5053R5.setOnClickListener(new ViewOnClickListenerC3133a0(this, 7));
        linearLayout.addView(buttonM5053R5, m5054S(112));
        Button buttonM5053R6 = m5053R(AbstractC1387m.m2421h(new byte[]{-46, 96, -89, -22, 5, 118, -98, 50, -46, 67, -90, -40}, new byte[]{2, -2, 118, 104, -43, -54, 78, -121}), false);
        buttonM5053R6.setOnClickListener(new ViewOnClickListenerC3133a0(this, 8));
        linearLayout.addView(buttonM5053R6, m5054S(LocationRequestCompat.QUALITY_LOW_POWER));
        Button buttonM5053R7 = m5053R(AbstractC1387m.m2421h(new byte[]{-68, -3, 123, 124, -67, -120, 99, 32, -68, -20, 123, ByteCompanionObject.MAX_VALUE, -68, -75, 99, 34, -67, -48}, new byte[]{108, 92, -85, -62, 108, 13, -78, -96}), true);
        buttonM5053R7.setOnClickListener(new ViewOnClickListenerC3133a0(this, i11));
        linearLayout.addView(buttonM5053R7, m5054S(WebSocketProtocol.PAYLOAD_SHORT));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, m5067l(62), 49);
        layoutParams.topMargin = m5067l(10);
        addView(linearLayout, layoutParams);
        linearLayout.setVisibility(8);
        m5074u(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-47, -88, 109, -91, -85, 19, -123, -31, -30, -89, 121, -65, -95, 13, -123, -52, -39, -84, 107, -96, -68, 20, -112, -52, -47, -88, 97, -92, -67, 15, -65, -27, -116}, new byte[]{-67, -55, 24, -53, -56, 123, -32, -109}), ""));
        executorServiceNewSingleThreadExecutor.execute(new RunnableC3138c0(this, i10));
        m5041E(false);
        handler.postDelayed(runnableC3144f0, 1200L);
    }

    /* JADX INFO: renamed from: O */
    public static void m5029O(C3152j0 c3152j0) {
        c3152j0.f9045c = m5031g(Math.round(c3152j0.f9045c * 24.0f) / 24.0f, 0.0f, 1.0f - c3152j0.f9047e);
        c3152j0.f9046d = m5031g(Math.round(c3152j0.f9046d * 14.0f) / 14.0f, 0.0f, 1.0f - c3152j0.f9048f);
    }

    /* JADX INFO: renamed from: b */
    public static String m5030b(C1919e c1919e) {
        EnumC2469d enumC2469d;
        if (c1919e.f5058a != EnumC1918d.f5053b || (enumC2469d = c1919e.f5059b) == null) {
            return TextUtils.isEmpty(c1919e.f5066i) ? AbstractC1387m.m2421h(new byte[]{-8, 67, -80, -67, -9, 82, 68, -60, -7, 85, -80, -70, -9, 83, 69, -16}, new byte[]{40, -41, 96, 8, 39, -21, -107, 69}) : c1919e.f5066i;
        }
        int iOrdinal = enumC2469d.ordinal();
        if (iOrdinal == 7) {
            return AbstractC1387m.m2421h(new byte[]{-1, -83, -14, -37, 52, -33, 32, -13, -1, -116, -13, -19, 52, -46, 32, -11, -1, -118, -14, -44}, new byte[]{47, 50, 35, 91, -28, 103, -16, 72});
        }
        if (iOrdinal == 55) {
            return AbstractC1387m.m2421h(new byte[]{50, -110, -41, 124, 69, -43, -124, -7, 50, -121, -41, 119, 69, -41, -124, -16, 50, -118, -41, 121}, new byte[]{-30, 50, 7, -52, -107, 98, 84, 77});
        }
        if (iOrdinal == 74) {
            return AbstractC1387m.m2421h(new byte[]{-26, 88, -39, -60, -22, 63, -46, -115, -26, 119, -39, -52, -22, 51, -46, -120}, new byte[]{54, -59, 9, 113, 58, -117, 2, Base64.padSymbol});
        }
        if (iOrdinal != 75) {
            return TextUtils.isEmpty(c1919e.f5066i) ? AbstractC1387m.m2421h(new byte[]{-107, -60, -59, 90, -30, -9, -73, -56, -108, -46, -59, 93, -30, -10, -74, -4}, new byte[]{69, 80, 21, -17, 50, 78, 102, 73}) : c1919e.f5066i;
        }
        return AbstractC1387m.m2421h(new byte[]{59, 0, 86, -57, 18, -80, -110, 116, 59, 38, 87, -12}, new byte[]{-21, -100, -121, 68, -62, 7, 67, -1});
    }

    /* JADX INFO: renamed from: g */
    public static float m5031g(float f8, float f10, float f11) {
        return Math.max(f10, Math.min(f11, f8));
    }

    /* JADX INFO: renamed from: i */
    public static float[] m5032i(EnumC3158m0 enumC3158m0) {
        if (enumC3158m0 == EnumC3158m0.f9107h) {
            return new float[]{0.42f, 0.48f};
        }
        if (enumC3158m0 == EnumC3158m0.f9103d) {
            return new float[]{0.38f, 0.19f};
        }
        if (m5034r(enumC3158m0)) {
            return new float[]{0.12f, 0.15f};
        }
        return (enumC3158m0 == EnumC3158m0.f9104e || enumC3158m0 == EnumC3158m0.f9105f || enumC3158m0 == EnumC3158m0.f9106g) ? new float[]{0.1f, 0.14f} : new float[]{0.22f, 0.18f};
    }

    /* JADX INFO: renamed from: q */
    public static boolean m5033q(EnumC3158m0 enumC3158m0) {
        return enumC3158m0 == EnumC3158m0.f9108i || enumC3158m0 == EnumC3158m0.f9110k;
    }

    /* JADX INFO: renamed from: r */
    public static boolean m5034r(EnumC3158m0 enumC3158m0) {
        return enumC3158m0 == EnumC3158m0.f9108i || enumC3158m0 == EnumC3158m0.f9109j || enumC3158m0 == EnumC3158m0.f9110k || enumC3158m0 == EnumC3158m0.f9111l;
    }

    /* JADX INFO: renamed from: v */
    public static FrameLayout.LayoutParams m5035v() {
        return new FrameLayout.LayoutParams(-1, -1);
    }

    /* JADX INFO: renamed from: w */
    public static int m5036w(int i10) {
        if (i10 < 1 || i10 > 4) {
            return 1;
        }
        return i10;
    }

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
    /* JADX INFO: renamed from: A */
    public final void m5037A() {
        C3156l0 c3156l0;
        int i10;
        String strM2421h;
        C3162o0 c3162o0 = this.f9169e;
        ?? r9 = 1;
        for (int childCount = c3162o0.getChildCount() - 1; childCount >= 0; childCount--) {
            C3156l0 c3156l1 = (C3156l0) c3162o0.getChildAt(childCount);
            if (m5070o(c3156l1.f9080b.f9043a) == null) {
                TextureViewSurfaceTextureListenerC3135b textureViewSurfaceTextureListenerC3135b = c3156l1.f9084f;
                if (textureViewSurfaceTextureListenerC3135b != null) {
                    textureViewSurfaceTextureListenerC3135b.m4975c();
                }
                c3162o0.removeViewAt(childCount);
            }
        }
        ArrayList arrayList = this.f9181q;
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            C3152j0 c3152j0 = (C3152j0) obj;
            String str = c3152j0.f9043a;
            int i12 = 0;
            while (true) {
                if (i12 >= c3162o0.getChildCount()) {
                    c3156l0 = 0;
                    break;
                }
                View childAt = c3162o0.getChildAt(i12);
                if (childAt instanceof C3156l0) {
                    c3156l0 = (C3156l0) childAt;
                    if (c3156l0.f9080b.f9043a.equals(str)) {
                        break;
                    }
                }
                i12++;
            }
            if (c3156l0 == 0) {
                c3156l0 = new C3156l0(getContext());
                c3156l0.f9080b = c3152j0;
                c3156l0.setTag(c3152j0);
                c3156l0.setClipToOutline(r9);
                C3152j0 c3152j1 = c3156l0.f9080b;
                EnumC3158m0 enumC3158m0 = c3152j1.f9044b;
                String str2 = c3152j1.f9049g;
                if (enumC3158m0 == EnumC3158m0.f9101b) {
                    LinearLayout linearLayoutM5057V = m5057V();
                    linearLayoutM5057V.setGravity(16);
                    linearLayoutM5057V.setPadding(m5067l(16), m5067l(10), m5067l(16), m5067l(10));
                    Context contextM2404b = AbstractC1358g0.m2404b(getContext());
                    TextClock textClock = new TextClock(contextM2404b);
                    textClock.setFormat24Hour(AbstractC1387m.m2421h(new byte[]{30, -66, -62, 126, -32}, new byte[]{86, -10, -8, 19, -115, -91, -54, -89}));
                    textClock.setFormat12Hour(AbstractC1387m.m2421h(new byte[]{50, 44, 71, -90, -15}, new byte[]{122, 100, 125, -53, -100, 23, 122, -11}));
                    textClock.setTextSize(48.0f);
                    textClock.setTextColor(-1);
                    textClock.setTypeface(Typeface.DEFAULT_BOLD);
                    textClock.setMaxLines(r9);
                    textClock.setIncludeFontPadding(false);
                    TextViewCompat.setAutoSizeTextTypeUniformWithConfiguration(textClock, 18, 48, 2, 2);
                    linearLayoutM5057V.addView(textClock);
                    C3160n0 c3160n0 = new C3160n0(contextM2404b);
                    c3160n0.setTextSize(17.0f);
                    c3160n0.setTextColor(-6310972);
                    c3160n0.setMaxLines(r9);
                    c3160n0.setEllipsize(TextUtils.TruncateAt.END);
                    c3160n0.setIncludeFontPadding(false);
                    linearLayoutM5057V.addView(c3160n0);
                    c3156l0.addView(linearLayoutM5057V, m5035v());
                } else if (enumC3158m0 == EnumC3158m0.f9102c) {
                    LinearLayout linearLayout = new LinearLayout(getContext());
                    int i13 = getResources().getConfiguration().screenWidthDp < getResources().getConfiguration().screenHeightDp ? 1 : 0;
                    linearLayout.setOrientation(i13);
                    linearLayout.setGravity(17);
                    linearLayout.setPadding(m5067l(12), m5067l(10), m5067l(12), m5067l(10));
                    ImageView imageView = new ImageView(getContext());
                    c3156l0.f9086h = imageView;
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    linearLayout.addView(imageView, new LinearLayout.LayoutParams(m5067l(56), m5067l(56)));
                    LinearLayout linearLayoutM5057V2 = m5057V();
                    linearLayoutM5057V2.setGravity(17);
                    linearLayoutM5057V2.setPadding(i13 != 0 ? 0 : m5067l(9), i13 != 0 ? m5067l(4) : 0, 0, 0);
                    TextView textViewM5051P = m5051P(this.f9187w, 35, -1);
                    c3156l0.f9087i = textViewM5051P;
                    textViewM5051P.setTypeface(Typeface.DEFAULT_BOLD);
                    linearLayoutM5057V2.addView(textViewM5051P);
                    TextView textViewM5051P2 = m5051P(AbstractC1387m.m2421h(new byte[]{55, 88, -120, 32, 108, -83, 117, 19, 55, 115, -120, 46, -100, -49, 36, 125, 82, 23, -31, 79, 59, -50, 21, 124, 102}, new byte[]{-25, -57, 88, -98, -68, 30, -91, -83}), 14, -6310972);
                    textViewM5051P2.setGravity(17);
                    textViewM5051P2.setMaxLines(1);
                    textViewM5051P2.setEllipsize(TextUtils.TruncateAt.END);
                    linearLayoutM5057V2.addView(textViewM5051P2);
                    linearLayout.addView(linearLayoutM5057V2);
                    c3156l0.addView(linearLayout, m5035v());
                } else if (enumC3158m0 == EnumC3158m0.f9103d) {
                    LinearLayout linearLayout2 = new LinearLayout(getContext());
                    linearLayout2.setGravity(16);
                    linearLayout2.setPadding(m5067l(12), m5067l(10), m5067l(14), m5067l(10));
                    ImageView imageView2 = new ImageView(getContext());
                    c3156l0.f9088j = imageView2;
                    imageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    imageView2.setBackground(m5043G(-14404543, 16, -13349794));
                    linearLayout2.addView(imageView2, new LinearLayout.LayoutParams(m5067l(78), m5067l(78)));
                    LinearLayout linearLayoutM5057V3 = m5057V();
                    linearLayoutM5057V3.setGravity(16);
                    linearLayoutM5057V3.setPadding(m5067l(14), 0, 0, 0);
                    C3129a c3129a = this.f9189y;
                    String strM2421h2 = (c3129a == null || TextUtils.isEmpty(c3129a.f8948b)) ? AbstractC1387m.m2421h(new byte[]{-72, 46, -28, -49, 52, 44, 96, -74, -72, 8, -27, -4, -60, 75, 12, -19, -35, -110, -27, -12, 52, 40, 96, -67, -72, 2, -27, -7, 53, 25}, new byte[]{104, -78, 53, 76, -28, -101, -79, Base64.padSymbol}) : this.f9189y.f8948b;
                    C3129a c3129a2 = this.f9189y;
                    String strM2421h3 = (c3129a2 == null || TextUtils.isEmpty(c3129a2.f8949c)) ? AbstractC1387m.m2421h(new byte[]{-7, -76, -65, -17, 57, 41, 71, 99, -8, -94, -66, -35, 57, 46, 71, 98, -7, -106, 79, -113, 86, 71, 22, 48, -105, -13, -41, -113, 90, 71, 22, 49, -94, -13, -35, -113, 89, 71, 20, 48, -100, -13, -44, -114, 101}, new byte[]{41, 35, 111, 95, -23, -106, -106, -32}) : this.f9189y.f8949c;
                    TextView textViewM5051P3 = m5051P(strM2421h2, 21, -1);
                    c3156l0.f9089k = textViewM5051P3;
                    textViewM5051P3.setTypeface(Typeface.DEFAULT_BOLD);
                    textViewM5051P3.setMaxLines(1);
                    TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
                    textViewM5051P3.setEllipsize(truncateAt);
                    linearLayoutM5057V3.addView(textViewM5051P3);
                    TextView textViewM5051P4 = m5051P(strM2421h3, 15, -6310972);
                    c3156l0.f9090l = textViewM5051P4;
                    textViewM5051P4.setMaxLines(1);
                    textViewM5051P4.setEllipsize(truncateAt);
                    textViewM5051P4.setPadding(0, m5067l(6), 0, 0);
                    linearLayoutM5057V3.addView(textViewM5051P4);
                    linearLayout2.addView(linearLayoutM5057V3, new LinearLayout.LayoutParams(0, -1, 1.0f));
                    c3156l0.addView(linearLayout2, m5035v());
                } else if (enumC3158m0 == EnumC3158m0.f9106g) {
                    LinearLayout linearLayoutM5057V4 = m5057V();
                    linearLayoutM5057V4.setGravity(17);
                    linearLayoutM5057V4.setPadding(m5067l(8), m5067l(8), m5067l(8), m5067l(8));
                    TextView textViewM5051P5 = m5051P(AbstractC1387m.m2421h(new byte[]{-125, -105, 52}, new byte[]{97, 17, -113, -99, -66, -39, -28, -109}), 35, -9382222);
                    textViewM5051P5.setGravity(17);
                    linearLayoutM5057V4.addView(textViewM5051P5, new LinearLayout.LayoutParams(m5067l(48), m5067l(48)));
                    TextView textViewM5051P6 = m5051P(AbstractC1387m.m2421h(new byte[]{113, -100, 123, 54, Base64.padSymbol, -29, -30, 10, 113, -80, 123, 63, 60, -36, -29, 56, -127, -45, 47, 87, 83, -114, -113}, new byte[]{-95, 2, -85, -121, -19, 94, 50, -76}), 12, -1);
                    textViewM5051P6.setTypeface(Typeface.DEFAULT_BOLD);
                    textViewM5051P6.setGravity(17);
                    textViewM5051P6.setMaxLines(2);
                    linearLayoutM5057V4.addView(textViewM5051P6, new LinearLayout.LayoutParams(-1, -2));
                    c3156l0.addView(linearLayoutM5057V4, m5035v());
                } else if (m5034r(enumC3158m0)) {
                    boolean zM5033q = m5033q(c3156l0.f9080b.f9044b);
                    EnumC3158m0 enumC3158m1 = c3156l0.f9080b.f9044b;
                    boolean z9 = enumC3158m1 == EnumC3158m0.f9108i || enumC3158m1 == EnumC3158m0.f9109j;
                    int i14 = zM5033q ? -35235 : -11155473;
                    LinearLayout linearLayoutM5057V5 = m5057V();
                    linearLayoutM5057V5.setGravity(17);
                    linearLayoutM5057V5.setPadding(m5067l(6), m5067l(7), m5067l(6), m5067l(7));
                    LinearLayout linearLayout3 = new LinearLayout(getContext());
                    linearLayout3.setGravity(17);
                    TextView textViewM5051P7 = m5051P(zM5033q ? AbstractC1387m.m2421h(new byte[]{99, -114, 81}, new byte[]{-127, 23, -7, 29, 25, -108, 118, -25}) : AbstractC1387m.m2421h(new byte[]{44, 51, 69}, new byte[]{-50, -82, -63, -116, -68, -41, 26, -54}), 23, i14);
                    textViewM5051P7.setGravity(17);
                    linearLayout3.addView(textViewM5051P7, new LinearLayout.LayoutParams(m5067l(28), m5067l(34)));
                    if (z9) {
                        i10 = 8;
                        strM2421h = AbstractC1387m.m2421h(new byte[]{-98, -67, -94, -112, -56, 82, 25, -46, -97, -83, -94, -101, -56, 93, 24, -26}, new byte[]{78, 47, 114, 46, 24, -26, -55, 106});
                    } else {
                        i10 = 8;
                        strM2421h = AbstractC1387m.m2421h(new byte[]{79, -16, 22, 42, ByteCompanionObject.MAX_VALUE, 14, -73, -117, 79, -33, 22, 44, 126, 55, -73, -118}, new byte[]{-97, 111, -58, -102, -82, -113, 102, 10});
                    }
                    TextView textViewM5051P8 = m5051P(strM2421h, 11, -1);
                    textViewM5051P8.setTypeface(Typeface.DEFAULT_BOLD);
                    textViewM5051P8.setMaxLines(1);
                    linearLayout3.addView(textViewM5051P8);
                    linearLayoutM5057V5.addView(linearLayout3);
                    byte[] bArr = new byte[i10];
                    // fill-array-data instruction
                    bArr[0] = -101;
                    bArr[1] = -37;
                    bArr[2] = 8;
                    bArr[3] = 70;
                    bArr[4] = -105;
                    bArr[5] = 123;
                    bArr[6] = -87;
                    bArr[7] = 22;
                    byte[] bArr2 = new byte[i10];
                    // fill-array-data instruction
                    bArr2[0] = 75;
                    bArr2[1] = 73;
                    bArr2[2] = -39;
                    bArr2[3] = -51;
                    bArr2[4] = 71;
                    bArr2[5] = -63;
                    bArr2[6] = 121;
                    bArr2[7] = -83;
                    TextView textViewM5051P9 = m5051P(AbstractC1387m.m2421h(bArr, bArr2), 12, -5653818);
                    c3156l0.f9091m = textViewM5051P9;
                    textViewM5051P9.setGravity(17);
                    linearLayoutM5057V5.addView(c3156l0.f9091m);
                    LinearLayout linearLayout4 = new LinearLayout(getContext());
                    linearLayout4.setGravity(17);
                    int i15 = 0;
                    while (true) {
                        View[] viewArr = c3156l0.f9095q;
                        if (i15 >= viewArr.length) {
                            break;
                        }
                        View view = new View(getContext());
                        viewArr[i15] = view;
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(m5067l(24), m5067l(7));
                        layoutParams.setMargins(m5067l(3), m5067l(5), m5067l(3), 0);
                        linearLayout4.addView(view, layoutParams);
                        i15++;
                    }
                    linearLayoutM5057V5.addView(linearLayout4);
                    c3156l0.addView(linearLayoutM5057V5, m5035v());
                } else {
                    EnumC3158m0 enumC3158m2 = c3152j1.f9044b;
                    if (enumC3158m2 == EnumC3158m0.f9105f) {
                        LinearLayout linearLayoutM5057V6 = m5057V();
                        linearLayoutM5057V6.setGravity(17);
                        linearLayoutM5057V6.setPadding(m5067l(7), m5067l(5), m5067l(7), m5067l(5));
                        LinearLayout linearLayout5 = new LinearLayout(getContext());
                        linearLayout5.setGravity(17);
                        ImageView imageView3 = new ImageView(getContext());
                        c3156l0.f9092n = imageView3;
                        imageView3.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        linearLayout5.addView(imageView3, new LinearLayout.LayoutParams(m5067l(34), m5067l(34)));
                        TextView textViewM5051P10 = m5051P("", 9, -16314343);
                        c3156l0.f9094p = textViewM5051P10;
                        textViewM5051P10.setGravity(17);
                        Typeface typeface = Typeface.DEFAULT_BOLD;
                        textViewM5051P10.setTypeface(typeface);
                        textViewM5051P10.setBackground(m5043G(-9382222, 9, -6494003));
                        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(m5067l(30), m5067l(20));
                        layoutParams2.leftMargin = m5067l(6);
                        linearLayout5.addView(textViewM5051P10, layoutParams2);
                        linearLayoutM5057V6.addView(linearLayout5, new LinearLayout.LayoutParams(-2, m5067l(36)));
                        TextView textViewM5051P11 = m5051P("", 10, -1);
                        c3156l0.f9093o = textViewM5051P11;
                        textViewM5051P11.setGravity(17);
                        textViewM5051P11.setTypeface(typeface);
                        textViewM5051P11.setMaxLines(2);
                        textViewM5051P11.setEllipsize(TextUtils.TruncateAt.END);
                        linearLayoutM5057V6.addView(textViewM5051P11, new LinearLayout.LayoutParams(-1, 0, 1.0f));
                        c3156l0.addView(linearLayoutM5057V6, m5035v());
                    } else if (enumC3158m2 == EnumC3158m0.f9107h) {
                        TextureViewSurfaceTextureListenerC3135b textureViewSurfaceTextureListenerC3135b2 = new TextureViewSurfaceTextureListenerC3135b(getContext(), c3152j1.f9043a, str2);
                        c3156l0.f9084f = textureViewSurfaceTextureListenerC3135b2;
                        c3156l0.addView(textureViewSurfaceTextureListenerC3135b2, new FrameLayout.LayoutParams(-1, -1));
                    } else {
                        C1919e c1919eM3004b = AbstractC1920f.m3004b(getContext(), str2);
                        LinearLayout linearLayoutM5057V7 = m5057V();
                        linearLayoutM5057V7.setGravity(17);
                        linearLayoutM5057V7.setPadding(m5067l(8), m5067l(8), m5067l(8), m5067l(8));
                        ImageView imageView4 = new ImageView(getContext());
                        imageView4.setImageDrawable(c1919eM3004b.f5067j);
                        imageView4.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        linearLayoutM5057V7.addView(imageView4, new LinearLayout.LayoutParams(m5067l(42), m5067l(42)));
                        TextView textViewM5051P12 = m5051P(m5030b(c1919eM3004b), 12, -1);
                        textViewM5051P12.setGravity(17);
                        textViewM5051P12.setMaxLines(2);
                        textViewM5051P12.setEllipsize(TextUtils.TruncateAt.END);
                        linearLayoutM5057V7.addView(textViewM5051P12, new LinearLayout.LayoutParams(-1, -2));
                        c3156l0.addView(linearLayoutM5057V7, m5035v());
                    }
                }
                c3156l0.f9081c = c3156l0.getChildCount() == 0 ? null : c3156l0.getChildAt(0);
                TextView textViewM5051P13 = m5051P(AbstractC1387m.m2421h(new byte[]{68, 10, 51}, new byte[]{-90, -106, -106, 116, -61, 8, 20, -86}), 20, -7414537);
                c3156l0.f9082d = textViewM5051P13;
                textViewM5051P13.setGravity(17);
                c3156l0.addView(c3156l0.f9082d, new FrameLayout.LayoutParams(m5067l(38), m5067l(38), 53));
                if (c3156l0.f9084f != null) {
                    c3156l0.f9082d.setOnTouchListener(new ViewOnTouchListenerC3154k0(this));
                    TextView textViewM5051P14 = m5051P(AbstractC1387m.m2421h(new byte[]{-23, -113, 19}, new byte[]{11, 9, -117, 63, 112, 113, -33, 85}), 26, -7414537);
                    c3156l0.f9083e = textViewM5051P14;
                    textViewM5051P14.setGravity(17);
                    c3156l0.f9083e.setBackground(m5043G(-300473554, 8, -11222036));
                    c3156l0.f9083e.setContentDescription(AbstractC1387m.m2421h(new byte[]{-103, 54, -54, -106, 121, -28, 15, -62, -103, 19, -54, -103, 120, -38, 14, -5, 105, ByteCompanionObject.MAX_VALUE, -110, -15, 17, -119, 95, -89, -15, 126, -89, -16, 42, 120, 15, -49, 105, 126, -88, -16, 34, -119, 94, -89, -9, ByteCompanionObject.MAX_VALUE, -104, -16, 42, 120, 15, -55, -103, 20, -54, -100, 121, -24}, new byte[]{73, -82, 26, 33, -87, 88, -33, 119}));
                    c3156l0.f9083e.setOnTouchListener(new ViewOnTouchListenerC3164p0(this, c3156l0));
                    c3156l0.addView(c3156l0.f9083e, new FrameLayout.LayoutParams(m5067l(44), m5067l(44), 85));
                }
                m5055T(c3156l0);
                m5062e(c3156l0);
                int i16 = 1;
                c3156l0.setOnLongClickListener(new ViewOnLongClickListenerC3140d0(this, i16));
                c3156l0.setOnTouchListener(new ViewOnTouchListenerC3154k0(this));
                c3156l0.setOnClickListener(new ViewOnClickListenerC3133a0(this, i16));
                c3162o0.addView(c3156l0);
            } else {
                c3156l0.f9080b = c3152j0;
                c3156l0.setTag(c3152j0);
                m5055T(c3156l0);
            }
            m5062e(c3156l0);
            r9 = 1;
        }
        requestLayout();
        c3162o0.post(new RunnableC3138c0(this, 0));
        m5056U();
        this.f9170f.bringToFront();
    }

    /* JADX INFO: renamed from: B */
    public final void m5038B(EnumC3158m0 enumC3158m0) {
        C3162o0 c3162o0 = this.f9169e;
        if (c3162o0.isInLayout()) {
            c3162o0.post(new RunnableC3183z(this, enumC3158m0, 1));
            return;
        }
        for (int i10 = 0; i10 < c3162o0.getChildCount(); i10++) {
            View childAt = c3162o0.getChildAt(i10);
            Object tag = childAt.getTag();
            if ((tag instanceof C3152j0) && ((C3152j0) tag).f9044b == enumC3158m0) {
                m5055T((C3156l0) childAt);
            }
        }
    }

    /* JADX INFO: renamed from: C */
    public final void m5039C() {
        int i10 = 0;
        while (true) {
            C3162o0 c3162o0 = this.f9169e;
            if (i10 >= c3162o0.getChildCount()) {
                return;
            }
            View childAt = c3162o0.getChildAt(i10);
            if (childAt instanceof C3156l0) {
                C3156l0 c3156l0 = (C3156l0) childAt;
                if (m5034r(c3156l0.f9080b.f9044b)) {
                    m5055T(c3156l0);
                }
            }
            i10++;
        }
    }

    /* JADX INFO: renamed from: D */
    public final void m5040D() {
        if (this.f9183s) {
            m5076y();
        }
        m5042F();
        this.f9160E = true;
        for (int i10 = 0; i10 < this.f9169e.getChildCount(); i10++) {
            TextureViewSurfaceTextureListenerC3135b textureViewSurfaceTextureListenerC3135b = ((C3156l0) this.f9169e.getChildAt(i10)).f9084f;
            if (textureViewSurfaceTextureListenerC3135b != null) {
                textureViewSurfaceTextureListenerC3135b.m4975c();
            }
        }
        this.f9175k.shutdownNow();
        this.f9176l.shutdownNow();
        this.f9177m.shutdownNow();
        this.f9182r.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: renamed from: E */
    public final void m5041E(boolean z9) {
        if (this.f9160E || this.f9157B || this.f9176l.isShutdown()) {
            return;
        }
        if (z9 || !f9154N.equals(C1652b.m2745o().loadString(f9153M, f9155O))) {
            this.f9157B = true;
            this.f9176l.execute(new RunnableC1419s1(this, z9, Math.max(1280, getResources().getDisplayMetrics().widthPixels), Math.max(720, getResources().getDisplayMetrics().heightPixels), 2));
        }
    }

    /* JADX INFO: renamed from: F */
    public final void m5042F() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f9181q;
        int size = arrayList2.size();
        int i10 = 0;
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList2.get(i11);
            i11++;
            C3152j0 c3152j0 = (C3152j0) obj;
            if (c3152j0.f9044b == EnumC3158m0.f9107h) {
                arrayList.add(c3152j0.f9043a);
            }
        }
        LauncherWindowService launcherWindowService = LauncherWindowService.f1735e;
        if (launcherWindowService == null) {
            return;
        }
        launcherWindowService.f1738d.clear();
        LauncherWindowService.f1735e.f1738d.addAll(arrayList);
        ArrayList arrayList3 = new ArrayList(LauncherWindowService.f1735e.f1736b.keySet());
        int size2 = arrayList3.size();
        while (i10 < size2) {
            Object obj2 = arrayList3.get(i10);
            i10++;
            String str = (String) obj2;
            if (!arrayList.contains(str)) {
                LauncherWindowService launcherWindowService2 = LauncherWindowService.f1735e;
                HashMap map = launcherWindowService2.f1736b;
                VirtualDisplay virtualDisplay = (VirtualDisplay) map.get(str);
                if (virtualDisplay != null) {
                    launcherWindowService2.f1737c.add(str);
                    VirtualDisplay virtualDisplay2 = (VirtualDisplay) map.get(str);
                    if (virtualDisplay2 != null) {
                        virtualDisplay2.setSurface(null);
                    }
                    C3179x c3179xM5107a = C3179x.m5107a(launcherWindowService2);
                    c3179xM5107a.f9252d.execute(new RunnableC0873n(c3179xM5107a, AbstractC1387m.m2421h(new byte[]{-22, -105, -90, 110, -111, -31}, new byte[]{-87, -37, -23, Base64.padSymbol, -44, -63, -116, 100}) + virtualDisplay.getDisplay().getDisplayId(), new C0802a(launcherWindowService2, str, virtualDisplay, 6), 12));
                }
            }
        }
        if (arrayList.isEmpty() && LauncherWindowService.f1735e.f1736b.isEmpty()) {
            LauncherWindowService.f1735e.stopSelf();
        }
    }

    /* JADX INFO: renamed from: G */
    public final GradientDrawable m5043G(int i10, int i11, int i12) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i10);
        gradientDrawable.setCornerRadius(m5067l(i11));
        gradientDrawable.setStroke(m5067l(1), i12);
        return gradientDrawable;
    }

    /* JADX INFO: renamed from: H */
    public final void m5044H(float f8) {
        EnumC3158m0 enumC3158m0;
        C3152j0 c3152j0M5070o = m5070o(this.f9186v);
        if (c3152j0M5070o == null || (enumC3158m0 = c3152j0M5070o.f9044b) == EnumC3158m0.f9104e) {
            return;
        }
        float[] fArrM5032i = m5032i(enumC3158m0);
        float f10 = fArrM5032i[0];
        float f11 = f10 * 0.55f;
        float f12 = fArrM5032i[1] * 0.55f;
        float fMin = Math.min(0.92f, f10 * 2.35f);
        float fMin2 = Math.min(0.86f, fArrM5032i[1] * 2.35f);
        float fM5031g = m5031g(c3152j0M5070o.f9047e * f8, f11, fMin);
        float fM5031g2 = m5031g(c3152j0M5070o.f9048f * f8, f12, fMin2);
        if (Math.abs(fM5031g - c3152j0M5070o.f9047e) >= 1.0E-4f || Math.abs(fM5031g2 - c3152j0M5070o.f9048f) >= 1.0E-4f) {
            float f13 = (c3152j0M5070o.f9047e / 2.0f) + c3152j0M5070o.f9045c;
            float f14 = (c3152j0M5070o.f9048f / 2.0f) + c3152j0M5070o.f9046d;
            c3152j0M5070o.f9047e = fM5031g;
            c3152j0M5070o.f9048f = fM5031g2;
            c3152j0M5070o.f9045c = m5031g(f13 - (fM5031g / 2.0f), 0.0f, 1.0f - fM5031g);
            c3152j0M5070o.f9046d = m5031g(f14 - (fM5031g2 / 2.0f), 0.0f, 1.0f - fM5031g2);
            if (this.f9184t) {
                m5029O(c3152j0M5070o);
            }
            m5076y();
            m5037A();
        }
    }

    /* JADX INFO: renamed from: I */
    public final void m5045I(EnumC3158m0 enumC3158m0) {
        if (enumC3158m0 == EnumC3158m0.f9102c) {
            if (this.f9190z) {
                return;
            } else {
                this.f9190z = true;
            }
        } else if (enumC3158m0 == EnumC3158m0.f9103d) {
            if (this.f9156A) {
                return;
            } else {
                this.f9156A = true;
            }
        }
        this.f9169e.post(new RunnableC3183z(this, enumC3158m0, 0));
    }

    /* JADX INFO: renamed from: J */
    public final int m5046J(EnumC3158m0 enumC3158m0) {
        switch (enumC3158m0.ordinal()) {
            case 7:
                return this.f9161F;
            case 8:
                return this.f9162G;
            case 9:
                return this.f9163H;
            case 10:
                return this.f9164I;
            default:
                return 1;
        }
    }

    /* JADX INFO: renamed from: K */
    public final TextView m5047K(String str) {
        TextView textViewM5051P = m5051P(str, 12, -10040851);
        textViewM5051P.setTypeface(Typeface.DEFAULT_BOLD);
        textViewM5051P.setLetterSpacing(0.08f);
        textViewM5051P.setPadding(m5067l(2), m5067l(8), 0, m5067l(8));
        return textViewM5051P;
    }

    /* JADX INFO: renamed from: L */
    public final String m5048L() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-54, -124, 110, -120, -12, -119, -124}, new byte[]{-68, -31, 28, -5, -99, -26, -22, -13}), 4);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{52, -100, -117, 85}, new byte[]{71, -14, -22, 37, 18, -25, 107, -60}), this.f9184t);
            JSONArray jSONArray = new JSONArray();
            ArrayList arrayList = this.f9181q;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                jSONArray.put(((C3152j0) obj).m4985b());
            }
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{122, 97, -99, 32, -88}, new byte[]{19, 21, -8, 77, -37, 107, -73, 124}), jSONArray);
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "";
        }
    }

    /* JADX INFO: renamed from: M */
    public final void m5049M(final ArrayList arrayList, final boolean z9, final C1919e c1919e) {
        String strM2075i;
        if (this.f9183s && isAttachedToWindow()) {
            if (arrayList.isEmpty()) {
                AbstractC3656k.m5878x(getContext(), AbstractC1387m.m2421h(new byte[]{-105, 67, -27, -59, -55, 13, 9, -3, -105, 92, -27, -64, 57, 101, 108, -84, -14, 50, -116, -85, -104, 100, 90, -84, -11, 50, -115, -86, -96, -107, 9, -3, -105, 87, -27, -61, -56, 50, 8, -52, -106, 99, 21, -86, -92, 101, 109, -84, -13, 50, -117, -85, -104, 100, 90, -83, -60, 50, -118, -86, -84, 101, 101}, new byte[]{71, -30, 53, 122, 25, -75, -40, 124}));
                return;
            }
            LinearLayout linearLayoutM5065j = m5065j();
            TextView textViewM5051P = m5051P(z9 ? AbstractC1387m.m2421h(new byte[]{-98, 48, 47, 1, -104, 29, 111, -29, -98, 21, 47, 15, -104, 19, 110, -47, -98, 31, 46, 54, -103, 40, 111, -19, -97, 35, -33, 100, -3, 77, 10, -122, -9, 126, 126, 101, -53, 77, 13, -122, -10, ByteCompanionObject.MAX_VALUE, 70}, new byte[]{78, -81, -1, -76, 73, -99, -65, 86}) : AbstractC1387m.m2421h(new byte[]{-120, -40, -79, -48, -14, -86, 50, 122, -119, -50, -79, -41, -14, -85, 50, 116, 120, -100, -39, 69, -14, -84, 50, 123, -120, -12, -79, -34, -14, -83, 51, 77, -120, -7, -79, -40, -14, -85, 50, 116}, new byte[]{88, 76, 97, 101, 34, 19, -29, -5}), 25, -1);
            textViewM5051P.setTypeface(Typeface.DEFAULT_BOLD);
            textViewM5051P.setMaxLines(1);
            linearLayoutM5065j.addView(textViewM5051P);
            if (!z9) {
                strM2075i = AbstractC1387m.m2421h(new byte[]{-9, -66, -4, 125, 75, -22, -33, -20, -9, -101, -3, 79, 75, -23, 47, ByteCompanionObject.MIN_VALUE, -102, -13, -100, -19, 74, -47, -33, -21, -9, -106, -4, 113, 75, -23, -33, -19, -10, -95, 12, 47, 27, -56, 47, ByteCompanionObject.MIN_VALUE, -99, -13, -111, 29, 37, -116, -80, ByteCompanionObject.MIN_VALUE, -99, -13, -100, -19, 74, -35, -34, -48, -9, -109, -4, 122, 74, -33, 47, ByteCompanionObject.MIN_VALUE, -104, -13, -110, 28, 20, -116, -67, ByteCompanionObject.MIN_VALUE, -97, -14, -82, 28, 26, -115, ByteCompanionObject.MIN_VALUE, 112, -9, -98, -4, 125, -69, -115, -113, ByteCompanionObject.MIN_VALUE, -105, -13, -99, 29, 37, -115, -120, ByteCompanionObject.MIN_VALUE, -110, -13, -112, -19, 74, -35, -34, -46, -9, -99, -4, 118, 75, -23}, new byte[]{39, 35, 44, -51, -101, 92, 15, 80});
            } else if (c1919e == null) {
                strM2075i = AbstractC1387m.m2421h(new byte[]{-24, 126, -64, 37, 62, ByteCompanionObject.MAX_VALUE, -92, 97, -23, 108, -63, 22, 63, 76, -92, 97, 24, 60, -91, 126, 91, 30, -51, 5, -71, Base64.padSymbol, -109, 126, 92, 30, -52, 4, -115, -52, -63, 26, 62, 117, -91, 91, 24, 60, -82, 126, 91, 31, -12, 4, -118, 60, -81, 126, 93, 30, -54, -12, -24, 81, -63, 30, 62, 120, -92, 100, -23, 110, -63, 22, 63, 65}, new byte[]{56, -20, 17, -82, -18, -50, 116, -44});
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(AbstractC1387m.m2421h(new byte[]{-82, 126, -83, 87, 119, 12, 42, 77, -82, 95, -83, 87, -100, -84}, new byte[]{126, -31, 125, -30, -90, -116, -6, -1}));
                sb.append(m5030b(c1919e));
                strM2075i = AbstractC1178q.m2075i(new byte[]{112, -80, -89, 9, 56, -79, -99, 28, -114, 37, -90, 43, 57, -120, 109, 115, -20, 65, -4, 123, 89, -44, -8, 114, -34, 64, -49, 122, 106, -44, -8, -125, -114, 36, -89, 30, 56, -67, -100, 34, -113, 18, -89, 25, 56, -68, -99, 22, 126, 64, -61, 123, 83, -43, -62, -125, -113, 17, -89, 16, 56, -79, -99, 23, -113, 19, -90, 37, 57, -115, -99, 22, -114, 35, -89, 21, -56, -44, -16, 115, -18, 64, -63, 123, 88, -43, -49, 115, -26, 65, -8}, new byte[]{94, -112, 119, -85, -24, 4, 77, -93}, sb);
            }
            linearLayoutM5065j.addView(m5066k(strM2075i));
            EditText editText = new EditText(getContext());
            editText.setSingleLine(true);
            editText.setTextSize(16.0f);
            editText.setTextColor(-1);
            editText.setHintTextColor(-8218712);
            editText.setHint(AbstractC1387m.m2421h(new byte[]{28, -54, 78, 101, -62, -67, -47, -61, 28, -17, -66, 11, -83, -43, -66, 98, 28, -24, 78, 107, -62, -78, -48, -16, 28, -27, 78, 102, -62, -67, -47, -52}, new byte[]{-52, 85, -98, -37, 18, 5, 0, 66}));
            editText.setPadding(m5067l(18), 0, m5067l(18), 0);
            editText.setBackground(m5043G(-15721692, 15, -13547174));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, m5067l(54));
            layoutParams.topMargin = m5067l(14);
            layoutParams.bottomMargin = m5067l(12);
            linearLayoutM5065j.addView(editText, layoutParams);
            ListView listView = new ListView(getContext());
            listView.setDivider(null);
            listView.setDividerHeight(0);
            listView.setCacheColorHint(0);
            listView.setBackgroundColor(0);
            final C3150i0 c3150i0 = new C3150i0(this, arrayList);
            if (c3150i0.f9030c.size() == 0) {
                AbstractC3656k.m5878x(getContext(), AbstractC1387m.m2421h(new byte[]{84, 10, -49, 84, -4, -120, -79, 114, 48, 71, -95, 48, -84, -37, 19, 115, 7, 71, -96, 49, -112, -37, 26, 115, 1, -73, -49, 85, -3, -79, 64, 45, -92, 71, -88, 49, -99, -38, 46, 115, 7, 70, -98, 49, -105, -38, 33, -126, 84, 35, -49, 84, -3, -77, 64, 35, 85, 21, -49, 83, -3, -78, 65, 27}, new byte[]{-124, -105, 31, -31, 45, 10, -111, -94}));
                return;
            }
            listView.setAdapter((ListAdapter) c3150i0);
            linearLayoutM5065j.addView(listView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
            Button buttonM5053R = m5053R(AbstractC1387m.m2421h(new byte[]{121, -24, 0, -112, 68, 117, -76, 126, 120, -12, 1, -94, 69, 67}, new byte[]{-87, ByteCompanionObject.MAX_VALUE, -48, 32, -108, -49, 101, -2}), false);
            buttonM5053R.setTextSize(16.0f);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(m5067l(170), m5067l(50));
            layoutParams2.gravity = 5;
            layoutParams2.topMargin = m5067l(12);
            linearLayoutM5065j.addView(buttonM5053R, layoutParams2);
            final AlertDialog alertDialogCreate = new AlertDialog.Builder(getContext()).setView(linearLayoutM5065j).create();
            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: s1.e0
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
                    C3166q0 c3166q0 = this.f8995b;
                    ArrayList arrayList2 = c3166q0.f9181q;
                    C1919e c1919e2 = (C1919e) c3150i0.f9030c.get(i10);
                    alertDialogCreate.dismiss();
                    if (!z9) {
                        float[] fArrM5069n = c3166q0.m5069n(0.1f, 0.14f);
                        C3152j0 c3152j0 = new C3152j0(EnumC3158m0.f9104e, fArrM5069n[0], fArrM5069n[1], 0.1f, 0.14f, AbstractC1920f.m3009g(c1919e2));
                        arrayList2.add(c3152j0);
                        c3166q0.f9186v = c3152j0.f9043a;
                        c3166q0.m5076y();
                        c3166q0.m5037A();
                        return;
                    }
                    C1919e c1919e3 = c1919e;
                    if (c1919e3 == null) {
                        c3166q0.m5049M(arrayList, true, c1919e2);
                        return;
                    }
                    float[] fArrM5069n2 = c3166q0.m5069n(0.1f, 0.14f);
                    EnumC3158m0 enumC3158m0 = EnumC3158m0.f9105f;
                    float f8 = fArrM5069n2[0];
                    float f10 = fArrM5069n2[1];
                    String strM3009g = AbstractC1920f.m3009g(c1919e3);
                    String strM3009g2 = AbstractC1920f.m3009g(c1919e2);
                    String string = UUID.randomUUID().toString();
                    arrayList2.add(new C3152j0(string, enumC3158m0, f8, f10, 0.1f, 0.14f, strM3009g, strM3009g2, false));
                    c3166q0.f9186v = string;
                    c3166q0.m5076y();
                    c3166q0.m5037A();
                }
            });
            editText.addTextChangedListener(new C3148h0(c3150i0, 1));
            buttonM5053R.setOnClickListener(new ViewOnClickListenerC3091d(alertDialogCreate, 3));
            m5050N(alertDialogCreate, 820);
        }
    }

    /* JADX INFO: renamed from: N */
    public final void m5050N(AlertDialog alertDialog, int i10) {
        alertDialog.setCanceledOnTouchOutside(true);
        alertDialog.show();
        Window window = alertDialog.getWindow();
        if (window == null) {
            return;
        }
        window.setBackgroundDrawableResource(R.color.transparent);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = 0.72f;
        window.setAttributes(attributes);
        window.addFlags(2);
        window.setLayout(Math.min(m5067l(i10), getResources().getDisplayMetrics().widthPixels - m5067l(40)), Math.min(m5067l(650), getResources().getDisplayMetrics().heightPixels - m5067l(48)));
    }

    /* JADX INFO: renamed from: P */
    public final TextView m5051P(String str, int i10, int i11) {
        TextView textView = new TextView(getContext());
        textView.setText(str);
        textView.setTextSize(i10);
        textView.setTextColor(i11);
        return textView;
    }

    /* JADX INFO: renamed from: Q */
    public final LinearLayout m5052Q() {
        return m5077z(AbstractC1387m.m2421h(new byte[]{51, -61, 68}, new byte[]{-47, 68, -64, -67, 41, -58, 16, -56}), -9382222, AbstractC1387m.m2421h(new byte[]{-113, 19, Base64.padSymbol, -39, 12, -116, -24, -42, -113, 54, Base64.padSymbol, -41, 12, -126, -23, -28, -113, 60, 60, -18, 13, -71, -24, -40, -114, 0, -51, -68, 105, -36, -118, -78, -36, 93, 104, 76, 13, -72, -24, -42, -113, 53, 60, -19, 12, -114, -24, -47, -113, 52, Base64.padSymbol, -43}, new byte[]{95, -116, -19, 108, -35, 12, 56, 99}), AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, 42, -22, -126, 3, 1, -87, 77, -113, 100, -121, -26, 99, 108, -49, 35, 31, 101, -72, -26, 107, 108, -52, -45, ByteCompanionObject.MAX_VALUE, 3, -22, -122, 3, 3, -88, 112, 126, 53, -22, -116, 3, 12, -87, 70, 126, 54, 26, -26, 108, 108, -52, 34, 47, 100, -120, -26, 109, 108, -52, -45, ByteCompanionObject.MAX_VALUE, 0, -22, -125, 3, 5, -88, 114, 126, 54, -22, -124, 3, 4, -87, 70, -125, -108, -21, -73, 3, 7, -87, 70, ByteCompanionObject.MAX_VALUE, 0, -21, -75, 2, 50, -88, 122, ByteCompanionObject.MAX_VALUE, 1, -22, -125, -13, 94, -7, 103, -113, 100, -120, -25, 81, 108, -57, 34, 47, 100, -124, -26, 102}, new byte[]{-81, -76, 58, 54, -45, -68, 121, -13}));
    }

    /* JADX INFO: renamed from: R */
    public final Button m5053R(String str, boolean z9) {
        Button button = new Button(getContext());
        button.setText(str);
        button.setTextSize(14.0f);
        button.setTextColor(-1);
        button.setAllCaps(false);
        button.setMinHeight(0);
        button.setMinimumHeight(0);
        button.setPadding(m5067l(8), 0, m5067l(8), 0);
        button.setBackground(m5043G(z9 ? -14446919 : -14273213, 12, z9 ? -10959635 : -12889500));
        return button;
    }

    /* JADX INFO: renamed from: S */
    public final LinearLayout.LayoutParams m5054S(int i10) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(m5067l(i10), m5067l(46));
        layoutParams.setMargins(m5067l(4), 0, m5067l(4), 0);
        return layoutParams;
    }

    /* JADX INFO: renamed from: T */
    public final void m5055T(C3156l0 c3156l0) {
        String strM2076j;
        EnumC3158m0 enumC3158m0 = c3156l0.f9080b.f9044b;
        if (enumC3158m0 == EnumC3158m0.f9102c) {
            c3156l0.f9087i.setText(this.f9187w);
            int i10 = this.f9188x;
            ImageView imageView = c3156l0.f9086h;
            if (i10 == 0) {
                imageView.setImageDrawable(null);
                return;
            }
            try {
                imageView.setImageResource(i10);
                return;
            } catch (RuntimeException unused) {
                c3156l0.f9086h.setImageDrawable(null);
                return;
            }
        }
        if (enumC3158m0 == EnumC3158m0.f9103d) {
            C3129a c3129a = this.f9189y;
            String strM2421h = (c3129a == null || TextUtils.isEmpty(c3129a.f8948b)) ? AbstractC1387m.m2421h(new byte[]{-48, 104, 79, -107, 120, 20, 52, -78, -48, 78, 78, -90, -120, 115, 88, -23, -75, -44, 78, -82, 120, 16, 52, -71, -48, 68, 78, -93, 121, 33}, new byte[]{0, -12, -98, 22, -88, -93, -27, 57}) : this.f9189y.f8948b;
            C3129a c3129a2 = this.f9189y;
            String strM2421h2 = (c3129a2 == null || TextUtils.isEmpty(c3129a2.f8949c)) ? AbstractC1387m.m2421h(new byte[]{42, 101, -20, -120, -9, -52, 94, -118, 43, 115, -19, -70, -9, -53, 94, -117, 42, 71, 28, -24, -104, -94, 15, -39, 68, 34, -124, -24, -108, -94, 15, -40, 113, 34, -114, -24, -105, -94, 13, -39, 79, 34, -121, -23, -85}, new byte[]{-6, -14, 60, 56, 39, 115, -113, 9}) : this.f9189y.f8949c;
            c3156l0.f9089k.setText(strM2421h);
            c3156l0.f9090l.setText(strM2421h2);
            C3129a c3129a3 = this.f9189y;
            if (c3129a3 == null || c3129a3.f8951e == null) {
                c3156l0.f9088j.setImageResource(R.drawable.ic_media_play);
                c3156l0.f9088j.setPadding(m5067l(18), m5067l(18), m5067l(18), m5067l(18));
                return;
            } else {
                c3156l0.f9088j.setPadding(0, 0, 0, 0);
                c3156l0.f9088j.setImageBitmap(this.f9189y.f8951e);
                return;
            }
        }
        boolean zM5034r = m5034r(enumC3158m0);
        C3152j0 c3152j0 = c3156l0.f9080b;
        if (!zM5034r) {
            if (c3152j0.f9044b == EnumC3158m0.f9105f) {
                C1919e c1919eM3004b = AbstractC1920f.m3004b(getContext(), c3152j0.f9051i ? c3152j0.f9050h : c3152j0.f9049g);
                Drawable drawable = c1919eM3004b.f5067j;
                ImageView imageView2 = c3156l0.f9092n;
                if (drawable != null) {
                    imageView2.setImageDrawable(drawable);
                } else {
                    imageView2.setImageResource(R.drawable.ic_menu_rotate);
                }
                c3156l0.f9093o.setText(m5030b(c1919eM3004b));
                c3156l0.f9094p.setText(c3152j0.f9051i ? AbstractC1387m.m2421h(new byte[]{9, 71, 25, 9, -75}, new byte[]{59, 103, 54, 41, -121, -127, -18, 51}) : AbstractC1387m.m2421h(new byte[]{-47, -99, ByteCompanionObject.MIN_VALUE, 108, 71}, new byte[]{-32, -67, -81, 76, 117, -38, 39, -54}));
                return;
            }
            return;
        }
        int iMax = Math.max(0, m5046J(c3152j0.f9044b) - 1);
        TextView textView = c3156l0.f9091m;
        if (iMax == 0) {
            strM2076j = AbstractC1387m.m2421h(new byte[]{-91, 31, 52, -58, 67, -42, -103, 22}, new byte[]{117, -115, -27, 77, -109, 108, 73, -83});
        } else {
            strM2076j = AbstractC1178q.m2076j(new byte[]{104, -67, 104, -98, 34, -108, -36, 94, 104, -85, 105, -93, 35, -90, 44}, new byte[]{-72, 30, -71, 30, -14, 42, 12, -20}, new StringBuilder(), iMax);
        }
        textView.setText(strM2076j);
        int i11 = m5033q(c3156l0.f9080b.f9044b) ? -35235 : -11155473;
        int i12 = 0;
        while (true) {
            View[] viewArr = c3156l0.f9095q;
            if (i12 >= viewArr.length) {
                return;
            }
            boolean z9 = i12 < iMax;
            viewArr[i12].setBackground(m5043G(z9 ? i11 : -14272444, 5, z9 ? i11 : -12757658));
            i12++;
        }
    }

    /* JADX INFO: renamed from: U */
    public final void m5056U() {
        C3152j0 c3152j0M5070o = m5070o(this.f9186v);
        boolean z9 = false;
        this.f9174j.setEnabled(c3152j0M5070o != null);
        if (c3152j0M5070o != null && c3152j0M5070o.f9044b != EnumC3158m0.f9104e) {
            z9 = true;
        }
        this.f9172h.setEnabled(z9);
        this.f9173i.setEnabled(z9);
    }

    /* JADX INFO: renamed from: V */
    public final LinearLayout m5057V() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        return linearLayout;
    }

    /* JADX INFO: renamed from: W */
    public final LinearLayout m5058W(int i10, String str, String str2, String str3, boolean z9) {
        LinearLayout linearLayoutM5057V = m5057V();
        linearLayoutM5057V.setGravity(1);
        linearLayoutM5057V.setPadding(m5067l(14), m5067l(12), m5067l(14), m5067l(12));
        linearLayoutM5057V.setBackground(m5043G(-15194575, 18, z9 ? -11751549 : -13086364));
        linearLayoutM5057V.setClickable(true);
        linearLayoutM5057V.setFocusable(true);
        TextView textViewM5051P = m5051P(str, str.indexOf(58) >= 0 ? 28 : 34, i10);
        Typeface typeface = Typeface.DEFAULT_BOLD;
        textViewM5051P.setTypeface(typeface);
        textViewM5051P.setGravity(17);
        textViewM5051P.setBackground(m5043G(-15919329, 16, i10));
        linearLayoutM5057V.addView(textViewM5051P, new LinearLayout.LayoutParams(m5067l(92), m5067l(64)));
        TextView textViewM5051P2 = m5051P(str2, 17, -1);
        textViewM5051P2.setTypeface(typeface);
        textViewM5051P2.setGravity(17);
        textViewM5051P2.setMaxLines(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = m5067l(8);
        linearLayoutM5057V.addView(textViewM5051P2, layoutParams);
        if (z9) {
            str3 = AbstractC1387m.m2421h(new byte[]{-18, -72, 75, -27, -59, -80, 0, 53, -125, -53, 43, 115, -60, -120, -16, 95, -17, -101, 75, -29, -59, -72, -16, 80}, new byte[]{62, 27, -101, 83, 21, 5, 32, -27});
        }
        TextView textViewM5051P3 = m5051P(str3, 12, z9 ? -9250909 : -6376767);
        textViewM5051P3.setGravity(17);
        textViewM5051P3.setMaxLines(2);
        textViewM5051P3.setEllipsize(TextUtils.TruncateAt.END);
        linearLayoutM5057V.addView(textViewM5051P3, new LinearLayout.LayoutParams(-1, -2));
        return linearLayoutM5057V;
    }

    /* JADX INFO: renamed from: a */
    public final LinearLayout m5059a() {
        return m5077z(AbstractC1387m.m2421h(new byte[]{29, 121, -24}, new byte[]{-1, -17, 78, -69, 111, 121, -71, 70}), -10104077, AbstractC1387m.m2421h(new byte[]{-108, -12, 14, 60, -56, -2, ByteCompanionObject.MAX_VALUE, -84, -107, -30, 14, 59, -56, -1, ByteCompanionObject.MAX_VALUE, -94, 100, -80, 102, -87, -56, -8, ByteCompanionObject.MAX_VALUE, -83, -108, -40, 14, 50, -56, -7, 126, -101, -108, -43, 14, 52, -56, -1, ByteCompanionObject.MAX_VALUE, -94}, new byte[]{68, 96, -34, -119, 24, 71, -82, 45}), AbstractC1387m.m2421h(new byte[]{57, -38, 51, 43, 100, 103, -51, -46, 57, -5, 50, 29, 100, 106, -51, -44, 57, -3, 51, 36, -104, -1, -52, -23, 57, -11, 50, 28, 100, 107, -51, -36, 57, -2, 50, 30, 100, 98, -51, -47, 57, -16, -62, 122, 57, 15, -89, -72, 105, -107, 82, 123, 9, 15, -83, 69, -55, -108, 99, 123, 12, 14, -100, -72, 107, -107, 87, 123, 8, 15, -96, -72, 98, -107, 87, -117, 100, 103, Base64.padSymbol, -71, 86, -107, 92, 123, 15, 14, -111, -71, 94, -107, 92, 123, 6, 15, -83, -72, 107, -107, 87, 123, 15, 14, -111, -72, 104, -107, 88, 123, 12, 15, -88, 73, 57, -1, 50, 21, 100, 99, -51, -39, 57, -8, 50, 31, 101, 84}, new byte[]{-23, 69, -30, -85, -76, -33, 29, 105}));
    }

    /* JADX INFO: renamed from: c */
    public final void m5060c() {
        EnumC3158m0 enumC3158m0 = EnumC3158m0.f9104e;
        C3152j0 c3152j0 = new C3152j0(enumC3158m0, 0.43f, 0.72f, 0.1f, 0.14f, AbstractC1387m.m2421h(new byte[]{75, -84, -119, -73, 3, -59, 97, 75, 113, -111, -88, -101, 107, -61, 107, 68, 126, -110, -93, -105, 124, -39, 97}, new byte[]{46, -62, -4, -38, 57, -105, 52, 5}));
        ArrayList arrayList = this.f9181q;
        arrayList.add(c3152j0);
        arrayList.add(new C3152j0(enumC3158m0, 0.535f, 0.72f, 0.1f, 0.14f, AbstractC1387m.m2421h(new byte[]{-16, -83, -12, 23, -13, -97, 12, 88, -48, -115, -43, 37, -99, -116, 26, 80, -54, -114, -64, 52, -120, -118, 12, 73}, new byte[]{-107, -61, -127, 122, -55, -51, 73, 27})));
        arrayList.add(new C3152j0(enumC3158m0, 0.64f, 0.72f, 0.1f, 0.14f, AbstractC1387m.m2421h(new byte[]{76, -39, -2, -117, 75, -27, 126, 102, 96, -29, -44, -76, 36, -8}, new byte[]{41, -73, -117, -26, 113, -74, 46, 42})));
        arrayList.add(new C3152j0(enumC3158m0, 0.745f, 0.72f, 0.1f, 0.14f, AbstractC1387m.m2421h(new byte[]{-38, -60, 74, -38, 14, -5, 22, -126, -10, -21, 96, -25, 120, -9, 10, -103, -17, -21, 106, -28, 113}, new byte[]{-65, -86, 63, -73, 52, -74, 83, -58})));
    }

    /* JADX INFO: renamed from: d */
    public final void m5061d(EnumC3158m0 enumC3158m0) {
        ArrayList arrayList = this.f9181q;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C3152j0 c3152j0 = (C3152j0) obj;
            if (c3152j0.f9044b == enumC3158m0) {
                this.f9186v = c3152j0.f9043a;
                m5037A();
                AbstractC3656k.m5878x(getContext(), AbstractC1387m.m2421h(new byte[]{120, -4, 66, 3, -25, -16, -24, -17, -120, -127, 33, 81, -113, -98, -115, -67, 30, -127, 38, 80, -75, 110, -24, -18, 120, -25, 67, 52, 23, -98, -115, -67, 22, -127, 34, 81, -121, -98, -117, -67, 19, -127, 38, 81, -118}, new byte[]{-88, 81, -109, -127, 55, 78, 57, 109}));
                return;
            }
        }
        float[] fArrM5032i = m5032i(enumC3158m0);
        float[] fArrM5069n = m5069n(fArrM5032i[0], fArrM5032i[1]);
        C3152j0 c3152j1 = new C3152j0(enumC3158m0, fArrM5069n[0], fArrM5069n[1], fArrM5032i[0], fArrM5032i[1], null);
        arrayList.add(c3152j1);
        this.f9186v = c3152j1.f9043a;
        m5076y();
        m5037A();
    }

    /* JADX INFO: renamed from: e */
    public final void m5062e(C3156l0 c3156l0) {
        C3152j0 c3152j0 = c3156l0.f9080b;
        boolean z9 = this.f9183s && c3152j0.f9043a.equals(this.f9186v);
        c3156l0.setElevation(m5067l(this.f9183s ? 16 : 7));
        c3156l0.setBackground(m5043G(z9 ? -232112560 : -602463442, c3152j0.f9044b == EnumC3158m0.f9104e ? 18 : 24, z9 ? -11222036 : -13547946));
        c3156l0.f9082d.setVisibility(this.f9183s ? 0 : 8);
        boolean z10 = this.f9183s;
        c3156l0.f9085g = z10;
        TextureViewSurfaceTextureListenerC3135b textureViewSurfaceTextureListenerC3135b = c3156l0.f9084f;
        if (textureViewSurfaceTextureListenerC3135b != null) {
            textureViewSurfaceTextureListenerC3135b.f8975l = z10;
            if (z10 && textureViewSurfaceTextureListenerC3135b.f8976m && textureViewSurfaceTextureListenerC3135b.f8969f.f9254f) {
                textureViewSurfaceTextureListenerC3135b.m4978f(AbstractC1387m.m2421h(new byte[]{117, -10, -53, 40, 92, -103, 38, 35, -123, -72, -84, 66, 60, -12, 73, 76, 38, -71, -102, 67, 14, -12, 78, 76, 39, -71, -102, 67, 3, 4, 38, 34, 117, -42, -54, 19, 92, -97, 38, 40, -123, -71, -102, 66, 50, -11, 115, 76, 37, -72, -85, 66, 49, -12, 67, 77, 24, -72, -93, 67, 3}, new byte[]{-91, 104, 27, -110, -116, 36, -10, -99}));
            }
            if (!textureViewSurfaceTextureListenerC3135b.f8975l) {
                textureViewSurfaceTextureListenerC3135b.m4976d();
            }
        }
        TextView textView = c3156l0.f9083e;
        if (textView != null) {
            textView.setVisibility(this.f9183s ? 0 : 8);
        }
    }

    /* JADX INFO: renamed from: f */
    public final LinearLayout.LayoutParams m5063f() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, m5067l(158), 1.0f);
        layoutParams.setMargins(m5067l(5), m5067l(4), m5067l(5), m5067l(4));
        return layoutParams;
    }

    /* JADX INFO: renamed from: h */
    public final boolean m5064h(EnumC3158m0 enumC3158m0) {
        ArrayList arrayList = this.f9181q;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            if (((C3152j0) obj).f9044b == enumC3158m0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: j */
    public final LinearLayout m5065j() {
        LinearLayout linearLayoutM5057V = m5057V();
        linearLayoutM5057V.setPadding(m5067l(24), m5067l(22), m5067l(24), m5067l(20));
        linearLayoutM5057V.setBackground(m5043G(-15721949, 24, -13217692));
        return linearLayoutM5057V;
    }

    /* JADX INFO: renamed from: k */
    public final TextView m5066k(String str) {
        TextView textViewM5051P = m5051P(str, 14, -6376767);
        textViewM5051P.setPadding(0, m5067l(4), 0, m5067l(12));
        textViewM5051P.setMaxLines(2);
        return textViewM5051P;
    }

    /* JADX INFO: renamed from: l */
    public final int m5067l(int i10) {
        return Math.round(i10 * getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: renamed from: m */
    public final void m5068m() {
        if (this.f9183s) {
            return;
        }
        this.f9183s = true;
        this.f9185u = m5048L();
        m5076y();
        this.f9186v = null;
        LinearLayout linearLayout = this.f9170f;
        linearLayout.setVisibility(0);
        linearLayout.bringToFront();
        m5037A();
        WebLauncherActivity webLauncherActivity = (WebLauncherActivity) this.f9166b.f6648c;
        webLauncherActivity.f1749j = true;
        webLauncherActivity.m1654t();
        AbstractC3656k.m5878x(getContext(), AbstractC1387m.m2421h(new byte[]{-19, 54, 123, -69, -64, 18, -52, 115, -20, 36, 122, -120, -63, 33, -52, 115, 29, 116, 24, -32, -88, 115, -88, 22, -117, 116, 31, -31, -110, -103, 60, 22, -120, 116, 25, -32, -82, -125, -52, 122, -19, 26, 122, -122, -64, 30, -52, 120, 29, 116, 21, -32, -91, 114, -100, 22, -120, 116, 22, -32, -91, 114, -99, 23, -65, 116, 18, -31, -110, 114, -112, -22, 29, 117, 41, -32, -84, 115, -87, 22, ByteCompanionObject.MIN_VALUE, 117, 38, -31, -104, 115, -92, 23, -65, 117, 38, 16, -64, 27, -52, 125, -19, 28, -118, -31, -109, 115, -82, 22, -120, 116, 17, -32, -88, 114, -101, 22, -123, 117, 40, -31, -100, -115}, new byte[]{Base64.padSymbol, -92, -86, 48, 16, -93, 28, -58}));
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002a  */
    /* JADX INFO: renamed from: n */
    public final float[] m5069n(float f8, float f10) {
        for (int i10 = this.f9183s ? 2 : 0; i10 < 14; i10++) {
            for (int i11 = 0; i11 < 24; i11++) {
                float f11 = i11 / 24.0f;
                float f12 = i10 / 14.0f;
                float f13 = f11 + f8;
                if (f13 <= 1.0f) {
                    float f14 = f12 + f10;
                    if (f14 <= 1.0f) {
                        ArrayList arrayList = this.f9181q;
                        int size = arrayList.size();
                        int i12 = 0;
                        while (i12 < size) {
                            Object obj = arrayList.get(i12);
                            i12++;
                            C3152j0 c3152j0 = (C3152j0) obj;
                            float f15 = c3152j0.f9045c;
                            if (f11 < c3152j0.f9047e + f15 && f13 > f15) {
                                float f16 = c3152j0.f9046d;
                                if (f12 >= c3152j0.f9048f + f16 || f14 <= f16) {
                                }
                            }
                        }
                        return new float[]{f11, f12};
                    }
                }
            }
        }
        return new float[]{Math.max(0.0f, (1.0f - f8) / 2.0f), Math.max(0.0f, (1.0f - f10) / 2.0f)};
    }

    /* JADX INFO: renamed from: o */
    public final C3152j0 m5070o(String str) {
        ArrayList arrayList = this.f9181q;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C3152j0 c3152j0 = (C3152j0) obj;
            if (c3152j0.f9043a.equals(str)) {
                return c3152j0;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Handler handler = this.f9182r;
        RunnableC3144f0 runnableC3144f0 = this.f9180p;
        handler.removeCallbacks(runnableC3144f0);
        handler.post(runnableC3144f0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f9182r.removeCallbacks(this.f9180p);
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z9, int i10, int i11, int i12, int i13) {
        super.onLayout(z9, i10, i11, i12, i13);
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        this.f9167c.layout(0, 0, i14, i15);
        this.f9168d.layout(0, 0, i14, i15);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f9169e.post(new RunnableC3138c0(this, 0));
    }

    /* JADX INFO: renamed from: p */
    public final int[] m5071p(EnumC3158m0 enumC3158m0, int i10, int i11, float f8) {
        if (enumC3158m0 == EnumC3158m0.f9107h) {
            return new int[]{i10, i11};
        }
        if (enumC3158m0 == EnumC3158m0.f9104e) {
            return new int[]{i10, Math.min(i11, Math.max(m5067l(64), Math.round(i10 / f8)))};
        }
        int iMin = Math.min(i10, Math.max(1, Math.round(i11 * f8)));
        return new int[]{iMin, Math.min(i11, Math.max(1, Math.round(iMin / f8)))};
    }

    /* JADX INFO: renamed from: s */
    public final void m5072s() {
        float f8;
        C3166q0 c3166q0 = this;
        C3162o0 c3162o0 = c3166q0.f9169e;
        int width = c3162o0.getWidth();
        int height = c3162o0.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        int i10 = 0;
        while (i10 < c3162o0.getChildCount()) {
            View childAt = c3162o0.getChildAt(i10);
            C3152j0 c3152j0 = (C3152j0) childAt.getTag();
            int iM5067l = c3166q0.m5067l(72);
            float f10 = width;
            float f11 = c3152j0.f9047e;
            EnumC3158m0 enumC3158m0 = c3152j0.f9044b;
            int iMax = Math.max(iM5067l, Math.round(f11 * f10));
            float f12 = height;
            int iMax2 = Math.max(c3166q0.m5067l(64), Math.round(c3152j0.f9048f * f12));
            if (enumC3158m0 == EnumC3158m0.f9103d) {
                f8 = 3.6f;
            } else if (m5034r(enumC3158m0)) {
                f8 = 1.45f;
            } else {
                f8 = (enumC3158m0 == EnumC3158m0.f9104e || enumC3158m0 == EnumC3158m0.f9105f || enumC3158m0 == EnumC3158m0.f9106g) ? 1.25f : 2.1f;
            }
            int[] iArrM5071p = c3166q0.m5071p(enumC3158m0, iMax, iMax2, f8);
            int i11 = iArrM5071p[0];
            int i12 = iArrM5071p[1];
            childAt.setLayoutParams(new FrameLayout.LayoutParams(i11, i12));
            View view = ((C3156l0) childAt).f9081c;
            C3162o0 c3162o1 = c3162o0;
            if (view != null) {
                if (enumC3158m0 == EnumC3158m0.f9107h) {
                    view.setLayoutParams(new FrameLayout.LayoutParams(i11, i12));
                } else {
                    float[] fArrM5032i = m5032i(enumC3158m0);
                    int[] iArrM5071p2 = c3166q0.m5071p(enumC3158m0, Math.max(c3166q0.m5067l(72), Math.round(fArrM5032i[0] * f10)), Math.max(c3166q0.m5067l(64), Math.round(fArrM5032i[1] * f12)), f8);
                    int i13 = iArrM5071p2[0];
                    int i14 = iArrM5071p2[1];
                    float f13 = i11;
                    float f14 = i12;
                    float fM5031g = m5031g(Math.min(f13 / Math.max(1, i13), f14 / Math.max(1, i14)), 0.55f, 2.35f);
                    view.setLayoutParams(new FrameLayout.LayoutParams(i13, i14));
                    view.setPivotX(0.0f);
                    view.setPivotY(0.0f);
                    view.setScaleX(fM5031g);
                    view.setScaleY(fM5031g);
                    view.setTranslationX((f13 - (i13 * fM5031g)) / 2.0f);
                    view.setTranslationY((f14 - (i14 * fM5031g)) / 2.0f);
                }
            }
            float f15 = ((iMax - i11) / 2.0f) + (c3152j0.f9045c * f10);
            float f16 = ((iMax2 - i12) / 2.0f) + (c3152j0.f9046d * f12);
            childAt.setX(m5031g(f15, 0.0f, width - i11));
            childAt.setY(m5031g(f16, 0.0f, height - i12));
            i10++;
            c3166q0 = this;
            height = height;
            c3162o0 = c3162o1;
            width = width;
        }
    }

    /* JADX INFO: renamed from: t */
    public final void m5073t(boolean z9) {
        AbstractC3656k.m5878x(getContext(), AbstractC1387m.m2421h(new byte[]{-33, 43, 47, -92, 36, -125, 100, 65, -34, 63, 47, -94, 36, ByteCompanionObject.MIN_VALUE, 100, 79, 47, 108, 75, -60, 65, -32, 12, 16, -114, 109, 125, -60, 70, -32, 13, 16, ByteCompanionObject.MIN_VALUE, 94, ByteCompanionObject.MAX_VALUE, -78}, new byte[]{15, -68, -1, 20, -12, 48, -75, -63}));
        this.f9175k.execute(new RunnableC1001e(this, z9, 8));
    }

    /* JADX INFO: renamed from: u */
    public final void m5074u(String str) {
        int iOptInt;
        Object obj;
        ArrayList arrayList = this.f9181q;
        arrayList.clear();
        this.f9184t = true;
        if (TextUtils.isEmpty(str)) {
            iOptInt = 0;
        } else {
            try {
                JSONObject jSONObject = new JSONObject(str);
                iOptInt = jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{-11, 85, -94, 114, -44, 38, 3}, new byte[]{-125, 48, -48, 1, -67, 73, 109, -96}), 1);
                try {
                    this.f9184t = jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{1, 32, 46, -11}, new byte[]{114, 78, 79, -123, -94, -80, -124, ByteCompanionObject.MAX_VALUE}), true);
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(AbstractC1387m.m2421h(new byte[]{-6, -115, 37, -15, -45}, new byte[]{-109, -7, 64, -100, -96, 6, 83, -8}));
                    if (jSONArrayOptJSONArray != null) {
                        for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                            C3152j0 c3152j0M4984a = C3152j0.m4984a(jSONArrayOptJSONArray.getJSONObject(i10));
                            if (c3152j0M4984a != null) {
                                arrayList.add(c3152j0M4984a);
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
            arrayList.add(new C3152j0(EnumC3158m0.f9101b, 0.03f, 0.06f, 0.22f, 0.18f, null));
            arrayList.add(new C3152j0(EnumC3158m0.f9102c, 0.75f, 0.06f, 0.22f, 0.18f, null));
            arrayList.add(new C3152j0(EnumC3158m0.f9103d, 0.03f, 0.7f, 0.38f, 0.19f, null));
            m5060c();
        } else {
            if (iOptInt < 2) {
                int size = arrayList.size();
                int i11 = 0;
                do {
                    if (i11 >= size) {
                        m5060c();
                        break;
                    } else {
                        obj = arrayList.get(i11);
                        i11++;
                    }
                } while (((C3152j0) obj).f9044b != EnumC3158m0.f9104e);
            }
            if (iOptInt < 3) {
                int size2 = arrayList.size();
                int i12 = 0;
                while (i12 < size2) {
                    Object obj2 = arrayList.get(i12);
                    i12++;
                    C3152j0 c3152j0 = (C3152j0) obj2;
                    float[] fArrM5032i = m5032i(c3152j0.f9044b);
                    c3152j0.f9047e = Math.min(c3152j0.f9047e, fArrM5032i[0]);
                    c3152j0.f9048f = Math.min(c3152j0.f9048f, fArrM5032i[1]);
                    c3152j0.f9045c = m5031g(c3152j0.f9045c, 0.0f, 1.0f - c3152j0.f9047e);
                    c3152j0.f9046d = m5031g(c3152j0.f9046d, 0.0f, 1.0f - c3152j0.f9048f);
                }
            }
        }
        this.f9171g.setText(this.f9184t ? AbstractC1387m.m2421h(new byte[]{57, -18, -116, 29, 126, 8, 124, -81, 92, -96, -34, 115, -28, 9, 72}, new byte[]{-23, 113, 92, -93, 94, -39, -3, ByteCompanionObject.MAX_VALUE}) : AbstractC1387m.m2421h(new byte[]{-62, 12, 25, -5, 22, 7, 70, 123, -62, 19, 25, -3, 22, 4, 70, 116}, new byte[]{18, -83, -55, 73, -58, -71, -106, -54}));
        m5037A();
    }

    /* JADX INFO: renamed from: x */
    public final void m5075x(boolean z9) {
        this.f9178n = z9;
        this.f9182r.removeCallbacks(this.f9180p);
        for (int i10 = 0; i10 < this.f9169e.getChildCount(); i10++) {
            TextureViewSurfaceTextureListenerC3135b textureViewSurfaceTextureListenerC3135b = ((C3156l0) this.f9169e.getChildAt(i10)).f9084f;
            if (textureViewSurfaceTextureListenerC3135b != null) {
                textureViewSurfaceTextureListenerC3135b.f8974k = z9;
                if (z9) {
                    textureViewSurfaceTextureListenerC3135b.f8976m = true;
                    textureViewSurfaceTextureListenerC3135b.m4977e(textureViewSurfaceTextureListenerC3135b.f8969f.f9254f);
                } else {
                    LauncherWindowService launcherWindowService = textureViewSurfaceTextureListenerC3135b.f8970g;
                    if (launcherWindowService != null) {
                        VirtualDisplay virtualDisplay = (VirtualDisplay) launcherWindowService.f1736b.get(textureViewSurfaceTextureListenerC3135b.f8965b);
                        if (virtualDisplay != null) {
                            virtualDisplay.setSurface(null);
                        }
                    }
                }
            }
        }
        if (z9) {
            this.f9182r.post(this.f9180p);
        }
    }

    /* JADX INFO: renamed from: y */
    public final void m5076y() {
        C1652b.m2745o().saveString(f9151K, m5048L());
    }

    /* JADX INFO: renamed from: z */
    public final LinearLayout m5077z(String str, int i10, String str2, String str3) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setPadding(m5067l(16), m5067l(12), m5067l(16), m5067l(12));
        linearLayout.setBackground(m5043G(-15194575, 18, -11831662));
        linearLayout.setClickable(true);
        linearLayout.setFocusable(true);
        TextView textViewM5051P = m5051P(str, 34, i10);
        textViewM5051P.setGravity(17);
        textViewM5051P.setBackground(m5043G(-15919329, 15, -12349782));
        linearLayout.addView(textViewM5051P, new LinearLayout.LayoutParams(m5067l(68), m5067l(64)));
        LinearLayout linearLayoutM5057V = m5057V();
        linearLayoutM5057V.setGravity(16);
        linearLayoutM5057V.setPadding(m5067l(16), 0, m5067l(8), 0);
        TextView textViewM5051P2 = m5051P(str2, 18, -1);
        textViewM5051P2.setTypeface(Typeface.DEFAULT_BOLD);
        linearLayoutM5057V.addView(textViewM5051P2);
        TextView textViewM5051P3 = m5051P(str3, 13, -6376767);
        textViewM5051P3.setMaxLines(2);
        linearLayoutM5057V.addView(textViewM5051P3);
        linearLayout.addView(linearLayoutM5057V, new LinearLayout.LayoutParams(0, -1, 1.0f));
        TextView textViewM5051P4 = m5051P(AbstractC1387m.m2421h(new byte[]{103, ByteCompanionObject.MAX_VALUE, 118}, new byte[]{-123, -1, -52, -48, -33, 74, -97, 52}), 34, i10);
        textViewM5051P4.setGravity(17);
        linearLayout.addView(textViewM5051P4, new LinearLayout.LayoutParams(m5067l(38), -1));
        return linearLayout;
    }
}
